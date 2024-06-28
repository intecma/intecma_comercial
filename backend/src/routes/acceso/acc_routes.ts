import {Router} from 'express';
import { getRol, getRoles, postRol, updateRol } from '../../controllers/acceso/roles';
import { deletePermiso, getPermiso, getPermisosByRol, postPermisos, updatePermiso } from '../../controllers/acceso/permisos';
import { getComponentes, getModulo, getModulos, postModulo, updateModulo } from '../../controllers/acceso/modulo';
import { deleteRuta, getRuta, getRutasByComponente, postRuta, updateRuta } from '../../controllers/acceso/ruta';
import { getUserInfo } from '../../controllers/acceso/usuarios';


const router = Router();

//Usuarios
router.get('/usuario/:id', getUserInfo);

//Roles
router.get('/roles', getRoles);
router.get('/roles/:id', getRol);
router.post('/roles', postRol);
router.put('/roles/:id', updateRol);

//Permisos
router.get('/permisos/:id', getPermisosByRol);
router.get('/permiso/:id', getPermiso);
router.post('/permisos', postPermisos);
router.put('/permisos/:id', updatePermiso);
router.delete('/permisos/:id', deletePermiso);

//Modulos
router.get('/modulos', getModulos);
router.get('/modulos/:id', getModulo);
router.post('/modulos', postModulo);
router.put('/modulos/:id', updateModulo);


//Componentes
router.get('/componentes/:id', getComponentes);

//Rutas
router.get('/rutas/:id', getRutasByComponente);
router.get('/ruta/:id', getRuta);
router.post('/rutas', postRuta);
router.put('/rutas/:id', updateRuta);
router.delete('/rutas/:id', deleteRuta);

export default router;