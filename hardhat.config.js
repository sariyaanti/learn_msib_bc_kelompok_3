require("@nomicfoundation/hardhat-toolbox");
//require('hardhat-ethernal');

/** @type import('hardhat/config').HardhatUserConfig */
module.exports = {
  hardhat: {
    url: "http://localhost:8545",
    accounts: ["0xac0974bec39a17e36ba4a6b4d238ff944bacb478cbed5efcae784d7bf4f2ff80"]
  },
  mumbai_testnet: {
    url: "https://rpc-mumbai.maticvigil.com",
    accounts: ["0xac0974bec39a17e36ba4a6b4d238ff944bacb478cbed5efcae784d7bf4f2ff80"]
  },
  solidity: {
    version: "0.8.19",
    settings: {
      optimizer: {
        enabled: true,
        runs: 200
      }
    }
  },
  // ethernal: {
  //  apiToken: "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJmaXJlYmFzZVVzZXJJZCI6Ink3eDlVQjdIeldWOFE2R2IwQThUTTBvM3FzejIiLCJhcGlLZXkiOiJCQ1NIRzk3LVhXTjRUMVotTkZRQjRRSy0yMzFZNEFLXHUwMDAxIiwiaWF0IjoxNjk2NzgzNzY5fQ.FKZvoVa5jn7LCc5nzKAxaQWk1w0nsLjy8kbL5fd7-9c"
  // }
};
