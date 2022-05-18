SPDX-License-Identifier MIT
pragma solidity ^0.8.7;

contract StakingPool {
    uint immutable unstakeInterval;
    mapping(address = uint) public stakes;
    mapping(address = uint) public unstakeAmountRequested;
    mapping(address = uint) public unstakeRequesTime;

    constructor (uint _unstakeInterval) {
        unstakeInterval = _unstakeInterval;
    }

    function stake(uint _stake) external {
        stakes[msg.sender] += _stake;
    }

    function unstakeRequest(uint _amount) external {
        require(stakes[msg.sender]  _amount, Insufficient stake);
        require(unstakeAmountRequested[msg.sender] == 0, Unstake already requested);

        unstakeAmountRequested[msg.sender] = _amount;
        unstakeRequesTime[msg.sender] = block.timestamp;
    }

    function unstake() external {
        require(unstakeAmountRequested[msg.sender]  0, Unstake not requested);
        require(stakes[msg.sender]  unstakeAmountRequested[msg.sender], Insufficient stake);
        require(unstakeRequesTime[msg.sender] + unstakeInterval  block.timestamp, Unstake request period has not passed);

        stakes[msg.sender] -= unstakeAmountRequested[msg.sender];
        unstakeAmountRequested[msg.sender] = 0;
    }
}