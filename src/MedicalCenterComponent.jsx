import React, { Component } from "react";
import ReactDOM from "react-dom";
import Card from "react-bootstrap/Card";

export default class MedicalCenterComponent extends Component {
  constructor(props) {
    super(props);
  }

  render() {
    return (
      <Card style={{ width: "18rem" }}>
        <Card.Body>
          <Card.Title>{this.props.name}</Card.Title>
          <Card.Subtitle className="mb-2 text-muted">
            {this.props.treatment}
          </Card.Subtitle>
          <Card.Text>{this.props.direction}</Card.Text>
          <Card.Link href="#">Details</Card.Link>
        </Card.Body>
      </Card>
    );
  }
}
