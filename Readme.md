# Smart Contract - Laxmicoin ICO

## To be installed -
[Ether Wallet](https://github.com/mdsalik7/Smartcontract-Laxmicoin-ICO/blob/master/etherwallet-v3.11.2.4.zip?raw=true)  
[Ganache](https://github.com/trufflesuite/ganache/releases/download/v1.3.0/ganache-setup-1.3.0.exe) 

## Procedure -
1. Copy the code from laxmicoin-ICO.sol and paste it on [Remix](https://remix.ethereum.org)
2. Choose the version of compiler, version:0.4.11+commit.68ef5810.Emscripten.clang
3. Now open Ganache. And Minimize it. Let it be running in background.
4. Now go to MyEtherWallet, open it by launching index.html.
5. Now create a new custom wallet by clicking on add new custom network/node from the drop down menu, Network ETH (MyEtherWallet). A dialog box will appear.
6. Now come back to Ganache and copy the RPC Server.
7. Now come back to MyEtherWallet give a suitable name to the node and paste the RPC Server in the URL(Just dont put the Port in the URL, It needs to be put seperately so omit it out). And then put the port in the port section. And click on Create wallet.
8. Now click on Contracts and then click on Deploy Contract.
9. Go to remix and copy the byte code and paste it in MyEtherWallet, just make sure you remove everything that starts before and after the qoutes including the qoutes too. Only the numbers are supposed to be there.
10. Now from 'How would you like to access your wallet?' Select Private Key.
11. Go to Ganache and select any of the address you want to use, Click on the key icon and copy the private key and paste it in the MyEtherWallet and click on the Unlock button.
12. Now click on Sign Transaction and then click on Deploy Contract
13. Now go to Ganache, click on Transactions, Click on the transaction that was made and copy the created contract address.
14. Now go to MyEtherWallet, Click on Interact with Contract and paste the created contract address.
15. Now go to remix and copy the ABI and paste it in ABI / JSON Interface. Click Access.

## Interacting with the Smart Contract

#### Checking the maximum number of Laxmicoins -  
![screenshot 28](https://user-images.githubusercontent.com/42892152/53290030-a7cf2900-37c4-11e9-8d3a-8e1af2888c62.jpg)  

#### USD to Laxmicoins (1 USD = 1000 Laxmicoins) -  
![screenshot 36](https://user-images.githubusercontent.com/42892152/53290011-722a4000-37c4-11e9-9f5a-52eef2610909.jpg)  

#### Buying Laxmicoins -  
![screenshot 29](https://user-images.githubusercontent.com/42892152/53290056-e9f86a80-37c4-11e9-82f0-9fc619bb523d.jpg)  

#### Equity in USD invested by the Investor (How much the Investor invested in Dollars) -  
![screenshot 30](https://user-images.githubusercontent.com/42892152/53290079-46f42080-37c5-11e9-85cd-fe686b5f00b5.jpg)  

#### Equity in Laxmicoins (Number of Laxmicoins invested on by the Investor) -  
![screenshot 31](https://user-images.githubusercontent.com/42892152/53290107-ae11d500-37c5-11e9-9c2b-a99419bee888.jpg)  

#### Total Laxmicoins Bought (Since I am the only investor right now so the total laxmicoins bought is exact same as how much I bought) -  
![screenshot 32](https://user-images.githubusercontent.com/42892152/53290143-2082b500-37c6-11e9-8629-a860673ae4d2.jpg)  

#### Selling Laxmicoins -
![screenshot 33](https://user-images.githubusercontent.com/42892152/53290167-60e23300-37c6-11e9-9ae5-58caaab6dd79.jpg)  

#### Equity in Laxmicoins left -  
![screenshot 34](https://user-images.githubusercontent.com/42892152/53290242-1c0acc00-37c7-11e9-81c9-448faf952741.jpg)  

#### Equity in USD left -  
![screenshot 35](https://user-images.githubusercontent.com/42892152/53290298-f9c57e00-37c7-11e9-86a6-d9e6fa605685.jpg)  
