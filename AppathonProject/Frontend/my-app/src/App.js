import React from 'react';
import { render } from "react-dom";
import DataDoctor from './DataDoctor';
import DataPatient from './DataPatient';
import DataCure from './DataCure';

import Tabs from './Tabs';
require('./styles.css');

function App() {
  return (
    <div >
      <h1 class="centre">Data Categories</h1>
     <Tabs>
      <div label="Doctors">
        <DataDoctor />
      </div>
      <div label="COVID Patients">
        <DataPatient />
      </div>
      <div label="Treatment Progress">
        <DataCure />
      </div>
    </Tabs>
    </div>
  );
}



const container = document.createElement('div');
document.body.appendChild(container);

export default App;
