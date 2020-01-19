import axios from "axios";
import React, { Component } from "react";
import ReactDOM from "react-dom";
import FormControl from "react-bootstrap/FormControl";
import Button from "react-bootstrap/Button";
import Form from "react-bootstrap/Form";
import Container from "react-bootstrap/Container";
import Row from "react-bootstrap/Row";
import Col from "react-bootstrap/Col";
import ResultComponent from "./ResultComponent.jsx";

export default class SearchAppComponent extends Component {
  constructor(props) {
    super(props);
    this.state = {
      treatment: "",
      city: "",
      medicalCenters: []
    };
  }

  onTreatmentChange(event) {
    this.setState({ treatment: event.target.value });
  }

  onCityChange(event) {
    this.setState({ city: event.target.value });
  }

  onSearch() {
    axios
      .get("/search", {
        responseType: "json",
        params: {
          treatment: this.state.treatment,
          city: this.state.city
        },
        headers: {
          Authorization: `Token ${window.token}`
        }
      })
      .then(
        function(response) {
          this.setState({
            medicalCenters: response
          });
        }.bind(this)
      );
  }

  render() {
    return (
      <div>
        <Form>
          <Container>
            <Row>
              <Col>
                <FormControl
                  onChange={this.onTreatmentChange.bind(this)}
                  value={this.state.treatment}
                  placeholder="Treatment"
                ></FormControl>
              </Col>
              <Col>
                <FormControl
                  onChange={this.onCityChange.bind(this)}
                  value={this.state.city}
                  placeholder="City"
                ></FormControl>
              </Col>
              <Button onClick={this.onSearch.bind(this)} variant="primary">
                Search
              </Button>
            </Row>
          </Container>
        </Form>
        <ResultComponent medicalCenters={this.state.medicalCenters} />
      </div>
    );
  }
}
