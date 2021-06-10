import React from "react";

export default class movie extends React.Component {
  state = {
    loading: true,
    person: null
  };

  async componentDidMount() {
    const url = "http://localhost:8000/api/genre=comedy";
    const response = await fetch(url);
    const data = await response.json();
    this.setState({ person: data, loading: false });
  }

  render() {
    if (this.state.loading) {
      return <div>loading...</div>;
    }

    if (!this.state.person) {
      return <div>didn't get a person</div>;
    }

    return (
      <div>
        <div>  {this.state.person.title}</div>
        <img src={this.state.person.image} />
        <div>  {this.state.person.description}</div>
      </div>
    );
  }
}