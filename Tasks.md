### Intro to Blockchain
*What is a transaction?* - Transaction is an action or bundle of actions. Transactions are our way to apply
changes over the blockchain.

*What is the approximate time of every Ethereum transaction?* - It is hard to say because it depends on many factors. Block size, the interval
between blocks, the number of the transactions competing for execution, priority of the transaction based on different fees or tips are
the most important factors.

*What is a node?* - A node is one of the many actors(also nodes) in the network that process transactions.
Processing transactions is basically validating them according to the blockchain rules and the current blockchain state.
The nodes are also bundling transactions and submitting them to the network as blocks. The rules for submitting and validating the
blocks are called consensus algorithms.

### Intro to Ethereum
*1. Note down your wallet address* - 0x333eb86aa862a7a5a98922647501Ac5b9b5C21D4
*2. Create another wallet in your metamask* - 0xc950c089C58E370f3e8fE0E67E6c7f9e858BA479
*3. Switch to Ropsten network*
*4. Use the following faucet to request some ETH into one of your wallets https://faucet.dimensions.network/*
*5. Use the ropsten version of Etherscan to search for your address and see its transactions and balance https://ropsten.etherscan.io/*
*6. Use Metamask to send half of the ETH which you received to your other wallet. Note down your transaction hash.* - 0xda2abff92790eb086ca9c3dfaf7ea0d8ea8fd2c6cbe880d298b1e4776525bc1e
*7. Search your transfer transaction hash in ropsten Etherscan.* - https://ropsten.etherscan.io/tx/0xda2abff92790eb086ca9c3dfaf7ea0d8ea8fd2c6cbe880d298b1e4776525bc1e

### Solidity & Smart Contracts 101

#### Learning Solidity

*What is delegatecall?* - delegatecall executes a function from an onether contract in the context of current contract.
Could be used to inject different logic in the contract. https://github.com/marindraganov/LimeChainAcademy/blob/main/TasksFiles/BonusSystem.sol

*What is multicall?* - Multicall is function that call multiple functions. We can use to batch two or more function calls in a transaction.
https://github.com/marindraganov/LimeChainAcademy/blob/main/TasksFiles/Orders.sol

*What is time lock?* - Timelock is a mechanism to queue transactions and execute them with a delay.
https://github.com/marindraganov/LimeChainAcademy/blob/main/TasksFiles/StakingPool.sol

#### Hardhat

*Create a Hardhat project for your Book Library contracts and put it in a Github repository.* - https://github.com/marindraganov/Library_WithTests
*Read about OpenZeppelin and modify the contract to use OpenZeppelin Ownable instead of your own* - done
*Modify the scripts and deploy them on Hardhat local node.*  - done
*Add configuration for deployment on Rinkeby. Note and save your deployed contract address.*  - 0x5A725E734279BAFaA159BfAD0384f364De851881
*Implement testing scenarios for the Book Library contract* - done
*Think about more use cases to cover in the tests* - done
*Run Solidity Coverage Report* - done
*Try to hit 100% coverage for your Smart Contract* - done
*Create Hardhat tasks for deployment* - done
*Create subtasks for printing valuable info after deployment* - done
*Read any sensitive data (account private keys, API key and etc. from .env file)*  - done
*Add to the deployment tasks subtasks for Etherscan verification of the contracts* - done