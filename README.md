# JRToken

This Solidity program demonstrates the implementation of a basic ERC20 token, **JRToken** (symbol: JRT). It allows the owner to mint tokens and enables users to burn their tokens. The contract is designed using the OpenZeppelin library to ensure it follows standard ERC20 token functionality and provides ownership control over minting.

## Description

The **JRToken** contract is a basic ERC20 token that allows users to interact with it in the following ways:

- **Mint Tokens**: The contract owner can mint new tokens to any address.
- **Burn Tokens**: Any user can burn their own tokens, reducing the total supply.
  
This contract uses OpenZeppelin's ERC20 standard to implement basic token functionality and the Ownable contract to restrict minting to the owner.

## Features

- **Mint Tokens**: Only the contract owner can mint tokens to a specified address.
- **Burn Tokens**: Any user can burn their own tokens, reducing their balance and the total supply.
- **Initial Supply**: The contract owner receives an initial supply of 100 tokens upon deployment.

## Getting Started

### Installing

To use or deploy the contract, follow these steps:

1. **Open Remix IDE**: Use the Remix IDE (an online Solidity development environment) to interact with the contract.
2. **Create a New File**: Create a new file in Remix and save it with a `.sol` extension (e.g., `JRToken.sol`).
3. **Copy and Paste the Code**: Copy and paste the following code into your new file:

```solidity
pragma solidity 0.8.26;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v4.9.2/contracts/token/ERC20/ERC20.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v4.9.2/contracts/access/Ownable.sol";

contract myToken is ERC20, Ownable {
    string private constant _tokenName = "JRToken";
    string private constant _acronym = "JRT";

    constructor() ERC20(_tokenName, _acronym) {
        _mint(msg.sender, 100 * 10**18);
    }

    function mint(address to, uint amount) external onlyOwner {
        _mint(to, amount);
    }

    function burn(uint amount) external {
        _burn(msg.sender, amount);
    }
}
```

### Executing the Program
1. Compile the Code:
- Click on the Solidity Compiler tab in the left sidebar.
- Set the compiler version to 0.8.26.
- Click the Compile JRToken.sol button.
2. Deploy the Contract:
- Click on the Deploy & Run Transactions tab in the left sidebar.
- Select the Injected Provider - MetaMask environment if using MetaMask, or choose Remix VM for a local environment.
- Deploy the contract by clicking the Deploy button.
3. Interact with the Contract:
Once the contract is deployed, you can interact with it using the Remix interface.
- Mint Tokens:
  - The owner can mint tokens to any address using the mint(address to, uint amount) function.
- Burn Tokens:
  - Any user can burn their own tokens by calling the burn(uint amount) function.
 
### Example Use Case:
1. Mint Tokens: The contract owner mints 100 tokens to their own address using the mint() function.
2. Burn Tokens: A user burns 50 tokens using the burn() function, reducing their balance and the total supply of the token.
3. Transfer Tokens: Any user can transfer tokens to another address using the standard ERC20 transfer() function.

### Authors
Metacrafter Joshua Renniel Pineda

### License
This project is licensed under the MIT License - see the LICENSE.md file for details.
