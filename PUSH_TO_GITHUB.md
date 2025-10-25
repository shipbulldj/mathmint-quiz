# Update GitHub Repository - Instructions

## ✅ Files are ready! Now push to GitHub:

### Step 1: Configure Git (if not done already)
```bash
cd /app
git config user.name "Your Name"
git config user.email "your.email@example.com"
```

### Step 2: Add Your GitHub Repository
```bash
# Replace YOUR_USERNAME with your GitHub username
git remote add origin https://github.com/YOUR_USERNAME/mathmint-quiz.git

# Or if you already added it:
git remote set-url origin https://github.com/YOUR_USERNAME/mathmint-quiz.git
```

### Step 3: Force Push (This will overwrite the bad files)
```bash
git push -u origin main --force
```

### Step 4: Verify on GitHub
Go to: https://github.com/YOUR_USERNAME/mathmint-quiz

You should see:
- ✅ contracts/QuizContract.sol
- ✅ contracts/MathMintNFT.sol
- ✅ scripts/deploy.js
- ✅ hardhat.config.js
- ✅ package.json
- ✅ README.md
- ✅ .env.example

No more invalid file errors!

## Now Clone to Your Local Machine:

```bash
# On your local computer
git clone https://github.com/YOUR_USERNAME/mathmint-quiz.git
cd mathmint-quiz

# Install dependencies
yarn install

# Setup environment
cp .env.example .env
nano .env  # Add your PRIVATE_KEY

# Test
npx hardhat compile
npx hardhat test

# Deploy
npx hardhat run scripts/deploy.js --network mezo
```

## Troubleshooting

### If GitHub asks for authentication:
Use a Personal Access Token (not password):
1. GitHub → Settings → Developer settings → Personal access tokens
2. Generate new token (classic)
3. Select "repo" scope
4. Copy token
5. Use as password when pushing

### If push is rejected:
```bash
git push -u origin main --force
```

The `--force` flag is safe here because we're fixing a corrupted repo.

---

**Ready to push! 🚀**
