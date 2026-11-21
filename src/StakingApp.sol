// SPDX-License-Identifier: MIT

pragma solidity ^0.8.20;


import "../lib/openzeppelin-contracts/contracts/access/Ownable.sol";
import "../lib/openzeppelin-contracts/contracts/token/ERC20/ERC20.sol";

contract StakingApp is Ownable  {
    address public addressToken;

    constructor(address _addressToken ) Ownable(msg.sender) {
        
        addressToken = _addressToken;
    }
}
