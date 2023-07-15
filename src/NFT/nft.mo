// NFT.mo

import Principal "mo:base/Principal";
import Nat8 "mo:base/Nat8";
import Array "mo:base/Array";
import Text "mo:base/Text";

type NFT = record {
    name : Text;
    owner : Principal;
    content : [Nat8];
};
