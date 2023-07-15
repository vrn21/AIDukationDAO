import Text "mo:base/Text";
import Nat8 "mo:base/Nat8";
import Principal "mo:base/Principal";
import Principal "mo:base/Principal";


actor AIDukationDAO{
  public shared(msg) func mint(imgData: [Nat8],name: Text): async Principal{
    let owner:Principal  = msg.caller;
  };
};