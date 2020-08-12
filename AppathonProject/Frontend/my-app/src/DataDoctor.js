import React from 'react';
import { render } from "react-dom";
import $ from 'jquery';
import "./Data.css";

class DataDoctor extends React.Component {

  constructor(){
    super()
      this.state = {
        data: []
      }

  }
  componentDidMount() {
    $.ajax({
       url: "http://localhost:8080/demo/all",
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
                    <th>First Name</th>
                    <th>Last Name</th>
                    <th>Job</th>
                    <th>Email</th>
                    <th>Phone Number</th>
                </tr>
            </thead>
      <tbody>
      {this.state.data.map(function(item, key) {

               return (

                  <tr key = {key}>
                      <td>{item.id}</td>
                      <td>{item.first_name}</td>
                      <td>{item.last_name}</td>
                      <td>{item.job}</td>
                      <td>{item.email}</td>
                      <td>{item.phone_number}</td>
                  </tr>

                )
             })}</tbody>
       </table>

    )
  }
}

export default DataDoctor;