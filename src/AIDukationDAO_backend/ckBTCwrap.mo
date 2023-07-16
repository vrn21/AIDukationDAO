import smart "mo:base/Smart";

actor class MyToken is ERC20Upgradeable, ERC20BurnableUpgradeable, PausableUpgradeable, OwnableUpgradeable, ERC20FlashMintUpgradeable {
  public func init() : async {
    await ERC20Upgradeable.init("MyToken", "MTK");
    await ERC20BurnableUpgradeable.init();
    await PausableUpgradeable.init();
    await OwnableUpgradeable.init();
    await ERC20FlashMintUpgradeable.init();
  }

  public func pause() : async {
    await PausableUpgradeable._pause();
  }

  public func unpause() : async {
    await PausableUpgradeable._unpause();
  }

  public func mint(to : Principal, amount : Nat) : async {
    await ERC20Upgradeable._mint(to, amount);
  }

  public shared({caller}) func _beforeTokenTransfer(from : Principal, to : Principal, amount : Nat) : async {
    if (!_isPaused()) {
      await ERC20Upgradeable._beforeTokenTransfer(from, to, amount);
    }
  }
}