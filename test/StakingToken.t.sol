// SPDX-License-Identifier: MIT

pragma solidity ^0.8.20;

import "../src/StakingToken.sol";

import "../lib/openzeppelin-contracts/contracts/access/Ownable.sol";
import "../lib/forge-std/src/Test.sol";
import "../lib/openzeppelin-contracts/contracts/token/ERC20/IERC20.sol";

contract StakingTokenTest is Test {

    StakingToken stakingtoken;
    address randomAddress = makeAddr("Lucia");

    function setUp() public {
      
    stakingtoken = new StakingToken("AldiaToken", "ATK");

    }




    function testStakingTokenMinstsCorrectly()  public {

        vm.startPrank(randomAddress);

        uint balanceBefore= IERC20(address(stakingtoken)).balanceOf(randomAddress); // Vemos el balance de token que tenemos al principio

        uint256 amount = 1 ether; // Variable de la cantidad que vamos a mintear

        stakingtoken.mint(amount); // Minteamos esa cantidad

        uint balanceAfter = IERC20(address(stakingtoken)).balanceOf(randomAddress); // Vemos el balance de token que tenemos al 
        
        assert(balanceAfter - balanceBefore == amount); // Comprobamos que balance final - balance inicial es igual a la diferencia
                               
        vm.stopPrank();
    }
}
