// SPDX-License-Identifier: MIT
// FEU Tech - Pineda, Joshua Renniel A - 202111212
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
