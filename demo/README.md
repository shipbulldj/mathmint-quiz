# MathMint Quiz - Phase 1 Demo

## 🎮 What Is This?

A simple, single-page demo that lets you interact with your deployed smart contracts on Mezo testnet.

## 📍 Location

The demo page is at: `/app/demo/index.html`

## 🚀 How to Use

### Option 1: Open Locally
```bash
# Simply open the file in your browser
open /app/demo/index.html

# Or on Windows:
start /app/demo/index.html

# Or just drag the file into your browser
```

### Option 2: Serve with Python (if you want a local server)
```bash
cd /app/demo
python3 -m http.server 8080

# Then visit: http://localhost:8080
```

### Option 3: Serve with Node
```bash
cd /app/demo
npx serve .

# Then visit the URL shown
```

## ✨ Features

### 1. Wallet Connection
- Connect MetaMask
- View your address
- Check your tBTC balance

### 2. Quiz Contract Interactions
- **Update Score**: Submit points to the blockchain
- **Get Score**: View your current score
- **Check Eligibility**: See if you can mint NFT (50+ points)

### 3. NFT Contract Interactions
- **Mint NFT**: Mint your achievement badge
- **Check Status**: See if you've already minted

### 4. Leaderboard
- View top players
- See their scores
- Real-time blockchain data

## 🔧 Setup Requirements

### 1. MetaMask Installed
Download from: https://metamask.io

### 2. Add Mezo Testnet to MetaMask

**Network Details:**
```
Network Name: Mezo Testnet
RPC URL: https://rpc.test.mezo.org
Chain ID: [Your testnet chain ID]
Currency Symbol: tBTC
Explorer: https://explorer.test.mezo.org
```

### 3. Get Testnet tBTC
Visit Mezo faucet and request tBTC for your wallet address

## 📝 How to Test

### Complete User Journey:

1. **Open demo page** → `index.html` in browser

2. **Connect wallet** → Click "Connect MetaMask"

3. **Submit score** → Enter 50 points, click "Submit Score"
   - Approve transaction in MetaMask
   - Wait for confirmation (~10 seconds)

4. **Check score** → Click "Get My Score"
   - Should show: 50 points

5. **Check eligibility** → Click "Check NFT Eligibility"
   - Should show: Eligible to mint!

6. **Mint NFT** → Click "Mint NFT Badge"
   - Approve transaction
   - Wait for confirmation
   - NFT is now in your wallet!

7. **View leaderboard** → Click "Refresh Leaderboard"
   - See your ranking

## 🎯 What This Demonstrates

✅ **Smart Contract Integration** - Real blockchain calls  
✅ **Wallet Connection** - MetaMask integration  
✅ **Transaction Handling** - Signing & waiting for confirmations  
✅ **Read/Write Operations** - Both query and state-changing calls  
✅ **Error Handling** - Clear error messages  
✅ **Real-time Updates** - Blockchain state queries  

## 🐛 Troubleshooting

### "Please install MetaMask"
- Install MetaMask browser extension
- Refresh the page

### "Network Error"
- Check you're on Mezo testnet in MetaMask
- Verify RPC URL: https://rpc.test.mezo.org

### "Insufficient funds"
- Get tBTC from Mezo faucet
- Need ~0.01 tBTC for testing

### "Transaction Failed"
- Check you have enough gas
- Make sure contracts are deployed correctly
- Verify you're on correct network

### "Can't mint NFT"
- Need 50+ points first
- Can only mint once per address
- Need tBTC for gas

## 📊 Contract Addresses

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

## 🎨 UI Features

- **Gradient background** - Retro arcade aesthetic
- **Glass-morphism cards** - Modern, clean design
- **Responsive layout** - Works on mobile & desktop
- **Real-time feedback** - Loading states & confirmations
- **Error handling** - Clear error messages
- **Transaction tracking** - Shows tx hash & links

## 📱 Next Steps

After testing this demo:

1. ✅ Verify all functions work
2. ✅ Test on different devices
3. ✅ Share with team/judges for feedback
4. 🔄 Move to Phase 2: Full React app

## 🎓 For Hackathon Demo

**Show judges:**
1. Open demo page
2. Connect wallet (live)
3. Submit score (show transaction on explorer)
4. Mint NFT (show it appears in wallet)
5. View leaderboard (show blockchain data)

**Talking points:**
- "This is direct smart contract interaction"
- "All data stored on Mezo blockchain"
- "No backend server needed"
- "True Web3 - user owns their data"

## 💡 Tips

- **Keep MetaMask open** - Makes testing faster
- **Use testnet liberally** - It's free!
- **Check explorer** - Verify transactions
- **Screenshot success** - For documentation

## 🔐 Security Note

This is a testnet demo. Never use real private keys or mainnet funds!

---

**Ready to test! Open `index.html` in your browser and start interacting with your contracts!** 🚀
