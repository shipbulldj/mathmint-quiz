# Bitcoin Wallet Support - Integration Guide

This guide explains how to add Unisat and Leather wallet support alongside MetaMask for the MathMint Quiz.

## Why Bitcoin Wallets for Mezo?

Mezo is a Bitcoin Layer 2, so native Bitcoin wallets like **Unisat** and **Leather** are perfect for Bitcoin-native users who want to interact with the testnet.

## Wallets to Support

1. **MetaMask** - EVM wallet (already supported)
2. **Unisat** - Bitcoin wallet with EVM compatibility
3. **Leather (formerly Hiro)** - Bitcoin & Stacks wallet

## Implementation Plan

### Detection Logic
```javascript
async function detectWallets() {
    const wallets = {
        metamask: !!window.ethereum,
        unisat: !!window.unisat,
        leather: !!window.LeatherProvider || !!window.HiroWalletProvider
    };
    return wallets;
}
```

### Connection Functions
```javascript
async function connectMetaMask() { /* existing */ }
async function connectUnisat() { /* new */ }
async function connectLeather() { /* new */ }
```

### UI Changes
- Show 3 wallet buttons instead of 1
- Each with distinct branding
- Auto-detect which wallets are installed

## Files to Update

1. `demo.html` - Add multi-wallet support
2. `demo-simple.html` - Add multi-wallet support  
3. Update connection UI to show 3 options

## Next Steps

Would you like me to:
1. Implement full Unisat + Leather support now?
2. Research current Unisat/Leather APIs for Mezo compatibility first?
3. Start with just UI changes (buttons) and add functionality later?

Note: Unisat and Leather integration with EVM chains (like Mezo) may require special adapters or may not be fully supported yet. We should verify compatibility first.
