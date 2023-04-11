// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "https://raw.githubusercontent.com/OpenZeppelin/openzeppelin-contracts/master/contracts/access/Ownable.sol";
import "https://raw.githubusercontent.com/OpenZeppelin/openzeppelin-contracts/master/contracts/token/ERC20/ERC20.sol";

contract MyToken is ERC20, Ownable {
    constructor() ERC20("J Token", "Jt"){
        _mint(msg.sender, 1000 * 10 ** decimals() );
    }

    function mint(uint256 amount) public onlyOwner{
        _mint(msg.sender, amount * 10 ** decimals() );
    }

    function burn(uint256 amount) public onlyOwner{
        _burn(msg.sender, amount * 10 ** decimals() );
    }
}