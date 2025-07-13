#!/bin/bash

echo "============================================="
echo "   🚀 SAINTS ZAMA FHEVM One-Click Setup 🚀"
echo "============================================="

echo "[1/6] Updating packages..."
apt update && apt upgrade -y

echo "============================================="
echo "[2/6] Installing build tools & Node..."
apt install -y curl git build-essential

echo "============================================="
echo "[3/6] Installing Node.js v22.x & npm..."
curl -fsSL https://deb.nodesource.com/setup_22.x | bash -
apt install -y nodejs

echo "Node version: $(node -v)"
echo "NPM version: $(npm -v)"

echo "============================================="
echo "[4/6] Cloning Zama Hardhat Template..."
if [ -d "fhevm-hardhat-template" ]; then
  echo "Template already exists. Skipping clone..."
else
  git clone https://github.com/zama-ai/fhevm-hardhat-template
fi

cd fhevm-hardhat-template || exit 1

echo "============================================="
echo "[5/6] Installing project dependencies..."
npm install

echo "============================================="
echo "[6/6] Overwriting hardhat.config.ts..."
curl -o hardhat.config.ts https://raw.githubusercontent.com/0xmoei/zama-fhe/main/hardhat.config.ts

echo "============================================="
echo "✅ Setting Sepolia RPC..."
npx hardhat vars set SEPOLIA_RPC_URL

echo "============================================="
echo "✅ Setting PRIVATE KEY (auto-strip 0x)..."
read -p "Enter your PRIVATE KEY: " USER_KEY
PRIVATE_KEY=$(echo "$USER_KEY" | sed 's/^0x//')
echo "PRIVATE_KEY=$PRIVATE_KEY" >> .env
npx hardhat vars set PRIVATE_KEY "$PRIVATE_KEY"

echo "============================================="
echo "✅ Compiling..."
npx hardhat compile

echo "============================================="
echo "✅ Deploying..."
npx hardhat deploy --network sepolia

echo "============================================="
echo "🚀 ALL DONE — 🤫 follow @admirkhen ty🤝
echo "============================================="
