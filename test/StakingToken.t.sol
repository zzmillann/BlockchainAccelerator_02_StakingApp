// SPDX-License-Identifier: MIT

pragma solidity 0.8.38;
import "../src/StakingToken.sol";

import "../lib/openzeppelin-contracts/contracts/access/Ownable.sol";
import "../lib/forge-std/src/Test.sol";

contract StakingTokenTest is Test {
    StakingToken stakingtoken;
    address public addressToken = makeAddr("token"); // dirección de prueba para el token

    function setUp() public {
      
    stakingtoken = new StakingToken("AldiaToken", "ATK");

    }



    function testAssert() external {

        
    }
}
