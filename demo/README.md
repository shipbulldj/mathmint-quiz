# 🎮 MathMint Quiz Demo

## 🌟 What Is This?

A fully functional, single-page Web3 quiz application that lets you:
- Play multiplication quizzes WITHOUT connecting a wallet
- Submit scores to blockchain when ready
- Earn NFT badges at 50+ points
- Use MUSD boost for 1.5x points multiplier
- View global leaderboard

**Key Feature:** Wallet connection is OPTIONAL - play first, connect later!

## 📍 Files

- **`demo.html`** - Full-featured demo (READY FOR IPFS DEPLOYMENT)
- **`demo-simple.html`** - Simplified version with cleaner panels
- **`demo-tabs.html`** - **NEW!** Modern tabbed interface (Recommended)
- **`index.html`** - Legacy file (deprecated, use demo.html)
- **`index-fixed.html`** - Fixed version of index.html

### 🆕 Which Demo Should I Use?

| Demo | Best For | Key Features |
|------|----------|--------------|
| **demo-tabs.html** | **Most users** | Tabbed UI, auto-fetch data, best organization |
| demo.html | Full features | Everything in one scrolling page |
| demo-simple.html | Simplicity | Minimal, straightforward interface |

**NEW:** Check out [TABS_UI_GUIDE.md](TABS_UI_GUIDE.md) for the complete guide to the tabbed interface!

## 🚀 Quick Start

### Option 1: Open Locally (Fastest)

```bash
# Simply open the file in your browser
open /app/demo/demo.html

# Or on Windows:
start /app/demo/demo.html

# Or drag the file into your browser
```

### Option 2: Deploy to IPFS (Recommended for Sharing)

See: [WEB3_STORAGE_DEPLOYMENT.md](../WEB3_STORAGE_DEPLOYMENT.md)

```bash
# Quick deploy
export WEB3STORAGE_TOKEN="your-token"
yarn deploy:ipfs

# Get shareable URL like:
# https://[CID].ipfs.w3s.link
```

### Option 3: Local Server (Optional)

```bash
# Python
cd /app/demo
python3 -m http.server 8080
# Visit: http://localhost:8080/demo.html

# Node
cd /app/demo
npx serve .
# Visit the URL shown
```

## ✨ Features

### 🎮 Standalone Quiz (No Wallet Required)
- 5 random times-table questions (1-10 multiplication)
- 15-second timer per question
- +10 points for correct, -1 for wrong
- Real-time feedback with visual effects
- Progress tracking and final score display

### 🔐 Optional Wallet Integration
- Play without wallet → Connect when ready
- Clear prompts for blockchain actions
- Automatic network switching to Mezo testnet
- Balance and address display

### ⚡ MUSD Boost Feature
- Hold 1+ MUSD → Enable 1.5x points multiplier
- 10 points → 15 points per correct answer
- On-chain verification for security
- Optional toggle control

### 💾 Blockchain Features
- **Submit Score** - Save points on Mezo L2
- **Check Score** - View total accumulated points
- **Check Eligibility** - See if you can mint NFT
- **Mint NFT** - Claim achievement badge at 50+ points
- **Leaderboard** - View top 5 players (works without wallet!)

### 🎨 UI/UX
- Retro arcade theme with gradient backgrounds
- Glass-morphism card design
- Mobile-responsive layout
- Smooth animations and transitions
- Clear status messages and error handling

## 📖 Documentation

### For Users
- **[USER_GUIDE.md](../USER_GUIDE.md)** - Complete player's guide
  - How to play without wallet
  - How to connect MetaMask
  - How to use MUSD boost
  - How to mint NFTs
  - FAQ and troubleshooting

### For Deployment
- **[WEB3_STORAGE_DEPLOYMENT.md](../WEB3_STORAGE_DEPLOYMENT.md)** - IPFS deployment guide
- **[DEPLOYMENT_CHECKLIST.md](../DEPLOYMENT_CHECKLIST.md)** - Step-by-step checklist

### For Developers
- **[README.md](../README.md)** - Main project documentation
- **[QUICKSTART.md](../QUICKSTART.md)** - Development setup
- **[DEPLOYMENT_GUIDE.md](../DEPLOYMENT_GUIDE.md)** - Contract deployment

## 🔧 Setup Requirements

### For Playing Without Wallet
- Modern web browser (Chrome, Firefox, Safari, Edge)
- Internet connection
- That's it! Just open and play.

### For Blockchain Features
1. **MetaMask Browser Extension**
   - Download: https://metamask.io
   - Install and create wallet

2. **Mezo Testnet Configuration**
   - Network Name: `Mezo Testnet`
   - RPC URL: `https://rpc.test.mezo.org`
   - Chain ID: `31612` or `0x7b7b`
   - Currency: `tBTC`
   - Explorer: `https://explorer.test.mezo.org`

3. **Test Bitcoin (tBTC)**
   - Faucet: https://faucet.mezo.org
   - Free testnet tokens
   - Needed for gas fees

4. **MUSD Tokens (Optional, for Boost)**
   - Ask in Mezo Discord
   - Only need 1+ MUSD for 1.5x multiplier

## 📝 Testing Guide

### Test 1: Quiz Without Wallet ✅
1. Open `demo.html` in browser
2. Click "Start Quiz!"
3. Answer 5 multiplication questions
4. See results (correct, wrong, points)
5. Click "Play Again"

**Expected:** Works perfectly without any wallet

### Test 2: Wallet Connection ✅
1. Click "Connect MetaMask"
2. Approve connection
3. Should prompt to add/switch to Mezo testnet
4. Click "Add Network" → "Switch Network"
5. See wallet address and tBTC balance displayed

**Expected:** Smooth wallet connection and network setup

### Test 3: Score Submission ✅
1. Play quiz and complete
2. Click "Submit Score to Blockchain"
3. Approve transaction in MetaMask
4. Wait for confirmation (~10-30 seconds)
5. See success message with transaction hash

**Expected:** Score saved on blockchain

### Test 4: MUSD Boost (if you have MUSD) ⚡
1. Connect wallet with 1+ MUSD
2. See gold boost section appear
3. Enable boost toggle
4. Play quiz
5. Submit score
6. Points should be 1.5x (30 → 45, etc.)

**Expected:** Boosted points applied and submitted

### Test 5: NFT Minting 🎨
1. Ensure 50+ total points
2. Click "Check NFT Eligibility"
3. Should say "✅ Eligible!"
4. Click "Mint NFT Badge"
5. Approve transaction
6. Check MetaMask NFTs tab

**Expected:** NFT appears in wallet

### Test 6: Leaderboard 🏆
1. Click "Refresh Leaderboard" (with OR without wallet)
2. Should show top 5 players
3. If wallet connected, your entry marked "(YOU)"

**Expected:** Leaderboard loads from blockchain

## 🎯 User Journey Examples

### Scenario A: Curious User
1. Finds IPFS URL
2. Opens demo.html
3. Plays quiz without wallet
4. Has fun, leaves
5. *(No barriers to entry)*

### Scenario B: Web3 Beginner
1. Plays quiz without wallet first
2. Enjoys it, wants to save progress
3. Follows prompts to install MetaMask
4. Gets guided through network setup
5. Submits first blockchain transaction
6. *(Smooth onboarding)*

### Scenario C: NFT Collector
1. Connects wallet immediately
2. Plays multiple quizzes
3. Enables MUSD boost
4. Accumulates 50+ points quickly
5. Mints NFT badge
6. Shares achievement
7. *(Power user experience)*

## 🐛 Troubleshooting

### Demo Won't Load
- Check file path is correct
- Hard refresh: Ctrl+Shift+R (Windows) or Cmd+Shift+R (Mac)
- Try different browser
- Check console for errors (F12 → Console)

### MetaMask Not Connecting
- Verify MetaMask is installed and unlocked
- Check you're using supported browser
- Try disabling other Web3 extensions temporarily
- Refresh page after installing MetaMask

### Wrong Network Error
- MetaMask should auto-prompt to add Mezo testnet
- If not, manually add network (details in Requirements section)
- Make sure Chain ID is `31612` or `0x7b7b`

### Transaction Failing
- Check you have tBTC for gas (get from faucet)
- Verify you're on Mezo testnet (not mainnet!)
- Try increasing gas limit in MetaMask
- Check Mezo testnet is operational

### MUSD Boost Not Showing
- Need 1+ MUSD in connected wallet
- Wallet must be connected first
- Check MUSD token address: `0x118917a40FAF1CD7a13dB0Ef56C86De7973Ac503`
- Refresh page after acquiring MUSD

### Leaderboard Not Loading
- Should work even without wallet (uses read-only provider)
- If failing, try connecting wallet
- Check Mezo RPC is accessible
- Wait and try again (network might be busy)

### NFT Not Appearing
- Check you have 50+ total points
- Verify mint transaction succeeded (check explorer)
- Wait a few minutes (can take time to sync)
- Manually import NFT in MetaMask:
  - Contract: `0x03672f6b20622176554a4C0ba7B037d9dCE531f0`
  - Token ID: (check with "Check Mint Status")

## 📊 Contract Addresses

All on Mezo Testnet:

**QuizContract:**
```
0x59bDB59107f29e9712A37c7015ee28675DD7d30f
```
[View on Explorer](https://explorer.test.mezo.org/address/0x59bDB59107f29e9712A37c7015ee28675DD7d30f)

**MathMintNFT:**
```
0x03672f6b20622176554a4C0ba7B037d9dCE531f0
```
[View on Explorer](https://explorer.test.mezo.org/address/0x03672f6b20622176554a4C0ba7B037d9dCE531f0)

**MUSD Token:**
```
0x118917a40FAF1CD7a13dB0Ef56C86De7973Ac503
```
[View on Explorer](https://explorer.test.mezo.org/address/0x118917a40FAF1CD7a13dB0Ef56C86De7973Ac503)

## 🌐 Deployment Status

| Environment | Status | URL |
|-------------|--------|-----|
| Local | ✅ Ready | `file:///app/demo/demo.html` |
| IPFS | 🔄 Pending | Deploy with `yarn deploy:ipfs` |
| Custom Domain | 🔄 Optional | See WEB3_STORAGE_DEPLOYMENT.md |

## 📱 Next Steps

### Ready to Deploy?
1. Get Web3.Storage API token
2. Run `yarn deploy:ipfs`
3. Get your IPFS URL
4. Share with the world!

### Want to Improve?
- [ ] Add more question types
- [ ] Implement difficulty levels
- [ ] Add sound effects
- [ ] Create more NFT badge tiers
- [ ] Add social sharing features
- [ ] Rebuild as React app (Phase 2)

## 🎓 What This Demonstrates

✅ **Decentralized Application** - No backend server needed  
✅ **Progressive Web3** - Play first, connect later  
✅ **Smart Contract Integration** - Real blockchain interactions  
✅ **Wallet UX Best Practices** - Optional connection with clear prompts  
✅ **NFT Mechanics** - Achievement-based minting  
✅ **On-Chain Storage** - All data on Mezo blockchain  
✅ **IPFS-Ready** - Can be deployed to decentralized storage  
✅ **Educational Gaming** - Fun way to learn math + Web3  

## 💡 Key Innovations

1. **Zero Barrier Entry** - No wallet needed to start playing
2. **Just-In-Time Connection** - Wallet prompt only when needed
3. **Read-Only Fallback** - Leaderboard works without wallet
4. **Boost Mechanics** - MUSD staking for multiplier
5. **Single File Deployment** - Entire app in one HTML file

## 🎮 For Hackathon/Demo Purposes

**Live Demo Script:**
1. *(Without wallet)* "First, let's play without connecting anything"
2. *(Play quiz)* "Answer questions, see score - works offline-first"
3. *(Connect wallet)* "Now let's save progress on blockchain"
4. *(Submit score)* "Transaction goes to Mezo L2"
5. *(Show explorer)* "Here's the transaction on-chain"
6. *(Mint NFT)* "At 50 points, mint achievement badge"
7. *(Show MetaMask)* "NFT appears in wallet - you own it"
8. *(Leaderboard)* "Global rankings, all on blockchain"

**Talking Points:**
- "Progressive Web3 - play first, connect later"
- "Zero compulsion, zero risk onboarding"
- "All data on Mezo Bitcoin L2"
- "No backend, no database - fully decentralized"
- "IPFS-hosted, can't be taken down"
- "Educational + NFTs + Gaming = perfect Web3 use case"

## 🔐 Security Notes

- **Testnet Only** - Uses Mezo testnet, not mainnet
- **No Private Keys** - Never exposes or stores keys
- **Smart Contract Audited** - (Add audit details if applicable)
- **MUSD Check** - On-chain verification prevents cheating
- **One NFT Per Wallet** - Enforced by smart contract

## 🤝 Contributing

Found a bug? Want to add a feature?

1. Test thoroughly on testnet
2. Document changes
3. Update relevant documentation
4. Submit pull request

## 📜 License

MIT License - See [LICENSE](../LICENSE) file

## 🙏 Credits

- **Mezo Team** - For Bitcoin L2 infrastructure
- **OpenZeppelin** - For secure contract standards
- **Web3.Storage** - For decentralized hosting
- **MetaMask** - For wallet integration
- **Community** - For feedback and testing

---

## 🚀 Ready to Play?

**Local:** Open `demo.html` in your browser  
**IPFS:** Deploy with `yarn deploy:ipfs`  
**Share:** Send IPFS URL to friends!

**Have fun learning times tables while earning NFTs!** 🎮✨📚

---

*For detailed user instructions, see [USER_GUIDE.md](../USER_GUIDE.md)*  
*For deployment instructions, see [WEB3_STORAGE_DEPLOYMENT.md](../WEB3_STORAGE_DEPLOYMENT.md)*
