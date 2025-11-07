# MathMint Quiz - Tabbed UI Guide

## Overview

The new tabbed interface (`demo-tabs.html`) provides a streamlined, modern experience for the MathMint Quiz application. It organizes functionality into two main tabs for better user experience and clarity.

## Features

### 🎯 Quiz Tab

**Purpose:** Play the quiz, see your score, save points, and view the leaderboard.

**Key Features:**
- **MUSD Boost Hint (Always Visible)**
  - Shows a prominent hint about the 1.5x boost feature
  - If you don't have MUSD: Shows a link to swap on Mezo testnet
  - If you have MUSD: Shows a toggle to enable the boost before playing
  
- **Interactive Quiz Gameplay**
  - 5 random times-table questions
  - 15-second timer per question
  - Visual feedback (correct/wrong answers)
  - Progress bar showing quiz completion
  
- **Save Points to Blockchain**
  - One-click save to your wallet
  - Clear messages about wallet requirement
  - Boost is automatically applied if enabled
  
- **Live Leaderboard**
  - Automatically loads on page load
  - Shows top 5 players with medals (🥇🥈🥉)
  - Highlights your position if you're on the board
  - Auto-refreshes when you save new points

### 🏦 Bank Tab

**Purpose:** Manage your wallet, view holdings, and mint NFT badges.

**Key Features:**
- **Not Connected State**
  - Welcoming "Bank of Good Times" message
  - Clear explanation of why you'd want your own "bank"
  - Two prominent buttons:
    - "Connect to My Bank" - For existing MetaMask users
    - "Create My First Bank" - Guides new users through setup
  - Links to free testnet faucet
  
- **Connected State**
  - **Wallet Overview Card**
    - Shows your wallet address
    - Displays tBTC balance
    - Displays MUSD balance (with swap link)
    - Shows saved quiz points from blockchain
    - Shows pending points (not yet saved)
    - "Refresh Data" button for manual updates
  
  - **NFT Badge Card**
    - If not eligible: Shows how many more points you need
    - If eligible (50+ points): Shows mint button
    - If already minted: Shows confirmation and NFT count

## Automatic Data Fetching

The tabbed UI automatically fetches data without requiring manual button clicks:

1. **On Page Load:**
   - Leaderboard loads automatically
   - Checks if wallet is already connected
   
2. **When Wallet Connects:**
   - All wallet balances load automatically
   - MUSD boost hint updates based on balance
   - NFT status checks automatically
   
3. **When Switching Tabs:**
   - Bank tab refreshes wallet data when visited
   - Quiz tab reloads leaderboard when visited
   
4. **After Saving Points:**
   - Bank data refreshes automatically
   - Leaderboard refreshes automatically
   - Pending points reset to 0

## User Experience Flow

### For New Users (No Wallet)
1. Land on Quiz tab → See MUSD hint → See quiz ready to play
2. Play quiz without wallet connection
3. After completing quiz, see message: "Connect your bank to save points!"
4. Switch to Bank tab → Click "Create My First Bank"
5. Follow guided modal instructions to install MetaMask
6. Return and connect wallet
7. Go back to Quiz tab → Save your points!

### For Existing Users (Has Wallet)
1. Land on Quiz tab → Wallet auto-connects
2. See MUSD balance status automatically
3. Enable boost if you have MUSD
4. Play quiz
5. Save points with one click
6. Switch to Bank tab to view all holdings
7. Mint NFT badge when eligible

## "Bank of Good Times" Theme

The entire interface uses friendly, approachable language:
- "Your Bank of Good Times" instead of "wallet"
- "Save Points Forever" instead of "submit transaction"
- "Beast Mode" for the MUSD boost
- Emoji-rich interface for visual appeal
- Clear explanations without technical jargon

## Security & Education

**Welcome Modal:**
When connecting for the first time, users see a modal that:
- Explains what makes self-custody special
- Provides 5 quick security tips
- Requires checkbox confirmation before proceeding
- Links to complete Security Guide

**Create Bank Modal:**
When creating a new wallet, users see step-by-step:
1. How to install MetaMask
2. Why seed phrase security matters
3. What to do after installation
4. Reminder that this is testnet (safe practice)

## Technical Details

**Smart Contracts:**
- Quiz Contract: `0x59bDB59107f29e9712A37c7015ee28675DD7d30f`
- NFT Contract: `0x03672f6b20622176554a4C0ba7B037d9dCE531f0`
- MUSD Contract: `0x118917a40FAF1CD7a13dB0Ef56C86De7973Ac503`

**Network:**
- Mezo Testnet (Chain ID: 0x7b7b)
- RPC: https://rpc.test.mezo.org
- Explorer: https://explorer.test.mezo.org
- Faucet: https://faucet.test.mezo.org

**Key Functions:**
- `updateScore(address, uint256)` - Save points to blockchain
- `getScore(address)` - Get saved points
- `canMintNFT(address)` - Check eligibility (50+ points)
- `getLeaderboard()` - Get top 5 players
- MUSD boost: 1.5x multiplier when 1+ MUSD held

## Comparison with Other Demos

| Feature | demo.html | demo-simple.html | demo-tabs.html |
|---------|-----------|------------------|----------------|
| Layout | Single scrolling page | Single page with panels | Tabbed interface |
| MUSD Hint | Shows when wallet connected | Simplified version | Always visible |
| Leaderboard | At bottom | At bottom | In Quiz tab |
| Bank Info | Separate sections | Simplified | Dedicated Bank tab |
| Auto-fetch | Manual refresh | Manual refresh | **Automatic** |
| Best For | Full features | Simplicity | **Organization & UX** |

## Mobile Responsiveness

The tabbed UI is fully responsive:
- Tabs stack horizontally on mobile
- Cards adjust to single column layout
- Font sizes scale appropriately
- Touch-friendly button sizes

## Future Enhancements

Potential improvements for the tabbed UI:
1. Add a "History" tab showing transaction history
2. Add a "Help" tab with FAQs and guides
3. Add wallet balance refreshing every 30 seconds
4. Add notifications when new players join leaderboard
5. Add achievement badges beyond the first NFT

## Troubleshooting

**Leaderboard not loading:**
- Check browser console for errors
- Verify RPC connection to Mezo testnet
- Wait a few seconds and reload page

**Wallet not connecting:**
- Install MetaMask extension
- Make sure you're on Mezo testnet
- Refresh page after switching networks

**Points not saving:**
- Confirm transaction in MetaMask
- Ensure you have tBTC for gas fees
- Check that wallet is connected

**MUSD boost not working:**
- Must have 1+ MUSD in wallet
- Must enable toggle BEFORE starting quiz
- Check MUSD balance in Bank tab

## Links

- **Main Demo:** `demo.html` - Full featured version
- **Simple Demo:** `demo-simple.html` - Minimal version
- **Tabbed Demo:** `demo-tabs.html` - **This version**
- **Security Guide:** `../SECURITY_GUIDE.md`
- **Deployment Guide:** `../WEB3_STORAGE_DEPLOYMENT.md`
- **User Guide:** `../USER_GUIDE.md`
