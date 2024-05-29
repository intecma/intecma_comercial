import {Router} from 'express';
import { loginUsuario, permisosUsuario, postUser } from '../controllers/usuarios';

const router = Router();

router.post('/nuevo', postUser);
router.post('/login', loginUsuario);
router.post('/permisos', permisosUsuario);

export default router;