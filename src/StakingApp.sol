// SPDX-License-Identifier: MIT

pragma solidity ^0.8.20;


import "../lib/openzeppelin-contracts/contracts/access/Ownable.sol";
import "../lib/openzeppelin-contracts/contracts/token/ERC20/ERC20.sol";


//Custom Errors

contract StakingApp is Ownable  {

    //Variables
     
    address public addressToken;
    uint256 public stakingPeriod;


    //Eventos
    event ChangeStakingPeriod ( uint256 NewStakingPeriodAfter);

    //Constructor
    constructor(address _addressToken, address _owner , uint256 _stakingPeriod ) Ownable(_owner) {
        
        addressToken = _addressToken;
        stakingPeriod = _stakingPeriod;
    }


    //External Functions

    function changeStakingPeriod (uint256 _newStakingPeriod) external  onlyOwner {
        
        stakingPeriod = _newStakingPeriod;
        
        emit ChangeStakingPeriod (_newStakingPeriod);

    }






    //Internal Functions

}
