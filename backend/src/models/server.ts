import express, {Application, Request, Response} from 'express';
import cors from 'cors';
import routesUsuarios from '../routes/acceso/usuario'
import routesAcceso from '../routes/acceso/acc_routes'
import routesPqrs from '../routes/pqrs/pqrs';
import routesPqrsRoutes from '../routes/pqrs/pqrs_routes';
import routesCliente from '../routes/cliente/cliente';
import routesClienteRoutes from '../routes/cliente/cliente_routes';
import routesForms from '../routes/formsSelect';
import routesCargo from '../routes/cargos/cargo';
import routesProducto from '../routes/producto';
import routesCredEstudio from '../routes/cred_estudio/cred_estudio';
import routesCredRoutes from '../routes/cred_estudio/cred_routes';
import routesAreaEmpresa from '../routes/cargos/area_empresa';
import db from '../db/connection'

class Server{
    private app: Application;
    private port: string;

    constructor(){
        this.app = express();
        this.port = process.env.PORT||'3001';
        
        this.listen();
        this.midlewares();
        this.routes();
        this.dbConnect();
    }

    listen(){
        this.app.listen(this.port, ()=> {
            console.log(`Aplicacion corriendo en el puerto ${this.port}`)
        })
    }

    routes(){
        this.app.get('/', (req: Request, res: Response)=>{
            res.json({
                msg:'API Working'
            })
        })
        this.app.use('/api/usuarios', routesUsuarios);
        this.app.use('/api/accesos', routesAcceso);
        this.app.use('/api/pqrs', routesPqrs);
        this.app.use('/api/pqrs_apis', routesPqrsRoutes);
        this.app.use('/api/cliente', routesCliente);
        this.app.use('/api/cliente_apis', routesClienteRoutes);
        this.app.use('/api/cargo', routesCargo);
        this.app.use('/api/producto', routesProducto);
        this.app.use('/api/cred_estudio', routesCredEstudio);
        this.app.use('/api/cred_apis', routesCredRoutes);
        this.app.use('/api/area_empresa', routesAreaEmpresa);
        this.app.use('/api/seleccione', routesForms);
    }

    midlewares(){

        //parseamos el body
        this.app.use(express.json());

        this.app.use(express.static('./src/public'));

        //cors
        this.app.use(cors());
        
    }

    async dbConnect(){

        try {
            await db.authenticate();
            console.log('base de datos conectada')
        } catch (error) {
            console.log(error);
            console.log('error al conectarse a la base de datos')
        }
       
    }
}

export default Server;