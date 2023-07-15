import Text "mo:base/Text";
import Nat8 "mo:base/Nat8";
import Principal "mo:base/Principal";
import NFTActorClass "../NFT/NFT" ;
import Cycles "mo:base/ExperimentalCycles";

actor AIDukationDAO{
  public shared(msg) func mint(imgData: [Nat8],name: Text): async Principal{
    let owner:Principal  = msg.caller;


    Cycles.add(100_500_000_000);
    let newNFT = await NFTActorClass.NFT(name,owner,imgData); 
    
    let newCFTPrincipal = await newNFT.getCanisterId();

    return newCFTPrincipal;

  };
};