import {BrowserRouter, Routes, Route} from 'react-router-dom'
import Login from './Login.js'
import Register from './Register.js'
import React from 'react';
import 'bootstrap/dist/css/bootstrap.min.css'
function App (){
   return(
     <BrowserRouter>
      <Routes>
        <Route>
        <Route path='/' element={<Login/>}></Route>
        <Route path='/Register' element={<Register/>}></Route>
        </Route>
      </Routes>
     </BrowserRouter> 
   )
}
export default App

