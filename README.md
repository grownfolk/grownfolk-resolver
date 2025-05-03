## 🔍 Contract Overview

- **Contract Name:** `GrownfolkResolver`  
- **Network:** Polygon PoS  
- **Address:** [`0x68dec9ce94a9a462c092f3f4fb56977698bbf0ab`](https://polygonscan.com/address/0x68dec9ce94a9a462c092f3f4fb56977698bbf0ab)  
- **Verification Status:** Verified on PolygonScan  
- **Label:** `Other: Name Registry`  
- **Name Tag:** `GrownfolkResolver`  
- **Associated Link:** [`https://grownfolk.wallet`](https://grownfolk.wallet)

---

## ⚙️ Core Functions

- `registerName(string name, address wallet)`  
  Allows a user to register a unique `.grownfolk` name and associate it with a specific wallet address.

- `getName(address wallet) → string`  
  Retrieves the `.grownfolk` name associated with a given wallet address.

- `resolve(string name) → address`  
  Returns the wallet address linked to a specific `.grownfolk` name.

- `transferName(string name, address newOwner)`  
  Transfers ownership of a `.grownfolk` name to another wallet address.

---

## 🔐 Security Considerations

- **Access Control:** Only the current owner of a `.grownfolk` name can transfer it.  
- **Uniqueness Enforcement:** Each name can only be registered once.  
- **Input Validation:** Validates all entries before writing on-chain.

---

## 🧩 Integration Points

- **Frontend Application:** Tied to `https://grownfolk.wallet` for direct user access  
- **WalletConnect Support:** Built to accept any WalletConnect-compatible wallet for name registration and identity resolution

---

## ✅ Next Steps

1. **Frontend Register & Lookup Interface**  
2. **Analytics Dashboard (optional)**  
3. **Security Audit (recommended for long-term scale)**
