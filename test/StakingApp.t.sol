// SPDX-License-Identifier: MIT

pragma solidity 0.8.38;

import "../lib/openzeppelin-contracts/contracts/access/Ownable.sol";
import "../lib/forge-std/src/Test.sol";
import "../src/StakingApp.sol";

contract StakingAppTest is Test {
   
    StakingApp stakingapp;
    address public addressToken = makeAddr("token");   // dirección de prueba para el token


        function setUp() public  {
            
            stakingapp = new StakingApp(addressToken);

        }

    
   

}
