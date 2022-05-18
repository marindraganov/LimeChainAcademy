// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract Orders {
    function orderBurger() external pure returns (string memory) {
        return "burger";
    }

    function orderPizza() external pure returns  (string memory) {
        return "pizza";
    }

    function getBurgerOrderData() external pure returns  (bytes memory) {
        return abi.encodeWithSelector(this.orderBurger.selector);
    }

    function getPizzaOrderData() external pure returns  (bytes memory) {
        return abi.encodeWithSelector(this.orderPizza.selector);
    }
}

contract MultiCall {
    function multiCall (address[] calldata targets, bytes[] calldata data)
        external returns (bytes[] memory)
    {
        require(targets.length == data.length, "target length != data length");
        bytes[] memory results = new bytes[](data.length);

        for (uint i; i < targets.length; i++) {
            (bool success, bytes memory result) = targets[i].call(data[i]);
            require(success, "call failed");
            results[i] = result;
        }

        return results;
    }
}