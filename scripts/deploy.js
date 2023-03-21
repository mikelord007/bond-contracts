import { ethers, BigNumber } from 'ethers';
import { time } from "@nomicfoundation/hardhat-network-helpers";

const readStorage = async () => {
  
try {
    const provider = new ethers.providers.Web3Provider(web3Provider);
    // const slot =  BigNumber.from(0x360894a13ba1a3210667c828492db98dca3e2076cc3735a920a3ca505d382bbc)
    // const storage = await provider.send("evm_mine", 20000000000);
    // console.log("storage: ",storage)

    const a = await await provider.send("evm_increaseTime", [1679788800] );
    console.log(a)
}
catch(e) {console.log(e)}
}

readStorage();