const ConnectWallet = () => {
  return (
    <a
      style={{
        cursor: "pointer",
        border: "none",
        padding: "0",
        backgroundColor: "transparent",
        position: "absolute",
        top: "17px",
        left: "1204px",
        fontSize: "24px",
        letterSpacing: "-0.07em",
        fontWeight: "600",
        fontFamily: "Poppins",
        color: "#fff",
        textAlign: "left",
        display: "inline-block",
      }
    }
      autoFocus

      href = './wallet.js'
    >
      Connect Wallet
    </a>
  );
};

export default ConnectWallet;
