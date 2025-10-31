# 🌐 Free DNS Names for MathMint Quiz IPFS Deployment

This guide explains how to get a FREE custom domain name for your IPFS-hosted MathMint Quiz demo.

## 🎯 Quick Summary

**Best Free Options:**
1. **Fleek.co subdomain** - Completely free, easiest setup (Recommended)
2. **GitHub Pages subdomain** - Free, good for projects
3. **ENS .eth domain** - Web3 native, costs ~$5-20/year in ETH (not free but cheapest Web3 option)
4. **Vercel/Netlify subdomain** - Free, professional

## 🚀 Option 1: Fleek.co (Recommended - Easiest & Free)

Fleek provides **FREE subdomains** like `mathmint.on.fleek.co` plus automatic IPFS hosting!

### Step 1: Create Fleek Account

1. Visit: https://fleek.co
2. Sign up with GitHub, email, or wallet
3. Free tier includes:
   - Free subdomain (yourname.on.fleek.co)
   - IPFS hosting
   - Automatic deployments
   - HTTPS included

### Step 2: Deploy Your Demo

**Method A: Upload File Directly**
1. Go to Fleek dashboard
2. Click "Add New Site"
3. Choose "Upload"
4. Upload your `demo.html` file
5. Get instant deployment!

**Method B: Connect GitHub (Better for Updates)**
1. Push your code to GitHub
2. In Fleek: "Add New Site" → "Connect Git"
3. Select your repository
4. Fleek auto-deploys on every commit

### Step 3: Get Your Free Subdomain

After deployment, you'll get:
- **Free Fleek URL:** `https://mathmint-quiz.on.fleek.co`
- **IPFS Gateway:** `https://ipfs.fleek.co/ipfs/[CID]`
- Both work automatically!

### Step 4: (Optional) Add Custom Domain

If you later buy a domain:
1. Go to Site Settings → Domain Management
2. Add your custom domain
3. Update DNS records (CNAME to Fleek)
4. Done!

**Pros:**
✅ Completely FREE  
✅ Easy setup (5 minutes)  
✅ Auto-deploys from GitHub  
✅ HTTPS included  
✅ IPFS native  
✅ No credit card needed  

**Cons:**
❌ Subdomain includes "fleek.co"  
❌ Limited customization on free tier  

---

## 🐙 Option 2: GitHub Pages (Free .github.io Subdomain)

Get a free subdomain like `yourusername.github.io/mathmint-quiz`

### Setup Steps

1. **Create GitHub Repository**
   ```bash
   cd /app
   git init
   git add .
   git commit -m "Initial commit"
   git remote add origin https://github.com/yourusername/mathmint-quiz.git
   git push -u origin main
   ```

2. **Enable GitHub Pages**
   - Go to repository Settings
   - Scroll to "Pages" section
   - Source: Deploy from branch
   - Branch: `main`, folder: `/` or `/demo`
   - Save

3. **Access Your Site**
   - URL: `https://yourusername.github.io/mathmint-quiz`
   - Or with custom domain: `https://yourusername.github.io/mathmint-quiz/demo.html`

4. **Point to IPFS (Optional)**
   - Create a redirect page that loads your IPFS content
   - Or host the actual file on GitHub Pages

**Pros:**
✅ FREE forever  
✅ Good for open-source projects  
✅ Easy CI/CD  
✅ Respectable domain  

**Cons:**
❌ Not pure IPFS (centralized hosting)  
❌ Limited to 1GB storage  
❌ Subdomain includes "github.io"  

---

## ⚡ Option 3: Vercel (Free Subdomain)

Get `mathmint-quiz.vercel.app` for FREE

### Setup Steps

1. **Sign up at Vercel.com**
   - Free account (no credit card)
   - Connect with GitHub

2. **Deploy**
   ```bash
   # Install Vercel CLI
   npm install -g vercel
   
   # Deploy from /app/demo
   cd /app/demo
   vercel --prod
   ```

3. **Get Free URL**
   - Auto-assigned: `your-project.vercel.app`
   - Can customize: `mathmint-quiz.vercel.app`

4. **Point to IPFS Content (Optional)**
   - Use Vercel as a gateway to IPFS
   - Create serverless function to fetch IPFS content

**Pros:**
✅ FREE  
✅ Professional subdomain  
✅ Fast global CDN  
✅ Easy deployments  

**Cons:**
❌ Not native IPFS  
❌ Subdomain includes "vercel.app"  
❌ Limited to Vercel hosting  

---

## 🔷 Option 4: ENS .eth Domain (Web3 Native - $5-20/year)

Get a Web3 domain like `mathmint.eth` - **NOT FREE but cheapest Web3 option**

### What is ENS?

ENS (Ethereum Name Service) is the Web3 equivalent of DNS. Domains like `yourname.eth` can:
- Point to IPFS content
- Point to Ethereum addresses
- Work in Web3 browsers
- Resolve in some regular browsers via gateways

### Cost
- Registration: ~$5-20/year (in ETH)
- Gas fees: ~$10-50 (one-time, depends on Ethereum gas)
- **Total first year: $15-70**

### Setup Steps

1. **Visit ENS App**
   - Go to: https://app.ens.domains
   - Connect MetaMask wallet

2. **Search & Register**
   - Search: `mathmint` (or your desired name)
   - Check availability
   - Register for 1+ years
   - Pay in ETH (includes gas fees)

3. **Point to IPFS**
   - After registration, click your domain
   - Go to "Records" tab
   - Add record:
     - Type: `Content Hash`
     - Value: `ipfs://[YOUR-CID]`
   - Save (requires gas fee)

4. **Access Your Site**
   - Direct Web3: `mathmint.eth` (in Brave, Opera, or with MetaMask)
   - Gateway: `https://mathmint.eth.limo`
   - Gateway: `https://mathmint.eth.link`

**Pros:**
✅ True Web3 domain  
✅ You OWN it (NFT)  
✅ Works with IPFS natively  
✅ Transferable, valuable  
✅ Cool factor (mathmint.eth!)  

**Cons:**
❌ Costs money ($15-70 first year)  
❌ Requires ETH and gas fees  
❌ Not all browsers support .eth  
❌ Need gateway for regular browsers  

---

## 🌐 Option 5: Unstoppable Domains (One-Time Purchase - $10-40)

Get domains like `mathmint.crypto`, `mathmint.nft`, `mathmint.x` - **NOT FREE**

### Features
- One-time purchase (no renewals!)
- IPFS integration
- Various extensions (.crypto, .nft, .x, .wallet, etc.)

### Setup Steps

1. **Visit Unstoppable Domains**
   - Go to: https://unstoppabledomains.com
   - Search for your domain

2. **Purchase**
   - Price: $10-40 (one-time)
   - Pay with crypto or credit card
   - No renewal fees!

3. **Configure IPFS**
   - In domain management
   - Add IPFS hash record
   - Points to your Web3.Storage CID

4. **Access**
   - Web3 browsers: `mathmint.crypto`
   - Gateway: `https://mathmint.crypto.gateway.unstoppable.com`

**Pros:**
✅ One-time payment (no renewals)  
✅ Multiple extension options  
✅ IPFS integration  
✅ Easy to use  

**Cons:**
❌ Costs money ($10-40)  
❌ Limited browser support  
❌ Requires gateway for most users  

---

## 🆓 Option 6: Free Traditional DNS with DNSLink

Use free DNS providers with DNSLink to point to IPFS - **Technical, Not Recommended**

### Free DNS Providers
- **Freenom** - .tk, .ml, .ga, .cf, .gq domains (free but unreliable)
- **Afraid.org** - Free subdomains
- **Duck DNS** - Free dynamic DNS

### Setup with DNSLink (Example with Afraid.org)

1. **Get Free Subdomain**
   - Sign up at https://freedns.afraid.org
   - Get subdomain like `mathmint.mooo.com`

2. **Add DNSLink Record**
   - Add TXT record:
     - Name: `_dnslink.mathmint`
     - Value: `dnslink=/ipfs/[YOUR-CID]`

3. **Access via IPFS Gateway**
   - URL: `https://mathmint.mooo.com.ipfs.dweb.link`

**Pros:**
✅ Free  
✅ Traditional DNS  

**Cons:**
❌ Unreliable (free domains can be revoked)  
❌ Complex setup  
❌ Poor reputation (.tk domains)  
❌ Need IPFS gateway for access  
❌ Not recommended for production  

---

## 📊 Comparison Table

| Option | Cost | Setup | IPFS Native | Browser Support | Recommended |
|--------|------|-------|-------------|-----------------|-------------|
| **Fleek subdomain** | FREE | ⭐⭐⭐⭐⭐ Easy | ✅ Yes | 🌐 All | ✅ Best Free |
| **GitHub Pages** | FREE | ⭐⭐⭐⭐ Easy | ❌ No | 🌐 All | ✅ Good |
| **Vercel** | FREE | ⭐⭐⭐⭐ Easy | ❌ No | 🌐 All | ✅ Good |
| **ENS .eth** | $15-70/yr | ⭐⭐⭐ Medium | ✅ Yes | 🔷 Web3 + Gateway | ⭐ Best Web3 |
| **Unstoppable** | $10-40 once | ⭐⭐⭐ Medium | ✅ Yes | 🔷 Web3 + Gateway | ⭐ Good Web3 |
| **Free DNS** | FREE | ⭐⭐ Hard | ⚠️ With DNSLink | 🌐 Gateway | ❌ Not Recommended |

## 🎯 Recommendations by Use Case

### For Testing & Learning (Right Now)
→ **Fleek.co Free Subdomain**
- Instant setup
- No cost
- Real IPFS hosting
- URL: `mathmint-quiz.on.fleek.co`

### For Hackathon/Demo
→ **Fleek.co** or **Vercel**
- Professional appearance
- Fast setup
- Reliable
- No cost

### For Open Source Project
→ **GitHub Pages**
- Great for open source
- Easy to share code
- URL: `yourusername.github.io/mathmint-quiz`

### For Production Web3 App
→ **ENS .eth Domain**
- True Web3 identity
- IPFS native
- You own it (NFT)
- Cost: ~$15-70 first year

### For Personal Brand
→ **Buy Custom Domain** + **Point to IPFS**
- Purchase: namecheap.com, name.com ($10/year)
- Use Cloudflare DNS (free)
- Add DNSLink to point to IPFS
- Most professional

## 🚀 Quick Start: Fleek.co Setup (5 Minutes)

Let's set up the easiest free option right now:

### Step-by-Step: Fleek Deployment

1. **Sign Up**
   ```
   Visit: https://fleek.co
   Click "Start Building"
   Sign up with GitHub (recommended)
   ```

2. **Create New Site**
   ```
   Dashboard → "Add New Site"
   Choose: "Upload"
   ```

3. **Upload Your Demo**
   ```
   Upload: /app/demo/demo.html
   Or rename it to: index.html (for root access)
   ```

4. **Get Your Free URL**
   ```
   Instant deployment!
   URL: https://[auto-generated].on.fleek.co
   
   Customize in settings to:
   https://mathmint-quiz.on.fleek.co
   ```

5. **Done! Share Your URL**
   ```
   Your demo is now live at:
   https://mathmint-quiz.on.fleek.co
   
   Plus IPFS URL:
   https://ipfs.fleek.co/ipfs/[CID]
   ```

## 📝 Script to Deploy to Fleek (Alternative Method)

If you prefer CLI:

```bash
# Install Fleek CLI
npm install -g @fleek-platform/cli

# Login
fleek login

# Deploy demo
cd /app/demo
fleek site deploy --dir . --name mathmint-quiz

# Get your URL
fleek site info
```

## 🔄 Updating Your Deployment

With Fleek + GitHub:
```bash
# Make changes to demo.html
vim /app/demo/demo.html

# Commit and push
git add .
git commit -m "Update quiz"
git push

# Fleek auto-deploys! 🎉
```

## 💡 Pro Tips

### Tip 1: Multiple Domains
You can have ALL of these at once:
- Fleek: `mathmint-quiz.on.fleek.co`
- GitHub: `yourusername.github.io/mathmint-quiz`
- IPFS: `https://[CID].ipfs.w3s.link`
- ENS (if you buy): `mathmint.eth`

### Tip 2: Custom Domain Later
Start with Fleek free subdomain, add custom domain when ready:
1. Buy domain ($10/year)
2. Point CNAME to Fleek
3. Done!

### Tip 3: ENS as Investment
If you get a good ENS name, it could increase in value!

## 🎉 Final Recommendation

**For MathMint Quiz, I recommend:**

### Phase 1: Today (FREE)
1. Deploy to **Fleek.co** → Get free subdomain
2. Share: `https://mathmint-quiz.on.fleek.co`
3. Also keep IPFS URL as backup

### Phase 2: Later (If Popular)
1. Purchase `.eth` domain → ~$20
2. Example: `mathmint.eth`
3. Point to IPFS content
4. True Web3 identity!

### Phase 3: Professional (Optional)
1. Buy custom domain → `mathmint.com`
2. Point to IPFS via Fleek
3. Best of both worlds!

## 🚀 Ready to Deploy?

```bash
# Quick Fleek deployment
1. Go to https://fleek.co
2. Sign up (free)
3. Upload /app/demo/demo.html
4. Get free URL: mathmint-quiz.on.fleek.co
5. Share with everyone! 🎉
```

**Total Time: 5 minutes**  
**Total Cost: $0** ✅

---

**Questions?**
- Fleek Docs: https://fleek.xyz/docs
- ENS Docs: https://docs.ens.domains
- IPFS Docs: https://docs.ipfs.tech

**Ready to get your free domain? Start with Fleek.co! 🚀**
