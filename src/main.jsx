import React from 'react';
import ReactDOM from 'react-dom/client';
import { MirApp } from './MirApp';
import './styles.css';
import { BrowserRouter } from 'react-router-dom';

ReactDOM.createRoot(document.getElementById('root')).render(
    <React.StrictMode>
        <BrowserRouter>
            <MirApp/>
        </BrowserRouter>
    </React.StrictMode>

    //<MirApp title = 'hola soy goku'/>
)