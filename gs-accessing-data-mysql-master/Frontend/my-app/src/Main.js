import React from 'react';
import { render } from "react-dom";

import App from './App';
require('./styles.css');

function Main() {
 return (
    <div class="main">
             <div class="header">
               <h1>eHospital</h1>
               <p>A new scientific app that will help analyze COVID-19 data better than ever before.</p>
             </div>

             <div class="row">
               <div class="leftcolumn">
                 <div class="card">
                   <App />
                 </div>
               </div>
               <div class="rightcolumn">
                 <div class="card">
                 <div class="centre">
                   <h2>About The WebApp</h2></div>
                  <img class="fakeimg" styles="height:100px;" src="/images.jfif"  />
                   <p>The eHospital WebApp serves as an option to help hospitals report coronavirus data. <br/> <br/>
                    It currently includes data about the doctors patients and their treatment. </p>
                 </div>
                 <div class="card">
                    <div class="centre">
                   <h3>Today's Data Report</h3> </div>
                   <a href="Screenshot_793.png" target="_blank">
                   <img class="fakeimg" styles="height:100px;" src="/Screenshot_793.png" />
                   </a>
                   <a href="Screenshot_794.png" target="_blank">
                   <img class="fakeimg" styles="height:100px;" src="/Screenshot_794.png"  />
                   </a>
                   <a href="Screenshot_795.png" target="_blank">
                   <img class="fakeimg" styles="height:100px;" src="/Screenshot_795.png"  />
                   </a>
                 </div>

               </div>
             </div>

             <div class="footer">
               <img class="footer_img" styles="height:100px;" src="/hdjune.png"  />
             </div>
</div>
         );
}

const container = document.createElement('div');
document.body.appendChild(container);

export default Main;