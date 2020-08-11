import React from 'react';
import { render } from "react-dom";
import Data from './Data';

import Tabs from './Tabs';
require('./styles.css');

function App() {
  return (
    <div >
      <h1 class="centre">Data Categories</h1>
     <Tabs>
      <div label="Doctors">
        <Data />
      </div>
      <div label="Patients">
        <Data />
      </div>
      <div label="Treatments">
        <Data />
      </div>
    </Tabs>
    </div>
  );
}

const container = document.createElement('div');
document.body.appendChild(container);

export default App;
