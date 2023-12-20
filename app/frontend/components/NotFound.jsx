import React from "react";
import { Link } from "react-router-dom";
import "./NotFound.css";

const NotFound = () => {
  return (
    <div className="not-found-body">
      <div className="not-found-container">
        <h1 className="not-found-title">404 - Not Found</h1>
        <p className="not-found-message">
          Sorry, the page you are looking for does not exist.
        </p>
        <p className="not-found-message">
          Return to{" "}
          <Link to="/" className="not-found-link">
            homepage
          </Link>
          .
        </p>
      </div>
    </div>
  );
};

export default NotFound;
