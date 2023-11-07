import { Route, Routes } from 'react-router-dom';

import { AuthRoutes } from '../auth/routes/AuthRoutes';
import { MirRoutes } from '../mir/routes/MirRoutes';

export const AppRouter = () => {
  return (
    <Routes>

        {/* login y registro */}
        <Route path="/auth/*" element={ <AuthRoutes/> } />

        {/* Mironline */}
        <Route path="/*" element={ <MirRoutes/> } />

    </Routes>
  )
}
