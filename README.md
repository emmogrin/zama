# 🚀 ZAMA FHE Hardhat One-Click Setup

This repository provides a **one-click automation script** for deploying Zama’s **FHECounter contract** to the Sepolia testnet, with added auto-fixes for proot/Termux or minimal VPS setups.

---

## 📌 What’s inside?

- ✅ Installs all system dependencies (Node.js, Yarn, Hardhat)
- ✅ Clones Zama’s official FHE Hardhat template
- ✅ Installs the required plugins and mock utils
- ✅ Auto-creates `.env` for your RPC & Private Key (with `0x` stripped!)
- ✅ Runs `compile` and `deploy` in one shot
- ✅ Deploys your **FHECounter** contract and shows your contract address

---

## 🗂️ Repo Structure

- `zama-lv3.sh` — The main bash script to run **everything** automatically.

---

## ⚡ Quickstart

remove 0x from your private key before pasting.

**1️⃣ Clone this repo**
```bash
git clone https://github.com/emmogrin/zama.git
cd zama
chmod +x zama-lv3.sh
./zama-lv3.sh
```

✅ Reference & Credit

This version is inspired by Moei’s guide 
this just wraps it for smoother VPS or Termux automation.


---

💡 Notes

If you run this on Termux, it’s designed to avoid sudo since Termux doesn’t support it by default.

Always use a testnet wallet, never your mainnet keys!

Contract deploys on Sepolia, so make sure you have test ETH.




---

✨ Happy experimenting!

Made with ❤️ by @admirkhen — with respect to Moei

