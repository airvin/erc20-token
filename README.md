## HildiToken - an Ethereum ERC20 token

### Prerequisites
- Node and npm
- [Truffle](https://www.trufflesuite.com/docs/truffle/overview) installed globally - `npm install -g truffle`
- [Ganache](https://www.trufflesuite.com/ganache)
- [MetaMask](https://metamask.io/) - an Ethereum wallet for the browser
- An [Infura](https://infura.io) account
- Some Ether in an Ethereum network - either a local Ganache network, a testnet like [Kovan](https://faucet.kovan.network/) or [Rinkeby](https://www.rinkeby.io/#faucet), or the mainnet

### Setup
From within the directory run:
```
npm install
```
```
cp template.env .env
```

#### MetaMask
Find the twelve word mnemonic associated with your MetaMask account (Settings -> Security & Privacy -> Reveal seed phrase).
Copy the twelve word mnemonic into the `.env` file.

#### Infura
In Infura, create a new project.
Inside the project, select the network that you would like you deploy your smart contract to (e.g. mainnet, Kovan, Rinkeby).
Copy the `Project ID` into the `INFURA_API_KEY` in the `.env` file. 

#### Get some ether
You can deploy the smart contracts to a local Ethereum network, to a testnet or to the mainnet.
Wherever you deploy to will need to have some Ether in order to pay the gas cost associated with creating the contract. 

##### Local Ethereum network with Ganache
In terminal from within the directory, run `truffle develop` - simple as that!
Alternatively, open the Ganache application and click Quickstart.

##### Kovan testnet
Get some Ether in the Kovan testnet by visiting https://faucet.kovan.network/ and signing in with your GitHub credentials.

##### Rinkeby testnet
Get some Ether in the Rinkeby testnet by visiting https://www.rinkeby.io/#faucet and posting your wallet address (from MetaMask) in a tweet or facebook post and copying the link to Rinkeby.

### Edit the token details
If you want to change any of the details (e.g. the token name, symbol, or how many tokens are minted), you can do so in `contracts/HildiToken.sol`.

### Compile the smart contracts
```
truffle compile
```
### Test the smart contracts
```
truffle test
```
### Deploy the smart contracts
```
truffle migrate --network (development|kovan|rinkeby|mainnet)
```
Where you select one of the options in the command above.

Lots of information will be displayed in the terminal, including contract ID, transaction ID, gas price, etc. 
You can then look up the transactions and the contract in Etherscan - either in the [mainnet](https://etherscan.io/), [Kovan](https://kovan.etherscan.io/), or [Rinkeby](https://rinkeby.etherscan.io/).

### Use your tokens
In MetaMask, select the Ethereum network that you deployed the smart contracts to from the dropdown. 
Then click the burger menu in the top left and click "Add Token".
Click "Custom Token" and copy in the contract address. 
The token symbol and decimals of precision should auto-complete. 
Click Next.
After selecting the token, click "Send" to transfer tokens to another person. 
Copy in the account address of the person you want to send tokens to. 
Type in the amount of tokens to send, and click Next. 
After confirming the transaction you should see that your token balance has decreased. 
You can look up the transaction on Etherscan for more details. 
