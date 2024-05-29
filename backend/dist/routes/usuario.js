"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
const express_1 = require("express");
const usuarios_1 = require("../controllers/usuarios");
const router = (0, express_1.Router)();
router.post('/nuevo', usuarios_1.postUser);
router.post('/login', usuarios_1.loginUsuario);
router.post('/permisos', usuarios_1.permisosUsuario);
exports.default = router;
