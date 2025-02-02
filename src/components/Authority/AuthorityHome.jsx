import React from "react";
import { Button } from "../ui/button";
import { useNavigate } from "react-router-dom";

const AuthorityHome = () => {
  const navigate = useNavigate();
  return (
    <>
      <img
        src="/images/Bg.jpg"
        className="w-screen h-screen blur-lg opacity-60 fixed z-0"
        alt=""
      ></img>
      <div className="text-gray-900 z-10 relative border-4 border-solid border-black">
        <div className="">
          <div className="flex justify-center items-center px-10 py-10 border-4 border-solid border-black">
            <Button className="w-52" onClick={() => navigate("/applications")}>
              New Applications
            </Button>
          </div>
          <div className="flex justify-center items-center px-10 py-10 border-4 border-solid border-black">
            <Button
              className="w-52"
              onClick={() => navigate("/crop-verification")}
            >
              Crop Validation
            </Button>
          </div>
          <div className="flex justify-center items-center px-10 py-10 border-4 border-solid border-black">
            <Button
              className="w-52"
              onClick={() => navigate("/midterm-verification")}
            >
              Midterm Verification
            </Button>
          </div>
          <div className="flex justify-center items-center px-10 py-10 border-4 border-solid border-black">
            <Button className="w-52" onClick={() => navigate("/certification")}>
              Final Certification
            </Button>
          </div>
        </div>
      </div>
    </>
  );
};

export default AuthorityHome;
