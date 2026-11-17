// SPDX-License-Identifier: MIT

pragma solidity 0.8.38;

import "../lib/openzeppelin-contracts/contracts/access/Ownable.sol";

contract StakingApp is Ownable {
    address public addressToken;

    constructor(address _addressToken, address _owner) Ownable(_owner) {
        addressToken = _addressToken;
    }

    function showOwnerAddress () public returns(address){
        addressToken = owner();

        return addressToken;
    }

}
