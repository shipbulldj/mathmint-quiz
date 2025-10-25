# MathMint Quiz - Smart Contracts

Smart contracts for MathMint Quiz on Mezo Bitcoin L2.

## Quick Start

```bash
# Install dependencies
yarn install

# Setup environment
cp .env.example .env
# Add your PRIVATE_KEY

# Compile contracts
npx hardhat compile

# Run tests
npx hardhat test

# Deploy to Mezo
npx hardhat run scripts/deploy.js --network mezo
```

## Contracts

- **QuizContract.sol** - Score tracking and leaderboard
- **MathMintNFT.sol** - ERC-721 NFT badges

## Documentation

See [QUICKSTART.md](./QUICKSTART.md) for full deployment guide.
