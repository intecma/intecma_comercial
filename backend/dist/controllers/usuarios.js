"use strict";
var __awaiter = (this && this.__awaiter) || function (thisArg, _arguments, P, generator) {
    function adopt(value) { return value instanceof P ? value : new P(function (resolve) { resolve(value); }); }
    return new (P || (P = Promise))(function (resolve, reject) {
        function fulfilled(value) { try { step(generator.next(value)); } catch (e) { reject(e); } }
        function rejected(value) { try { step(generator["throw"](value)); } catch (e) { reject(e); } }
        function step(result) { result.done ? resolve(result.value) : adopt(result.value).then(fulfilled, rejected); }
        step((generator = generator.apply(thisArg, _arguments || [])).next());
    });
};
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", { value: true });
exports.permisosUsuario = exports.loginUsuario = exports.postUser = void 0;
const bcrypt_1 = __importDefault(require("bcrypt"));
const usuario_1 = __importDefault(require("../models/usuario"));
const jsonwebtoken_1 = __importDefault(require("jsonwebtoken"));
const connection_1 = __importDefault(require("../db/connection"));
const sequelize_1 = require("sequelize");
const postUser = (req, res) => __awaiter(void 0, void 0, void 0, function* () {
    const { usu_nombre, usu_apellido, usu_correo, usu_contraseña } = req.body;
    //Validaciones de usuario
    const usuario = yield usuario_1.default.findOne({ where: { usu_nombre: usu_nombre, usu_apellido: usu_apellido } });
    if (usuario) {
        return res.status(400).json({
            msg: "Ya existe un usuario con estos nombres y apallidos"
        });
    }
    const hashContraseña = yield bcrypt_1.default.hash(usu_contraseña, 10);
    try {
        yield usuario_1.default.create({
            usu_nombre: usu_nombre,
            usu_apellido: usu_apellido,
            usu_correo: usu_correo,
            usu_contraseña: hashContraseña
        });
        res.json({
            message: `Usuario ${usu_nombre} ${usu_apellido} Creado exitosamente`,
        });
    }
    catch (error) {
        res.status(400).json({
            msg: `ups ocurrio un error`,
            error
        });
    }
});
exports.postUser = postUser;
const loginUsuario = (req, res) => __awaiter(void 0, void 0, void 0, function* () {
    const { username, password } = req.body;
    //Validamos si el usuario existe en la base de datos
    const user = yield usuario_1.default.findOne({ where: { username: username } });
    if (!user) {
        return res.status(400).json({
            msg: `No existe un usuario registrado con el correo ${username}`
        });
    }
    //Validamos Contraseña
    const contraseñaValida = yield bcrypt_1.default.compare(password, user.usu_contraseña);
    if (!contraseñaValida) {
        return res.status(400).json({
            msg: `Contraseña incorrecta`
        });
    }
    if (user.usu_status == 0) {
        return res.status(403).json({
            msg: `El usuario ${username} esta inactivo hable con el administrador`
        });
    }
    const rol = user.rol_id;
    //Generamos Token
    const token = jsonwebtoken_1.default.sign({
        "username": `${username}`,
        "rol": `${rol}`
    }, process.env.SECRET_KEY || 'intecma2024', {
    //expiresIn: '10000'
    });
    res.json({ token });
});
exports.loginUsuario = loginUsuario;
const permisosUsuario = (req, res) => __awaiter(void 0, void 0, void 0, function* () {
    const { pagina } = req.body;
    const headerToken = req.headers['authorization'];
    const query = `SELECT ar.rol_nombre, aru.ruta_nombre FROM acc_roles ar JOIN acc_permisos ap ` +
        `on ar.rol_id = ap.rol_id join acc_rutas aru on aru.ruta_id = ap.ruta_id where aru.ruta_nombre = '${pagina}';`;
    const permisos = yield connection_1.default.query(query, {
        type: sequelize_1.QueryTypes.SELECT
    });
    console.log(permisos);
    if (permisos.length !== 0) {
        res.json({
            permisos,
            permiso: true
        });
    }
    else {
        res.json({
            permiso: false
        });
    }
});
exports.permisosUsuario = permisosUsuario;
