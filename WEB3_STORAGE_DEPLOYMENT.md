# Deploying MathMint Quiz to Web3.Storage

This guide explains how to deploy your demo.html to Web3.Storage (IPFS) for decentralized hosting.

## What is Web3.Storage?

Web3.Storage is a service that stores data on IPFS (InterPlanetary File System) and Filecoin, making your application truly decentralized and accessible from anywhere without traditional hosting.

## Prerequisites

- Node.js and npm/yarn installed
- A Web3.Storage account (free tier available)
- Your MathMint Quiz demo.html file ready

## Step 1: Get Web3.Storage API Token

1. Visit [web3.storage](https://web3.storage)
2. Sign up for a free account
3. Navigate to your account dashboard
4. Create a new API token
5. Copy and save your token securely

## Step 2: Install Web3.Storage CLI

You have two options:

### Option A: Using CLI (Easiest)

```bash
npm install -g @web3-storage/w3cli
```

### Option B: Using Node.js Script

```bash
npm install web3.storage
```

## Step 3: Deploy Using CLI (Recommended)

1. **Set your API token as environment variable:**

```bash
export WEB3STORAGE_TOKEN="your-api-token-here"
```

2. **Navigate to your demo directory:**

```bash
cd /app/demo
```

3. **Upload your demo.html:**

```bash
w3 put demo.html --name "MathMint Quiz Demo"
```

4. **The CLI will return a CID (Content Identifier):**

```
⁂ Stored 1 file
⁂ https://bafybeigdyrzt5sfp7udm7hu76uh7y26nf3efuylqabf3oclgtqy55fbzdi.ipfs.w3s.link
```

5. **Access your deployed app at:**

```
https://<YOUR-CID>.ipfs.w3s.link
```

OR

```
https://<YOUR-CID>.ipfs.dweb.link
```

## Step 4: Deploy Using Node.js Script (Alternative)

Create a deployment script `deploy-to-web3.js`:

```javascript
import { Web3Storage, File } from 'web3.storage';
import fs from 'fs';
import path from 'path';

function getAccessToken() {
  return process.env.WEB3STORAGE_TOKEN;
}

function makeStorageClient() {
  return new Web3Storage({ token: getAccessToken() });
}

async function deployDemo() {
  const client = makeStorageClient();
  
  // Read the demo.html file
  const demoPath = path.join(process.cwd(), 'demo', 'demo.html');
  const content = fs.readFileSync(demoPath);
  
  // Create File object
  const files = [
    new File([content], 'index.html', { type: 'text/html' })
  ];
  
  console.log('📤 Uploading to Web3.Storage...');
  const cid = await client.put(files, { 
    name: 'MathMint Quiz Demo',
    maxRetries: 3 
  });
  
  console.log('✅ Deployed successfully!');
  console.log('📦 CID:', cid);
  console.log('🌐 Access at:');
  console.log(`   https://${cid}.ipfs.w3s.link`);
  console.log(`   https://${cid}.ipfs.dweb.link`);
  console.log(`   https://w3s.link/ipfs/${cid}`);
  
  return cid;
}

deployDemo().catch(console.error);
```

Run the script:

```bash
export WEB3STORAGE_TOKEN="your-token"
node deploy-to-web3.js
```

## Step 5: Share Your Decentralized App

Once deployed, you can share your app using any of these URLs:

- **w3s.link gateway:** `https://<CID>.ipfs.w3s.link`
- **dweb.link gateway:** `https://<CID>.ipfs.dweb.link`
- **Direct IPFS:** `ipfs://<CID>`

### Example URLs:

If your CID is `bafybeigdyrzt5sfp7udm7hu76uh7y26nf3efuylqabf3oclgtqy55fbzdi`:

```
https://bafybeigdyrzt5sfp7udm7hu76uh7y26nf3efuylqabf3oclgtqy55fbzdi.ipfs.w3s.link
https://bafybeigdyrzt5sfp7udm7hu76uh7y26nf3efuylqabf3oclgtqy55fbzdi.ipfs.dweb.link
```

## Updating Your Deployment

To update your demo:

1. Make changes to demo.html
2. Re-run the upload command
3. You'll get a new CID (IPFS is content-addressed, so changes create new CIDs)
4. Share the new CID with users

## Benefits of Web3.Storage Deployment

✅ **Decentralized:** No single point of failure
✅ **Permanent:** Content is stored on IPFS/Filecoin
✅ **Fast:** Served from multiple IPFS gateways worldwide
✅ **Free Tier:** Generous free storage limits
✅ **Censorship-Resistant:** Cannot be taken down by any single entity
✅ **Verifiable:** Content-addressed (CID ensures integrity)

## Troubleshooting

### Token Not Recognized

```bash
# Make sure token is set correctly
echo $WEB3STORAGE_TOKEN
```

### Upload Fails

- Check your internet connection
- Verify your API token is valid
- Try again (network issues are common with IPFS)

### Gateway Not Loading

- Try different gateways (w3s.link, dweb.link, ipfs.io)
- Wait a few minutes for content to propagate across IPFS network
- Some gateways may be slow or temporarily down

## Advanced: CI/CD Deployment

You can automate deployment using GitHub Actions:

```yaml
name: Deploy to Web3.Storage

on:
  push:
    branches: [ main ]

jobs:
  deploy:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v3
      - uses: web3-storage/add-to-web3@v3
        id: web3
        with:
          web3_token: ${{ secrets.WEB3STORAGE_TOKEN }}
          path_to_add: 'demo/demo.html'
      - run: echo "CID is ${{ steps.web3.outputs.cid }}"
```

## Cost

- **Free Tier:** Up to 5GB storage
- **Paid Plans:** Available for larger storage needs
- **No bandwidth charges:** All egress traffic is free

## Next Steps

1. Deploy your demo.html to Web3.Storage
2. Test the deployed version with MetaMask
3. Share the IPFS URL with others
4. Consider setting up a custom domain pointing to your CID (using ENS or DNSLink)

## Support

- Web3.Storage Docs: https://web3.storage/docs
- IPFS Docs: https://docs.ipfs.tech
- Community: https://discuss.ipfs.tech

---

**Note:** Your smart contracts are already deployed on Mezo testnet, so the demo.html just needs to be hosted on IPFS to be fully decentralized!
