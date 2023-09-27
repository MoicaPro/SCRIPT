import React from 'react';
import { Link } from 'react-router-dom';
import fondo from './Assets/FONDO.jpg';
import mini from './Assets/FONDOMINI.jpg';
import ico from './Assets/ICONO.jpg';
import e1 from './Assets/ENLACE1.jpg';
import e2 from './Assets/ENLACE2.jpg';
import './Login.css'

function Login(){
    return(
        <div className='fondo'>
             <img src={fondo} className='bigfondo'/>
           <div className='box'>
              <img src={mini} className='mini'/>
             <div className='Login'>
                <section>
                    <img src={ico} className='ico'/>
                    <h1>iLearnPro</h1>
                    <h2>Bienvenidos a</h2>
                    <div className='mb-2'>
                        <label htmlFor='email'>Correo Electronico</label>
                        <input type='email'placeholder=''className='control'/>
                    </div>
                    <div className='mb-2'>
                        <label htmlFor='password'>Contraseña</label>
                        <input type='password'placeholder=''className='control'/>
                    </div>
                    <div className="mb-2">
                    <input type="checkbox" className="custom-control" id="check"/>
                    <label htmlFor="check" className="custom-input-label">
                        Aceptas los terminos y condiciones
                    </label>
                </div>
                    <div className="L-grid">
                       <button>Continuar</button>
                    </div>
                    <p className='Forget'>
                        <a href='#'>¿Olvidaste tu Contraseña?</a>
                    </p>
                     <div>
                        <p>O usar</p>
                     </div>
                    <div className="Links">
                         <button href="#">
                            <a>Facebook</a>
                            <img src={e2} className='face'/>
                            </button>
                    </div>
                    <div className="Links">
                       <button href="#">
                        <a>Google</a>
                        <img src={e1} className='Google'/>
                        </button>
                     </div>
                     <p className='portal'>
                        ¿Eres nuevo?<Link to="./Register" className='regis'>Registrate</Link> </p>
                </section>
            </div>
           </div>
        </div>
    )
}
export default Login
