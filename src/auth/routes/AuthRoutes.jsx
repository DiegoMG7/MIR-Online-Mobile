import { Route, Routes } from 'react-router-dom';
import { LoginPage, RegisterPage } from '../pages';

export const AuthRoutes = () => {
  return (
    <Routes>
        <Route path="login" element={<LoginPage/>} />
        <Route path="register" element={<RegisterPage/>} />

        <Route path='/*' element={ <Navigate to="/"/>} /> {/*Cualquier ruta que no sea una de las de arriba manda a esta*/}
    </Routes>
  )
}
