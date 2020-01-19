import React, { Component } from "react";
import ReactDOM from "react-dom";
import MedicalCenterComponent from "./MedicalCenterComponent.jsx";

export default class ResultComponent extends Component {
  constructor(props) {
    super(props);
  }

  render() {
    return (
      <div>
        {this.props.medicalCenters.map(medicalCenter => (
          <MedicalCenterComponent
            name={medicalCenter.name}
            treatment={medicalCenter.treatment}
            direction={medicalCenter.direction}
          />
        ))}
      </div>
    );
  }
}
