// SPDX-License-Identifier: MIT

pragma solidity 0.8.38;

import "../lib/openzeppelin-contracts/contracts/access/Ownable.sol";
import "../lib/openzeppelin-contracts/contracts/token/ERC20/ERC20.sol";

contract StakingToken is ERC20 {
    
    constructor(string memory _name, string memory _sigles) ERC20(_name, _sigles) {}

    function mint(uint256 cantidad_) external {
        _mint(msg.sender, cantidad_);
    }
}
