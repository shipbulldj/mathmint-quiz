const hre = require("hardhat");
const fs = require("fs");
const path = require("path");

async function main() {
  console.log("🚀 Starting deployment to Mezo L2...");
  
  const [deployer] = await hre.ethers.getSigners();
  console.log("📝 Deploying contracts with account:", deployer.address);
  
  const balance = await hre.ethers.provider.getBalance(deployer.address);
  console.log("💰 Account balance:", hre.ethers.formatEther(balance), "tBTC");

  console.log("\n📦 Deploying QuizContract...");
  const QuizContract = await hre.ethers.getContractFactory("QuizContract");
  const quizContract = await QuizContract.deploy();
  await quizContract.waitForDeployment();
  const quizAddress = await quizContract.getAddress();
  console.log("✅ QuizContract deployed to:", quizAddress);

  console.log("\n📦 Deploying MathMintNFT...");
  const MathMintNFT = await hre.ethers.getContractFactory("MathMintNFT");
  const nftContract = await MathMintNFT.deploy(quizAddress);
  await nftContract.waitForDeployment();
  const nftAddress = await nftContract.getAddress();
  console.log("✅ MathMintNFT deployed to:", nftAddress);

  const deploymentInfo = {
    network: hre.network.name,
    quizContract: quizAddress,
    nftContract: nftAddress,
    deployer: deployer.address,
    timestamp: new Date().toISOString()
  };

  const deploymentsDir = path.join(__dirname, '../deployments');
  if (!fs.existsSync(deploymentsDir)) {
    fs.mkdirSync(deploymentsDir, { recursive: true });
  }

  fs.writeFileSync(
    path.join(deploymentsDir, `${hre.network.name}-latest.json`),
    JSON.stringify(deploymentInfo, null, 2)
  );

  console.log("\n🎉 Deployment completed successfully!");
  console.log("\n📋 Contract Addresses:");
  console.log("   QuizContract:", quizAddress);
  console.log("   MathMintNFT:", nftAddress);
}

main()
  .then(() => process.exit(0))
  .catch((error) => {
    console.error("❌ Deployment failed:", error);
    process.exit(1);
  });