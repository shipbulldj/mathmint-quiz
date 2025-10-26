# MathMint Quiz - Project Outline
## Mezo Hackathon Submission

---

## 1. Project Overview

**Name:** MathMint Quiz

**Tagline:** Learn times tables, earn digital collectibles - A gentle introduction to Web3

**Category:** Educational Gaming / Web3 Onboarding

**One-liner:** A fun, educational math quiz game on Mezo Bitcoin L2 that rewards players with NFT badges, designed to gently introduce learners to blockchain technology with zero financial risk.

---

## 2. Problem Statement

### The Challenge
- **Web3 adoption barrier:** Complex onboarding, high costs, steep learning curve
- **Educational gaming gap:** Limited engaging ways to practice basic math skills
- **NFT misconception:** Associated with speculation rather than achievement/learning
- **User data exploitation:** Educational apps often monetize student data

### Target Audience
- Students (ages 8-14) learning multiplication tables
- Parents seeking safe, educational digital experiences
- Teachers looking for engaging math practice tools
- Web3 newcomers wanting risk-free blockchain exposure

---

## 3. Solution: MathMint Quiz

### Core Concept
A times-table quiz game that:
1. **Teaches:** Math practice through engaging gameplay
2. **Rewards:** Digital achievement badges (NFTs) for milestones
3. **Introduces:** Blockchain concepts gradually, with zero pressure
4. **Protects:** Zero data monetization, testnet-only (no real money)

### Key Principles
✅ **Educational First** - Learning is primary, Web3 is secondary  
✅ **Zero Risk** - Testnet only, no real money involved  
✅ **Optional Web3** - Can play without wallet/NFTs  
✅ **Privacy Focused** - No user data collection or monetization  
✅ **Accessible** - Works on any device, minimal setup  

---

## 4. How It Works

### User Journey

#### **Path 1: Casual Player (No Wallet)**
1. Visit website → Start playing immediately
2. Answer 5 multiplication questions (1-10 × 1-10)
3. Get instant feedback (+10 points correct, -1 wrong)
4. See score and leaderboard
5. Optional: Connect wallet to save progress

#### **Path 2: Web3 Explorer (With Wallet)**
1. Connect MetaMask/Unisat/Leather wallet
2. Play quiz (same as Path 1)
3. Scores saved on Mezo blockchain
4. Reach 50 points → Eligible for NFT badge
5. Choose to mint achievement NFT (costs minimal gas)
6. Badge stored in wallet forever

### Game Mechanics
- **5 random questions** per quiz (1-10 × 1-10)
- **15-second timer** per question (keeps engagement high)
- **Scoring:** +10 correct, -1 wrong (minimum 0)
- **NFT threshold:** 50 points (5 correct answers)
- **Leaderboard:** Top players visible to all

---

## 5. Technical Architecture

### Blockchain Layer (Mezo Bitcoin L2)
**Smart Contracts:**
- **QuizContract:** Score tracking, leaderboard management
- **MathMintNFT:** ERC-721 achievement badges

**Contract Addresses (Mezo Testnet):**
- QuizContract: `0x59bDB59107f29e9712A37c7015ee28675DD7d30f`
- MathMintNFT: `0x03672f6b20622176554a4C0ba7B037d9dCE531f0`

### Frontend Layer
- **Framework:** React.js
- **Styling:** Tailwind CSS (retro arcade aesthetic)
- **Web3:** ethers.js for wallet & contract interaction
- **Hosting:** IPFS (fully decentralized)

### Key Features
✅ Client-side quiz generation (no server needed)  
✅ Batch score submission (minimize gas costs)  
✅ Responsive design (mobile & desktop)  
✅ Multiple wallet support (MetaMask, Unisat, Leather)  
✅ Smooth UX (local state management)  

---

## 6. Why Mezo Bitcoin L2?

### Strategic Fit
1. **Low Transaction Costs:** Affordable for educational use case
2. **Bitcoin Security:** Inherited security from Bitcoin network
3. **Fast Finality:** Quick confirmations for good UX
4. **Layer 2 Benefits:** Scalability without compromising security

### Mezo-Specific Features Utilized
- EVM compatibility (standard Solidity contracts)
- Low gas fees (enables micro-transactions)
- Testnet availability (perfect for educational demo)

---

## 7. Innovation & Impact

### What Makes This Unique

**1. Educational-First Web3**
- Most Web3 games focus on speculation
- MathMint focuses on learning with Web3 as optional enhancement

**2. Zero-Pressure Onboarding**
- Play without wallet
- Learn about blockchain gradually
- Choose when/if to engage with Web3

**3. Achievement-Based NFTs**
- NFTs represent real accomplishments
- Not tradeable speculation tokens
- Meaningful digital collectibles

**4. Privacy-Preserving**
- No user data collection
- No tracking or monetization
- Blockchain provides only necessary transparency (scores)

### Potential Impact

**For Students:**
- Engaging math practice
- Introduction to digital ownership
- Understanding blockchain basics

**For Educators:**
- Modern teaching tool
- Student progress tracking (optional)
- Blockchain literacy education

**For Web3 Adoption:**
- Gentle onboarding mechanism
- Practical use case demonstration
- Reduces barriers to entry

---

## 8. Roadmap

### Phase 1: MVP (Current - Hackathon)
✅ Smart contracts deployed on Mezo testnet  
✅ Basic quiz gameplay  
🔄 Simple demo interface  
🔄 Wallet integration  

### Phase 2: Enhanced UX (Post-Hackathon)
- Full React frontend
- Beautiful retro arcade UI
- Smooth animations
- Mobile optimization

### Phase 3: Feature Expansion
- Multiple difficulty levels (multiplication, division, etc.)
- Daily challenges
- Achievement system (bronze/silver/gold badges)
- Teacher dashboard (optional)

### Phase 4: Mainnet Launch
- Audit smart contracts
- Deploy to Mezo mainnet
- Partnership with educational platforms
- Real-world pilot programs

---

## 9. Technical Specifications

### Smart Contracts

**QuizContract.sol**
```solidity
Functions:
- updateScore(address user, uint256 points)
- getScore(address user) returns (uint256)
- canMintNFT(address user) returns (bool)
- getLeaderboard() returns (address[], uint256[])
```

**MathMintNFT.sol**
```solidity
Functions:
- mintBadge(string tokenURI)
- hasUserMinted(address user) returns (bool)
- getUserTokenId(address user) returns (uint256)
```

### Gas Optimization
- Batch score updates (1 transaction per quiz, not per question)
- Read-only queries (free)
- Efficient storage patterns

### Security Features
- ReentrancyGuard protection
- OpenZeppelin audited contracts
- Access control with Ownable
- Event emission for transparency

---

## 10. Demo & Testing

### Live Contracts
- **Explorer:** https://explorer.test.mezo.org
- **QuizContract:** View transactions and state
- **NFT Contract:** See minted badges

### Testing Instructions
```bash
# Clone repository
git clone https://github.com/YOUR_USERNAME/mathmint-quiz

# Install dependencies
yarn install

# Setup environment
cp .env.example .env
# Add private key

# Test contracts
npx hardhat test

# Deploy
npx hardhat run scripts/deploy.js --network mezo
```

### Demo Video
[Will include 2-minute walkthrough showing:]
- Quiz gameplay
- Wallet connection
- Score submission
- NFT minting
- Leaderboard

---

## 11. Team & Resources

### Solo Developer
- Full-stack development
- Smart contract development
- UI/UX design
- Educational background

### Technologies Used
- Solidity 0.8.20
- Hardhat
- OpenZeppelin Contracts
- React.js
- ethers.js
- Tailwind CSS
- IPFS

---

## 12. Business Model (Future)

### Sustainability Without User Data Monetization

**Revenue Sources (Optional, Future):**
1. **Institutional Licensing:** Schools/districts pay for premium features
2. **Voluntary Support:** Donations from satisfied users
3. **Sponsorships:** Educational brands (non-intrusive)

**What We Won't Do:**
❌ Sell user data  
❌ Behavioral tracking  
❌ Forced monetization  
❌ Pay-to-win mechanics  

---

## 13. Success Metrics

### For Hackathon
- ✅ Contracts deployed and verified
- ✅ Functional quiz gameplay
- ✅ NFT minting works
- ✅ User can complete full journey

### Long-term
- Number of quizzes completed
- NFTs minted (achievement unlocked)
- User retention (repeat players)
- Educational outcome (improved math scores)

---

## 14. Risks & Mitigations

| Risk | Impact | Mitigation |
|------|--------|------------|
| Low user adoption | Medium | Focus on educational partnerships |
| Gas costs too high | High | Optimize transactions, use L2 benefits |
| Smart contract bugs | Critical | Comprehensive testing, audits |
| Poor UX scares users | High | Iterative design, user testing |
| Blockchain complexity | Medium | Gradual introduction, clear guides |

---

## 15. Why This Matters

### Educational Value
Mathematics is fundamental. Making practice engaging improves outcomes.

### Web3 Education
Future generations need blockchain literacy. Safe, fun introduction is crucial.

### Digital Ownership
Students learn about owning digital assets meaningfully, not speculatively.

### Privacy Protection
Demonstrates Web3 can respect privacy while providing transparency where it matters.

---

## 16. Conclusion

**MathMint Quiz bridges education and blockchain,** creating a safe, engaging environment for learners to:
- Practice essential math skills
- Discover Web3 technology
- Earn meaningful digital achievements
- Experience blockchain benefits without risks

**Built on Mezo Bitcoin L2,** it showcases how Layer 2 solutions enable practical, user-friendly applications that were previously cost-prohibitive on Layer 1.

**This is Web3 done right:** educational, accessible, and respectful of users.

---

## 17. Links & Resources

**Repository:** https://github.com/YOUR_USERNAME/mathmint-quiz  
**Live Demo:** [Will deploy to IPFS]  
**Contracts:** https://explorer.test.mezo.org/address/0x59bDB59107f29e9712A37c7015ee28675DD7d30f  
**Documentation:** See README.md in repository  

---

## 18. Contact

**Developer:** [Your Name]  
**Email:** [Your Email]  
**GitHub:** [Your GitHub]  
**Twitter:** [Optional]  

---

**Built with ❤️ for learners everywhere**  
**Powered by Mezo Bitcoin L2**

---

## Appendix A: User Stories

### Story 1: Young Student
"I practiced my times tables and earned a cool digital badge! I didn't know I was using blockchain - it just felt like a fun game."

### Story 2: Concerned Parent
"My child is learning math AND getting introduced to Web3 safely. No real money, no pressure, just learning and optional digital rewards."

### Story 3: Teacher
"I can recommend this to students without worrying about inappropriate content or hidden costs. It's pure education with modern tech."

### Story 4: Web3 Curious Adult
"I wanted to understand blockchain but was intimidated. Playing a simple math game made it click - I understand wallets, transactions, and NFTs now!"

---

## Appendix B: Technical Deep Dive

[Detailed architecture diagrams, contract code excerpts, and integration guides will be available in the full documentation]

---

**End of Project Outline**

*Last Updated: [Current Date]*  
*Version: 1.0 - Hackathon Submission*
