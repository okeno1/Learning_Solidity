// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract HotelRoom{
    //vacant
    //occupied

    enum Statuses {Vacant, Occupied};
    Statuses currentStatus;

    address payable public owner;

    constructor(){
        owner = msg.sender;
        currentStatus = Statuses.Vacant;
    }

    modifier onlyWhileVacant{
        require(currentStatus == Statuses.Vacant, "Currently Occupied.");
        _;
    }

    function book() payable onlyWhileVacant {
        require(msg.value >= 2 ether,"Not enough Ether Provided.");  
        currentStatus = Statuses.Occupied;
        owner.transfer(msg.value);
    }

}
