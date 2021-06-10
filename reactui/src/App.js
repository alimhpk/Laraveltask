import logo from './logo.svg';
import './App.css';


import React from "react";

export default class App extends React.Component {
    constructor(props) {
        super(props);
        this.handleSubmit = this.handleSubmit.bind(this);
      }

      state = {
        title: null,
        image: null,
        description: null
      };
     

      handleSubmit(e) {
        e.preventDefault();
        
        const formData = {};
        for (const field in this.refs) {
          formData[field] = this.refs[field].value;
        }
        console.log(formData.genre);



        const fetchAndLog = async () => {
            const response = await fetch('http://localhost:8000/api/genre='+formData.genre);
            const json = await response.json();
            // just log ‘json’
            this.setState({ title: json.title, image:json.image, description:json.description});
        }
        
        fetchAndLog();


    //     fetch('http://localhost:8000/api/genre=comedy', {
    //     method: 'GET',
    //     // We convert the React state to JSON and send it as the POST body
    //   }).then(function(response) {
    //     const json = await response.json();
    //     console.log(json)
    //     //return response.json();
    //   });


      }

  render() {

    return (
        <div>
        <form onSubmit={this.handleSubmit}>
          
          Select Movie Genre
          
          <select ref="genre" className="genre" name="genre">
              <option>Comedy</option>
              <option>Sci-fi</option>
              <option>Action</option>
          </select>
          
          <input type="submit" value="Submit"/>
        </form>
        <div id="mov">
        <div> Movie : {this.state.title}</div>
        <img style={{width: 200, height: 200 }} src={this.state.image} />
        <div>Synopsis :  {this.state.description}</div>
        </div>
      </div>
      
    );
  }
}
