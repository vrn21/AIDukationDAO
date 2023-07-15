// import Debug "mo:base/Debug";
// import Text "mo:base/Text";
// import Principal "mo:base/Principal";
// import Nat8 "mo:base/Nat8";


// actor class NFT (name: Text, owner: Principal, content : [Nat8]) {
    
//     let itemName = name;
//     let nftOwner = owner;
//     let imageBytes = content;

//     public query func getname() : async Text{
//         return itemName;
//     };
    
//     public query func getOwner() : async Principal{
//         return nftOwner;
//     };

//     public  query func getAsset() : async [Nat8]{
//         return imageBytes;
//     }

     
// };


// nft_minter.mo

import Principal "mo:base/Principal";
import Nat8 "mo:base/Nat8";
import Array "mo:base/Array";
import Text "mo:base/Text";
import NFT "NFT.mo";

actor class NFTMinter {
    stable var nfts : [NFT.NFT] = [];
    stable var itemName : Text = "";
    stable var nftOwner : Principal = Principal.fromActor(canister_id);
    stable var imageBytes : [Nat8] = [];

    public func mintNFT(name : Text, owner : Principal, content : [Nat8]) : async {
        var nft : NFT.NFT = { name = name, owner = owner, content = content };
        nfts := nfts # [nft];
    };
};
