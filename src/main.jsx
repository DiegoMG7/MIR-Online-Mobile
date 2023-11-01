import React from 'react';
import ReactDOM from 'react-dom/client';

import { MirApp } from './MirApp';

import './styles.css';

ReactDOM.createRoot(document.getElementById('root')).render(
    <React.StrictMode>
        <MirApp title="Hola soy yego" subTitle={123}/>
    </React.StrictMode>
)