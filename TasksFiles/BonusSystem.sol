// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract BonusCalculator {
    mapping(address => uint) public bonuses;

    function calculateBonus(uint _deposit, uint _percent) external {
        bonuses[msg.sender] += (_deposit * _percent) / 100;
    }
}

contract BonusSystem {
    mapping(address => uint) public bonuses;

    function deposit(address _calculatorAdress, uint _deposit, uint _percent) external {
        (bool success, ) = _calculatorAdress.delegatecall(
            abi.encodeWithSelector(BonusCalculator.calculateBonus.selector, _deposit, _percent)
        );

        require(success, "bonus calculation failed");
    }
}