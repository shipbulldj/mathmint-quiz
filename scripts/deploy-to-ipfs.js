#!/usr/bin/env node

/**
 * Deploy MathMint Quiz demo.html to Web3.Storage (IPFS)
 * 
 * Prerequisites:
 * 1. npm install web3.storage
 * 2. export WEB3STORAGE_TOKEN="your-token"
 * 3. Get token from https://web3.storage
 * 
 * Usage:
 * node scripts/deploy-to-ipfs.js
 */

import { Web3Storage, File } from 'web3.storage';
import fs from 'fs';
import path from 'path';
import { fileURLToPath } from 'url';

const __filename = fileURLToPath(import.meta.url);
const __dirname = path.dirname(__filename);

// Color codes for terminal output
const colors = {
  reset: '\x1b[0m',
  bright: '\x1b[1m',
  green: '\x1b[32m',
  blue: '\x1b[34m',
  yellow: '\x1b[33m',
  red: '\x1b[31m',
  cyan: '\x1b[36m'
};

function getAccessToken() {
  const token = process.env.WEB3STORAGE_TOKEN;
  if (!token) {
    console.error(`${colors.red}❌ Error: WEB3STORAGE_TOKEN environment variable not set${colors.reset}`);
    console.log(`\n${colors.yellow}To fix this:${colors.reset}`);
    console.log(`1. Sign up at https://web3.storage`);
    console.log(`2. Create an API token`);
    console.log(`3. Run: export WEB3STORAGE_TOKEN="your-token-here"`);
    console.log(`4. Try again: node scripts/deploy-to-ipfs.js\n`);
    process.exit(1);
  }
  return token;
}

function makeStorageClient() {
  return new Web3Storage({ token: getAccessToken() });
}

async function getFileSize(filePath) {
  const stats = fs.statSync(filePath);
  const sizeInBytes = stats.size;
  const sizeInKB = (sizeInBytes / 1024).toFixed(2);
  return { bytes: sizeInBytes, kb: sizeInKB };
}

async function deployDemo() {
  console.log(`\n${colors.bright}${colors.cyan}🚀 MathMint Quiz - Web3.Storage Deployment${colors.reset}\n`);
  
  try {
    // Initialize client
    console.log(`${colors.blue}📡 Connecting to Web3.Storage...${colors.reset}`);
    const client = makeStorageClient();
    console.log(`${colors.green}✓ Connected${colors.reset}\n`);
    
    // Read the demo.html file
    const demoPath = path.join(__dirname, '..', 'demo', 'demo.html');
    
    if (!fs.existsSync(demoPath)) {
      throw new Error(`demo.html not found at ${demoPath}`);
    }
    
    const fileSize = await getFileSize(demoPath);
    console.log(`${colors.blue}📄 File: demo.html (${fileSize.kb} KB)${colors.reset}`);
    
    const content = fs.readFileSync(demoPath);
    
    // Create File object (rename to index.html for proper IPFS gateway routing)
    const files = [
      new File([content], 'index.html', { type: 'text/html' })
    ];
    
    console.log(`${colors.blue}📤 Uploading to IPFS...${colors.reset}`);
    
    // Upload with retry logic
    const cid = await client.put(files, { 
      name: 'MathMint Quiz Demo v1',
      maxRetries: 3,
      wrapWithDirectory: false
    });
    
    console.log(`${colors.green}${colors.bright}\n✅ Deployment Successful!${colors.reset}\n`);
    console.log(`${colors.cyan}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${colors.reset}\n`);
    
    // Display CID
    console.log(`${colors.bright}📦 Content Identifier (CID):${colors.reset}`);
    console.log(`   ${colors.green}${cid}${colors.reset}\n`);
    
    // Display access URLs
    console.log(`${colors.bright}🌐 Access Your Demo At:${colors.reset}\n`);
    
    const urls = [
      `https://${cid}.ipfs.w3s.link`,
      `https://${cid}.ipfs.dweb.link`,
      `https://w3s.link/ipfs/${cid}`,
      `ipfs://${cid}`
    ];
    
    urls.forEach((url, index) => {
      console.log(`   ${index + 1}. ${colors.blue}${url}${colors.reset}`);
    });
    
    console.log(`\n${colors.cyan}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${colors.reset}\n`);
    
    // Display next steps
    console.log(`${colors.bright}📋 Next Steps:${colors.reset}\n`);
    console.log(`   ${colors.green}1.${colors.reset} Test the demo in your browser`);
    console.log(`   ${colors.green}2.${colors.reset} Connect MetaMask to Mezo testnet`);
    console.log(`   ${colors.green}3.${colors.reset} Get test tBTC from faucet.mezo.org`);
    console.log(`   ${colors.green}4.${colors.reset} Play the quiz and submit scores!`);
    console.log(`   ${colors.green}5.${colors.reset} Share the URL with others\n`);
    
    // Display info
    console.log(`${colors.yellow}ℹ️  Info:${colors.reset}`);
    console.log(`   • Your demo is now permanently on IPFS`);
    console.log(`   • It may take 1-2 minutes to propagate across gateways`);
    console.log(`   • If one gateway is slow, try another from the list above`);
    console.log(`   • The CID will never change unless you upload a new version\n`);
    
    // Save CID to file
    const cidFilePath = path.join(__dirname, '..', 'DEPLOYMENT_CID.txt');
    const timestamp = new Date().toISOString();
    const cidInfo = `MathMint Quiz Demo - IPFS Deployment\n\nDeployed: ${timestamp}\nCID: ${cid}\n\nAccess URLs:\n${urls.join('\n')}\n`;
    fs.writeFileSync(cidFilePath, cidInfo);
    console.log(`${colors.green}✓ CID saved to DEPLOYMENT_CID.txt${colors.reset}\n`);
    
    return cid;
    
  } catch (error) {
    console.error(`\n${colors.red}${colors.bright}❌ Deployment Failed${colors.reset}\n`);
    console.error(`${colors.red}Error: ${error.message}${colors.reset}\n`);
    
    if (error.message.includes('Unauthorized')) {
      console.log(`${colors.yellow}Tip: Check your WEB3STORAGE_TOKEN is valid${colors.reset}\n`);
    } else if (error.message.includes('network')) {
      console.log(`${colors.yellow}Tip: Check your internet connection and try again${colors.reset}\n`);
    }
    
    process.exit(1);
  }
}

// Run deployment
console.log(`${colors.cyan}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${colors.reset}`);
deployDemo().catch(console.error);
