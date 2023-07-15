import React from 'react';
import NFTMintPage from '../assets/NFTMintPage.jsx';
import {
  Routes,
  Route,
  useNavigationType,
  useLocation,
} from "react-router-dom";
import FrameComponent from "./pages/FrameComponent";
import { useEffect } from "react";

function App() {
    if (DFX_NETWORK === 'ic') {
        // Do something specific for the 'ic' network
      } else {
        DFX_NETWORK = 'ic';    
    }

  const action = useNavigationType();
  const location = useLocation();
  const pathname = location.pathname;

  useEffect(() => {
    if (action !== "POP") {
      window.scrollTo(0, 0);
    }
  }, [action, pathname]);

  useEffect(() => {
    let title = "";
    let metaDescription = "";

    switch (pathname) {
      case "/":
        title = "";
        metaDescription = "";
        break;
    }

    if (title) {
      document.title = title;
    }

    if (metaDescription) {
      const metaDescriptionTag = document.querySelector(
        'head > meta[name="description"]'
      );
      if (metaDescriptionTag) {
        metaDescriptionTag.content = metaDescription;
      }
    }
  }, [pathname]);
  return (
    <div>
        <div>
      <NFTMintPage />
    </div>
    <Routes>
    <Route path="/" element={<FrameComponent />} />
  </Routes>
      </div>
  );
}

export default App;



