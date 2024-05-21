//SPDX-License-Identifier: MIT
pragma solidity 0.8.20;
import {HorseStore} from "../../src/horseStoreV1/HorseStore.sol";
import {Test} from "forge-std/Test.sol";

abstract contract Base_TestV1 is Test {
    HorseStore horseStore;
    function setUp() public virtual {
        horseStore = new HorseStore();
    }

    function testReadValue() public {
        uint256 initialValue = horseStore.readNumberOfHorses();
        assertEq(initialValue, 0, "Initial value should be 0");
    }
}
