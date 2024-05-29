import { Request, Response } from 'express';
import bcrypt from 'bcrypt'
import Usuarios from '../models/usuario';
import jwt from 'jsonwebtoken'
import sequelize from '../db/connection';
import { QueryTypes } from 'sequelize';

export const postUser = async(req: Request, res: Response) => {

    const {usu_nombre, usu_apellido, usu_correo, usu_contraseña} = req.body;
    
    //Validaciones de usuario
    const usuario = await Usuarios.findOne({where:{usu_nombre: usu_nombre, usu_apellido: usu_apellido}});

    if(usuario){
        return res.status(400).json({
            msg:"Ya existe un usuario con estos nombres y apallidos"
        })
    }

    const hashContraseña=await bcrypt.hash(usu_contraseña, 10);

    try {
        await Usuarios.create({
            usu_nombre: usu_nombre,
            usu_apellido: usu_apellido,
            usu_correo: usu_correo,
            usu_contraseña: hashContraseña
        })
        res.json({
            message: `Usuario ${usu_nombre} ${usu_apellido} Creado exitosamente`,
        })     
    } catch (error) {
        res.status(400).json({
            msg: `ups ocurrio un error`,
            error
        })
    }

    
}

export const loginUsuario= async (req: Request, res: Response)=>{

    const {username, password} = req.body;
    
    //Validamos si el usuario existe en la base de datos
    const user = await Usuarios.findOne({where: {username: username}});

    if(!user){
        return res.status(400).json({
            msg: `No existe un usuario registrado con el correo ${username}`
        })
    }

    //Validamos Contraseña
    const contraseñaValida = await bcrypt.compare(password, user.usu_contraseña)
    
    if(!contraseñaValida){
        return res.status(400).json({
            msg: `Contraseña incorrecta`
        })
    }

    if(user.usu_status == 0){
        return res.status(403).json({
            msg: `El usuario ${username} esta inactivo hable con el administrador`
        })
    }
    
    const rol = user.rol_id
    //Generamos Token
    const token=jwt.sign({
        "username": `${username}`,
        "rol": `${rol}`
    },process.env.SECRET_KEY || 'intecma2024', {
        //expiresIn: '10000'
    });

    res.json({token});
}

export const permisosUsuario = async (req: Request, res: Response)=>{
    const {pagina} = req.body
    const headerToken = req.headers['authorization'];
    
    const query = `SELECT ar.rol_nombre, aru.ruta_nombre FROM acc_roles ar JOIN acc_permisos ap `+
    `on ar.rol_id = ap.rol_id join acc_rutas aru on aru.ruta_id = ap.ruta_id where aru.ruta_nombre = '${pagina}';`

    const permisos = await sequelize.query(query, {
        type: QueryTypes.SELECT
    });

    console.log(permisos)

    if(permisos.length !== 0){
        res.json({
            permisos,
            permiso:  true
        });
    }else{
        res.json({
            permiso: false
        })
    }
    
}