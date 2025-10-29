# 🌀 WheelFi - Decentralized Spin & Win Game

**WheelFi** is a decentralized "Spin & Win" game built on the Ethereum blockchain.  
Players can spin the wheel by sending ETH to the contract — if luck favors them, they instantly win a reward!  
The game operates without intermediaries, using smart contract logic to ensure transparency and fairness.

---

## 🎯 Project Description

**WheelFi** is designed as a fun, on-chain luck-based game where users can place small bets and potentially win multiples of their wager.  
This project demonstrates the core principles of decentralized gaming using Solidity — ownership, randomness (for demonstration), events, and ETH-based rewards.

> ⚠️ *Note: This is a beginner-level version that uses pseudo-randomness.  
> For production use, integrate Chainlink VRF for secure randomness.*

---

## 💡 What It Does

- Players send ETH to **spin the wheel** using the `spin()` function.  
- The contract generates a **pseudo-random number** to determine the result.  
- If the player wins, they receive a **reward** (2x their bet by default).  
- All outcomes are logged on-chain via events, ensuring **transparency**.

---

## ✨ Features

✅ **Decentralized Gameplay** – 100% on-chain logic, no centralized servers.  
💰 **Spin & Win** – Simple, fair, and verifiable results.  
🔐 **Owner Controls** – Owner can set minimum bets, payout multipliers, and withdraw funds.  
📜 **Event Logging** – Every spin emits a `SpinResult` event visible on-chain.  
⚙️ **Upgradeable Parameters** – Easily adjust bet limits or multiplier rewards.  
🧩 **Educational Code** – Beginner-friendly Solidity structure with comments and clean organization.

---

## 🌐 Deployed Smart Contract

**Network:** Sepolia Testnet  
**Transaction / Contract Deployment Link:**  
🔗 [View on Celoscan](https://sepolia.celoscan.io/tx/0xa075f16268e2d4fae809019b0dfcf5b97f64f86d852d9ab4440645e633a79058)

---

## 🚀 How to Use

1. **Connect Wallet** to Sepolia testnet in MetaMask.  
2. Get some **Sepolia ETH** from a faucet.  
3. Visit [Remix IDE](https://remix.ethereum.org/) and load `WheelFi.sol`.  
4. Compile & Deploy using the **Injected Provider (MetaMask)**.  
5. Fund the contract using `fundContract()` (only owner).  
6. Players can then call `spin()` with ≥ 0.01 ETH to try their luck.  
7. Check results and payouts directly on-chain or via events.

---

## 🧱 Tech Stack

- **Solidity** – Smart Contract Logic  
- **Ethereum / Sepolia** – Blockchain Network  
- **Remix IDE + MetaMask** – Deployment & Interaction  
- **Celoscan / Etherscan** – Transaction & Event Verification

---

## ⚠️ Disclaimer

This project is intended **for educational and demonstration purposes only**.  
The randomness used here is **not secure** and can be manipulated.  
For real-world decentralized gaming, use **Chainlink VRF** or similar verifiable randomness solutions.

---

## 📜 License

This project is licensed under the **MIT License** – feel free to learn, modify, and build upon it!

---

## 💬 Author

Developed by PRANTIK DAS
💡 Inspired by decentralized gaming and blockchain transparency.

<img width="1920" height="1080" alt="image" src="https://github.com/user-attachments/assets/25d5b5e0-563d-4cb6-be87-a969e4bac2e2" />

