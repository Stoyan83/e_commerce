import React from "react";
import { createRoot } from "react-dom/client";
import App from "./App";

const initializeApp = () => {
  const rootElement = document.createElement("div");
  document.body.appendChild(rootElement);

  const root = createRoot(rootElement);
  root.render(<App />);
};

document.addEventListener("turbo:load", initializeApp);
