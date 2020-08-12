import React from 'react';
import { render } from "react-dom";
import $ from 'jquery';
import "./Data.css";

class DataCure extends React.Component {

  constructor(){
    super()
      this.state = {
        data: []
      }

  }
  componentDidMount() {
    $.ajax({
       url: "http://localhost:8080/cure/all",
       type: "GET",
       dataType: 'json',
       ContentType: 'application/json',
       success: function(data) {



         this.setState({data: data});
       }.bind(this),
       error: function(jqXHR) {
         console.log(jqXHR);
       }.bind(this)
    })
  }
  render() {


    return (

      <table>
            <thead>
                <tr>
                    <th>Id</th>
                    <th>Patient Name</th>
                    <th>Doctor Repsonsible</th>
                    <th>Drug Used</th>
                    <th>Cure Attempt</th>
                    <th>Result</th>
                </tr>
            </thead>
      <tbody>
      {this.state.data.map(function(item, key) {

               return (

                  <tr key = {key}>
                      <td>{item.id}</td>
                      <td>{item.patient}</td>
                      <td>{item.doctor}</td>
                      <td>{item.drug}</td>
                      <td>{item.cure}</td>
                      <td>{item.result}</td>
                  </tr>

                )
             })}</tbody>
       </table>

    )
  }
}

export default DataCure;