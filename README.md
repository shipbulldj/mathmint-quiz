# 🎮 MathMint Quiz

**Learn Times Tables & Earn NFTs on Mezo Bitcoin L2**

A fully decentralized Web3 educational game where users answer multiplication questions, earn points on-chain, and mint achievement NFTs. Built on Mezo's Bitcoin Layer 2 with optional MUSD boost functionality.

## 🌟 Features

### Core Gameplay
- ✅ **Standalone Quiz** - Play without connecting wallet
- 🧮 **5 Random Times-Table Questions** (1-10 multiplication)
- ⏱️ **15-Second Timer** per question
- 📊 **Smart Scoring** - +10 points for correct, -1 for wrong (min 0)
- 🎯 **Interactive UI** - Real-time feedback with retro arcade theme

### Web3 Integration
- 🔐 **Optional Wallet Connection** - Play first, connect when ready
- 💾 **On-Chain Score Storage** - All scores stored on Mezo L2
- 🎨 **NFT Achievement Badges** - Mint at 50+ points (ERC-721)
- 🏆 **Global Leaderboard** - View top 5 players (works without wallet)
- ⚡ **MUSD Boost** - 1.5x points multiplier (stake 1+ MUSD)

### Decentralized Architecture
- 📱 **No Backend Required** - Pure smart contract interaction
- 🌐 **IPFS-Ready** - Deploy demo.html to Web3.Storage
- 🔗 **MetaMask Integration** - Seamless wallet connection
- 🚀 **Fully On-Chain** - All logic on Mezo testnet

## 🚀 Quick Start

### For Players (Use Demo)

1. **Open the demo:**
   ```bash
   # Local
   open demo/demo.html
   
   # Or deploy to Web3.Storage (see WEB3_STORAGE_DEPLOYMENT.md)
   ```

2. **Play the quiz:**
   - No wallet needed to start playing
   - Answer 5 multiplication questions
   - See your score

3. **Connect wallet to save progress:**
   - Click "Connect MetaMask"
   - Submit score to blockchain
   - Mint NFT badge at 50+ points

### For Developers (Deploy Contracts)

```bash
# 1. Install dependencies
yarn install

# 2. Setup environment
cp .env.example .env
# Add your PRIVATE_KEY and MEZO_RPC_URL

# 3. Compile contracts
npx hardhat compile

# 4. Run tests
npx hardhat test

# 5. Deploy to Mezo testnet
npx hardhat run scripts/deploy.js --network mezo
```

## 📁 Project Structure

```
/app/
├── contracts/              # Solidity smart contracts
│   ├── QuizContract.sol    # Score tracking, leaderboard, NFT eligibility
│   └── MathMintNFT.sol     # ERC-721 achievement badges
├── scripts/
│   └── deploy.js           # Hardhat deployment script
├── tests/
│   └── Integration.js      # Contract tests
├── demo/
│   └── demo.html           # Single-file Web3 demo (READY TO DEPLOY)
├── .env                    # Private key and RPC URL
├── hardhat.config.js       # Network configuration
└── package.json            # Dependencies
```

## 🎯 Smart Contracts

### QuizContract (Deployed: `0x59bDB59107f29e9712A37c7015ee28675DD7d30f`)
- Manages user scores on-chain
- Tracks global leaderboard (top 5)
- Validates NFT minting eligibility (50+ points)
- Checks MUSD balance for boost eligibility

### MathMintNFT (Deployed: `0x03672f6b20622176554a4C0ba7B037d9dCE531f0`)
- ERC-721 standard NFT badges
- One per wallet
- Requires 50+ points to mint
- Metadata stored on IPFS

### MUSD Token (Mezo Native: `0x118917a40FAF1CD7a13dB0Ef56C86De7973Ac503`)
- Stablecoin on Mezo testnet
- Used for 1.5x point boost
- Requires 1+ MUSD balance

## 🌐 Deployment

### Current Status
✅ **Smart Contracts:** Deployed on Mezo testnet  
✅ **Demo Frontend:** Ready for Web3.Storage deployment  
✅ **Testing:** Manual testing completed  

### Deploy to Web3.Storage (IPFS)

See detailed guide: [WEB3_STORAGE_DEPLOYMENT.md](./WEB3_STORAGE_DEPLOYMENT.md)

**Quick Deploy:**
```bash
# Install CLI
npm install -g @web3-storage/w3cli

# Set token
export WEB3STORAGE_TOKEN="your-token"

# Upload demo
cd demo
w3 put demo.html --name "MathMint Quiz"

# Share the returned URL:
# https://<CID>.ipfs.w3s.link
```

## 📖 Documentation

- **[QUICKSTART.md](./QUICKSTART.md)** - Full development guide
- **[DEPLOYMENT_GUIDE.md](./DEPLOYMENT_GUIDE.md)** - Contract deployment
- **[WEB3_STORAGE_DEPLOYMENT.md](./WEB3_STORAGE_DEPLOYMENT.md)** - IPFS hosting
- **[PROJECT_OUTLINE.md](./PROJECT_OUTLINE.md)** - Architecture overview
- **[MUSD_BOOST_FEATURE.md](./demo/MUSD_BOOST_FEATURE.md)** - Boost mechanics

## 🔧 Technical Stack

**Blockchain:**
- Solidity (Smart Contracts)
- Hardhat (Development Framework)
- OpenZeppelin (ERC-721 Standards)
- Mezo Bitcoin L2 (Deployment Network)

**Frontend:**
- Pure HTML/CSS/JavaScript
- Ethers.js v5 (Web3 Library)
- MetaMask (Wallet Integration)
- No backend or database needed

**Storage:**
- IPFS via Web3.Storage (Frontend hosting)
- IPFS via Pinata (NFT metadata)

## 🎮 How It Works

### User Flow
1. **Visit demo.html** (locally or on IPFS)
2. **Play quiz** without wallet (optional)
3. **Answer 5 questions** (15 seconds each)
4. **See results** (correct answers, points earned)
5. **Connect MetaMask** (when ready to save)
6. **Submit score** to blockchain
7. **Enable MUSD boost** (if holding 1+ MUSD)
8. **Mint NFT badge** (at 50+ total points)
9. **View leaderboard** (top 5 players)

### MUSD Boost
- Hold 1+ MUSD in wallet → Enable boost toggle
- Boost active: 10 points → 15 points per correct answer
- On-chain verification before score submission

### NFT Minting
- Requirements: 50+ total points, 0.001+ tBTC for gas
- One badge per wallet
- Metadata on IPFS (via tokenURI)
- Appears in MetaMask NFTs tab

## 🌍 Network Info

**Mezo Testnet:**
- Chain ID: `31612` / `0x7b7b`
- RPC: `https://rpc.test.mezo.org`
- Explorer: `https://explorer.test.mezo.org`
- Faucet: `https://faucet.mezo.org`

## 📝 Testing

### Manual Testing (Completed)
✅ Quiz playable without wallet  
✅ Wallet prompts for blockchain operations  
✅ Leaderboard works without wallet  
✅ Score submission with/without boost  
✅ NFT minting at 50+ points  
✅ UI/UX responsive and clear  

### Automated Testing
```bash
# Run contract tests
npx hardhat test

# Expected: All tests passing
```

## 🤝 Contributing

1. Fork the repository
2. Create your feature branch
3. Test thoroughly
4. Submit a pull request

## 📄 License

MIT License - See LICENSE file for details

## 🔗 Links

- **Mezo Testnet Explorer:** https://explorer.test.mezo.org
- **QuizContract:** [0x59bDB59...DD7d30f](https://explorer.test.mezo.org/address/0x59bDB59107f29e9712A37c7015ee28675DD7d30f)
- **MathMintNFT:** [0x03672f6...CE531f0](https://explorer.test.mezo.org/address/0x03672f6b20622176554a4C0ba7B037d9dCE531f0)
- **MUSD Token:** [0x118917a...973Ac503](https://explorer.test.mezo.org/address/0x118917a40FAF1CD7a13dB0Ef56C86De7973Ac503)

## 💡 Key Features Implementation

### Phase 1: Optional Wallet Connection ✅ COMPLETE
- Users can play quiz without wallet
- Smart prompts for blockchain operations
- Leaderboard accessible to everyone
- Clear guidance on when wallet is needed

### Phase 2: React Frontend (Optional)
- Rebuild as React app
- Better code organization
- Enhanced state management

### Phase 3: Optimization (Future)
- Gas optimization
- Error handling improvements
- Enhanced MetaMask prompts
- Performance tuning

## 🎯 Use Cases

- **Education:** Learn multiplication tables in a fun way
- **Web3 Onboarding:** Introduce users to blockchain gaming
- **NFT Introduction:** First NFT for new crypto users
- **GameFi Prototype:** Template for educational blockchain games

## ⚠️ Important Notes

- **Testnet Only:** Currently on Mezo testnet (not mainnet)
- **Gas Required:** Need tBTC for transactions (get from faucet)
- **MetaMask Required:** For wallet connection features
- **Browser Support:** Modern browsers with Web3 support

## 🙏 Acknowledgments

- Mezo team for Bitcoin L2 infrastructure
- OpenZeppelin for secure contract standards
- Web3.Storage for decentralized hosting
- MetaMask for wallet integration

---

**Ready to deploy?** See [WEB3_STORAGE_DEPLOYMENT.md](./WEB3_STORAGE_DEPLOYMENT.md) to host your demo on IPFS! 🚀
