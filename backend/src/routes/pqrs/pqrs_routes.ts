import {Router} from 'express';
import { envioCorreoPlan, getPlanPqrs, getPqrsPlanes, postPlanPqrs, updatePlanPqrs } from '../../controllers/pqrs/pqrs_plan_accion';
import { getPqrsProducto, postPqrsProducto, updatePqrsProducto } from '../../controllers/pqrs/pqrs_producto';
import { getInfoProducto } from '../../controllers/formsSelect';


const router = Router();

//Pqrs productos
router.post('/pqrs_producto/', postPqrsProducto);
router.get('/pqrs_productos/:id', getInfoProducto);
router.get('/pqrs_producto/:id', getPqrsProducto);
router.put('/pqrs_producto/:id', updatePqrsProducto);

//Pqrs Planes de accion
router.get('/planes_accion/:id', getPqrsPlanes);
router.post('/plan_accion/', postPlanPqrs);
router.get('/plan_accion/:id', getPlanPqrs);
router.put('/plan_accion/:id', updatePlanPqrs);



router.post('/plan_accion_correo', async function(req, res){
    const {body} = req;
    await envioCorreoPlan.sendMail({
        from: `Planes de Accion Comercial ${process.env.EMAIL}`,
        to: `${body.carg_correo}`,
        subject: `Plan de accion PQRS ${body.pqrs_id}`,
        html: `${body.saludos}, Estimad@ ${body.cargo}.<br><br>

        Este es un correo automático de <b>Intecma S.A.S.</b> para informarle que se le ha asignado un plan de <br> 

        acción para atender la <b>PQRS ${body.pqrs_id}</b> <br><br>

        A continuación, se proporcionan los detalles del plan de acción:<br><br>

        <b>Fecha de creacion:</b> ${body.ppa_fecha_inicio}<br>
        <b>Fecha de cumplimiento:</b> ${body.ppa_fecha_cumplimiento}<br>
        <b>Descripción del plan acción:</b> ${body.ppa_descripcion}<br>
        <b>Observaciones del plan acción:</b> ${body.ppa_observaciones}<br><br>
        
        Se solicita amablemente que se realice este plan antes de la fecha de cumplimiento establecida: <b>${body.ppa_fecha_cumplimiento}.</b><br><br>

        Agradecemos su atención y compromiso con nuestro servicio.<br><br>

        Atentamente,<br><br>

        Planes de Acción PQRS<br>
        Intecma S.A.S`
    })
    res.status(200).json({ok: true, message: "enviado"})
});

router.post('/pqrs_creada', async function(req, res){
    const {body} = req;
    await envioCorreoPlan.sendMail({
        from: `Creacion Nuevas PQRS ${process.env.EMAIL}`,
        to: `${process.env.DIR_COMERCIAL}, ${process.env.ADMINISTRACION}`,
        subject: `Creacion de la PQRS ${body.pqrs_id}`,
        html: `${body.saludos}.<br><br>

        Este es un correo automático de <b>Intecma S.A.S.</b> para informarle que se ha creado la <b>PQRS ${body.pqrs_id}</b> <br><br>

        A continuación, se proporcionan los detalles de la <b>PQRS ${body.pqrs_id}</b>:<br><br>

        <b>Fecha Recepción:</b> ${body.pqrs_fecha_recepcion}<br>
        <b>Cliente de la PQRS:</b> ${body.cli_nombre}<br>
        <b>Zona del Cliente:</b> ${body.cli_zona}<br>
        <b>Asesor del Cliente:</b> ${body.cli_asesor}<br>
        <b>Documento de la PQRS:</b> ${body.pqrs_doc}<br>
        <b>Descripción:</b> ${body.pqrs_descripcion}<br><br>
        
        Para mas información de la <b>PQRS ${body.pqrs_id}</b> ingrese al siguiente link <a href="${process.env.URL_PQRS}">PQRS Intecma</a><br><br>

        Agradecemos su atención y compromiso con nuestro servicio.<br><br>

        Atentamente,<br><br>

        Planes de Acción PQRS<br>
        Intecma S.A.S`
    })
    res.status(200).json({ok: true, message: "enviado"})
});

export default router;