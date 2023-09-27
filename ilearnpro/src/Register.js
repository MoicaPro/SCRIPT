import React from 'react';
import { Link } from 'react-router-dom';
import fondo from './Assets/FONDO.jpg';
import mini from './Assets/FONDOMINI.jpg';
import ico from './Assets/ICONO.jpg';
import e1 from './Assets/ENLACE1.jpg';
import e2 from './Assets/ENLACE2.jpg';
import './Register.css'

function Register(){
    return(
        <div className='fondo'>
              <img src={fondo} className='bigfondo'/>
            <div className='box'>
                <img src={mini} className='mini'/> 
                <div className='Register'>
                    <section>
                        <img src={ico} className='ico'/>
                        <h1>iLearnPro</h1>
                        <h2>Bienvenidos a</h2>
                        <div className='mb-2'>
                           <label htmlFor='id'>Nombre de usuario</label>
                           <input type='id'placeholder=''className='control'/>
                        </div>
                        <div className='mb-2'>
                           <label htmlFor='Email'>Correo Electronico</label>
                           <input type='Email'placeholder=''className='control'/>
                        </div>
                        <div className='mb-2'>
                           <label htmlFor='password'>Contraseña</label>
                           <input type='password'placeholder=''className='control'/>
                        </div>
                        <div className="R-grid">
                       <button>Continuar</button>
                    </div>
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
                        ¿Tienes cuenta?<Link to="../" className='regis'>Inicia</Link>
                     </p>
                    </section>
                </div>
            </div>
        </div>
    )
}
export default Register;