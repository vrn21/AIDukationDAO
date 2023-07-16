import React from "react";
import ReactDOM from "react-dom";
import { AIDukationDAO_backend } from "../../declarations/AIDukationDAO_backend";
import App from "./app";

const handleSubmit = async (e) => {
  e.preventDefault();
  const button = e.target.querySelector("button");

  const name = document.getElementById("name").value.toString();

  button.setAttribute("disabled", true);

  // Interact with the backend canister, calling the greet method
  const greeting = await AIDukationDAO_backend.greet(name);

  button.removeAttribute("disabled");

  document.getElementById("greeting").innerText = greeting;

  init();
};

const init = async () => {
  ReactDOM.render(<App />, document.getElementById("root"));
};

document.querySelector("form").addEventListener("submit", handleSubmit);
