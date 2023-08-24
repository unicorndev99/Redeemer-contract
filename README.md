# contracts

Redeemer contracts.

# Setup and Installation

First, copy .env.default and rename it to .env, then configure it for the network you want to deploy to.

```
npm install
npm run deploy-<network> // i.e. npm run deploy-polygon
npm run deploy-<network>-verify // verify deployed smart contracts
```
Consult package.json for more options

# Deployment

To deploy contracts, you will need several things:
1. A deployment wallet with enough Mainnet Ethereum, Rinkeby and/or Polygon/MATIC token to pay for the gas of deploying.
    Your best option is to download Metamask. Create a new Metamask wallet for this purpose so you can use the private keys for your signing authority.

 You can generate BIP39 mnemonics with Metamask (recommended) or here: 
 https://particl.github.io/bip39/bip39-standalone.html

The first step is to add your private keys to the .env file. You can export your private key from your Metamask wallet. Assuming you have one wallet with all of your deployment currency, this should look like this:

NOTE: STORE ALL MNEMONICS, ROOT/PRIVATE AND PUBLIC KEYS SOMEWHERE VERY SAFE!!!

```
.env
mainnet=a72ee7af443c3333e59d59a4273ce5a39a9f072a89fbc1cdbace0522197bf465
polygon=a72ee7af443c3333e59d59a4273ce5a39a9f072a89fbc1cdbace0522197bf465
testnet=a72ee7af443c3333e59d59a4273ce5a39a9f072a89fbc1cdbace0522197bf465

WebaverseGenesisPass=0x543D43F390b7d681513045e8a85707438c463d80
UpstreetLand=0x5B8c7D137517265B4A440b739BDa153884ED80bB
```

