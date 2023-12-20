import React from "react";
import { BrowserRouter as Router, Routes, Route } from "react-router-dom";
import Home from "../../components/Home";
import NotFound from "../../components/NotFound";


export default (
  <Router>
    <Routes>
      <Route path="/" element={<Home />} />
      <Route path="*" element={<NotFound />} />
    </Routes>
  </Router>
);
