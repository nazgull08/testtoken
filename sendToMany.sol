// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract Splitter {
    // state
    address owner;
    address[] private partners = [0x2DE4A5840c9D37ef014C31531D8dBdB5A8eAf8a0,0x2DE4A5840c9D37ef014C31531D8dBdB5A8eAf8a0,0x2DE4A5840c9D37ef014C31531D8dBdB5A8eAf8a0,0x2DE4A5840c9D37ef014C31531D8dBdB5A8eAf8a0,0x2DE4A5840c9D37ef014C31531D8dBdB5A8eAf8a0,0x2DE4A5840c9D37ef014C31531D8dBdB5A8eAf8a0,0x2DE4A5840c9D37ef014C31531D8dBdB5A8eAf8a0,0x2DE4A5840c9D37ef014C31531D8dBdB5A8eAf8a0,0x2DE4A5840c9D37ef014C31531D8dBdB5A8eAf8a0,0x2DE4A5840c9D37ef014C31531D8dBdB5A8eAf8a0,0x2DE4A5840c9D37ef014C31531D8dBdB5A8eAf8a0,0x2DE4A5840c9D37ef014C31531D8dBdB5A8eAf8a0,0x2DE4A5840c9D37ef014C31531D8dBdB5A8eAf8a0,0x2DE4A5840c9D37ef014C31531D8dBdB5A8eAf8a0,0x2DE4A5840c9D37ef014C31531D8dBdB5A8eAf8a0,0x2DE4A5840c9D37ef014C31531D8dBdB5A8eAf8a0,0x2DE4A5840c9D37ef014C31531D8dBdB5A8eAf8a0,0x2DE4A5840c9D37ef014C31531D8dBdB5A8eAf8a0,0x2DE4A5840c9D37ef014C31531D8dBdB5A8eAf8a0,0x2DE4A5840c9D37ef014C31531D8dBdB5A8eAf8a0,0x2DE4A5840c9D37ef014C31531D8dBdB5A8eAf8a0,0x2DE4A5840c9D37ef014C31531D8dBdB5A8eAf8a0,0x2DE4A5840c9D37ef014C31531D8dBdB5A8eAf8a0,0x2DE4A5840c9D37ef014C31531D8dBdB5A8eAf8a0,0x2DE4A5840c9D37ef014C31531D8dBdB5A8eAf8a0,0x2DE4A5840c9D37ef014C31531D8dBdB5A8eAf8a0,0x2DE4A5840c9D37ef014C31531D8dBdB5A8eAf8a0,0x2DE4A5840c9D37ef014C31531D8dBdB5A8eAf8a0,0x2DE4A5840c9D37ef014C31531D8dBdB5A8eAf8a0,0x2DE4A5840c9D37ef014C31531D8dBdB5A8eAf8a0,0x2DE4A5840c9D37ef014C31531D8dBdB5A8eAf8a0,0x2DE4A5840c9D37ef014C31531D8dBdB5A8eAf8a0,0x2DE4A5840c9D37ef014C31531D8dBdB5A8eAf8a0,0x2DE4A5840c9D37ef014C31531D8dBdB5A8eAf8a0,0x2DE4A5840c9D37ef014C31531D8dBdB5A8eAf8a0,0x2DE4A5840c9D37ef014C31531D8dBdB5A8eAf8a0,0x2DE4A5840c9D37ef014C31531D8dBdB5A8eAf8a0,0x2DE4A5840c9D37ef014C31531D8dBdB5A8eAf8a0,0x2DE4A5840c9D37ef014C31531D8dBdB5A8eAf8a0,0x2DE4A5840c9D37ef014C31531D8dBdB5A8eAf8a0,0x2DE4A5840c9D37ef014C31531D8dBdB5A8eAf8a0,0x2DE4A5840c9D37ef014C31531D8dBdB5A8eAf8a0,0x2DE4A5840c9D37ef014C31531D8dBdB5A8eAf8a0,0x2DE4A5840c9D37ef014C31531D8dBdB5A8eAf8a0,0x2DE4A5840c9D37ef014C31531D8dBdB5A8eAf8a0,0x2DE4A5840c9D37ef014C31531D8dBdB5A8eAf8a0,0x2DE4A5840c9D37ef014C31531D8dBdB5A8eAf8a0,0x2DE4A5840c9D37ef014C31531D8dBdB5A8eAf8a0,0x2DE4A5840c9D37ef014C31531D8dBdB5A8eAf8a0,0x2DE4A5840c9D37ef014C31531D8dBdB5A8eAf8a0,0x2DE4A5840c9D37ef014C31531D8dBdB5A8eAf8a0,0x2DE4A5840c9D37ef014C31531D8dBdB5A8eAf8a0,0x2DE4A5840c9D37ef014C31531D8dBdB5A8eAf8a0,0x2DE4A5840c9D37ef014C31531D8dBdB5A8eAf8a0,0x2DE4A5840c9D37ef014C31531D8dBdB5A8eAf8a0,0x2DE4A5840c9D37ef014C31531D8dBdB5A8eAf8a0,0x2DE4A5840c9D37ef014C31531D8dBdB5A8eAf8a0,0x2DE4A5840c9D37ef014C31531D8dBdB5A8eAf8a0,0x2DE4A5840c9D37ef014C31531D8dBdB5A8eAf8a0,0x2DE4A5840c9D37ef014C31531D8dBdB5A8eAf8a0,0x2DE4A5840c9D37ef014C31531D8dBdB5A8eAf8a0,0x2DE4A5840c9D37ef014C31531D8dBdB5A8eAf8a0,0x2DE4A5840c9D37ef014C31531D8dBdB5A8eAf8a0,0x2DE4A5840c9D37ef014C31531D8dBdB5A8eAf8a0,0x2DE4A5840c9D37ef014C31531D8dBdB5A8eAf8a0,0x2DE4A5840c9D37ef014C31531D8dBdB5A8eAf8a0,0x2DE4A5840c9D37ef014C31531D8dBdB5A8eAf8a0,0x2DE4A5840c9D37ef014C31531D8dBdB5A8eAf8a0,0x2DE4A5840c9D37ef014C31531D8dBdB5A8eAf8a0,0x2DE4A5840c9D37ef014C31531D8dBdB5A8eAf8a0,0x2DE4A5840c9D37ef014C31531D8dBdB5A8eAf8a0,0x2DE4A5840c9D37ef014C31531D8dBdB5A8eAf8a0,0x2DE4A5840c9D37ef014C31531D8dBdB5A8eAf8a0,0x2DE4A5840c9D37ef014C31531D8dBdB5A8eAf8a0,0x2DE4A5840c9D37ef014C31531D8dBdB5A8eAf8a0,0x2DE4A5840c9D37ef014C31531D8dBdB5A8eAf8a0,0x2DE4A5840c9D37ef014C31531D8dBdB5A8eAf8a0,0x2DE4A5840c9D37ef014C31531D8dBdB5A8eAf8a0,0x2DE4A5840c9D37ef014C31531D8dBdB5A8eAf8a0,0x2DE4A5840c9D37ef014C31531D8dBdB5A8eAf8a0,0x2DE4A5840c9D37ef014C31531D8dBdB5A8eAf8a0,0x2DE4A5840c9D37ef014C31531D8dBdB5A8eAf8a0,0x2DE4A5840c9D37ef014C31531D8dBdB5A8eAf8a0,0x2DE4A5840c9D37ef014C31531D8dBdB5A8eAf8a0,0x2DE4A5840c9D37ef014C31531D8dBdB5A8eAf8a0,0x2DE4A5840c9D37ef014C31531D8dBdB5A8eAf8a0,0x2DE4A5840c9D37ef014C31531D8dBdB5A8eAf8a0,0x2DE4A5840c9D37ef014C31531D8dBdB5A8eAf8a0,0x2DE4A5840c9D37ef014C31531D8dBdB5A8eAf8a0,0x2DE4A5840c9D37ef014C31531D8dBdB5A8eAf8a0,0x2DE4A5840c9D37ef014C31531D8dBdB5A8eAf8a0,0x2DE4A5840c9D37ef014C31531D8dBdB5A8eAf8a0,0x2DE4A5840c9D37ef014C31531D8dBdB5A8eAf8a0,0x2DE4A5840c9D37ef014C31531D8dBdB5A8eAf8a0,0x2DE4A5840c9D37ef014C31531D8dBdB5A8eAf8a0,0x2DE4A5840c9D37ef014C31531D8dBdB5A8eAf8a0,0x2DE4A5840c9D37ef014C31531D8dBdB5A8eAf8a0,0x2DE4A5840c9D37ef014C31531D8dBdB5A8eAf8a0,0x2DE4A5840c9D37ef014C31531D8dBdB5A8eAf8a0,0x2DE4A5840c9D37ef014C31531D8dBdB5A8eAf8a0];
    uint256[] partnersWeight = [1,2,3,4,5,1,2,3,4,5,1,2,3,4,5,1,2,3,4,5,1,2,3,4,5,1,2,3,4,5,1,2,3,4,5,1,2,3,4,5,1,2,3,4,5,1,2,3,4,5,1,2,3,4,5,1,2,3,4,5,1,2,3,4,5,1,2,3,4,5,1,2,3,4,5,1,2,3,4,5,1,2,3,4,5,1,2,3,4,5,1,2,3,4,5,1,2,3,4,5];

    // Splitter constructs the contract and saves the owner of the contract
    constructor() {
        owner = msg.sender;
    }

    // partnerAdd adds a new partner to the list
    // It saves the partner address and the weight of the partner
    function partnerAdd(address partner, uint256 weight) public onlyOwner  {
        require(partnerExists(partner) == false);

        partners.push(partner);
        partnersWeight.push(weight);
    }
    
    
    // partnerExists returns true if a partner exists in the list, false otherwise
    function partnerExists(address partner) public view returns (bool) {
        for (uint256 i = 0; i < partners.length; i++) {
            if (partner == partners[i]) {
                return true;
            }
        }

        return false;
    }


    // partnerWeight returns the weight of the partner if it is found in the list
    function partnerWeight(address partner) public view returns (uint256) {
        for (uint256 i = 0; i < partners.length; i++) {
            if (partner == partners[i]) {
                return uint256(partnersWeight[i]);
            }
        }

        return uint256(0);
    }

    // partnersRemove removes all partners
    function partnersRemove() public onlyOwner {
        delete partners;
        delete partnersWeight;
    }

    // fallback function is called when receiving funds
    // and it splits the funds to the partners according to the allocated weights
    //
    // Weight is used like this
    // == Example 1:
    // Different partners
    // partner A has weight 10
    // partner B has weight 20
    //
    // Contract receives 3 ETH
    // partner A receives 10 / ( 10 + 20 ) * 3 ETH = 1 ETH
    // partner B receives 20 / ( 10 + 20 ) * 3 ETH = 2 ETH
    //
    // == Example 2:
    // Equal partners
    // partner A has weight 500
    // partner B has weight 500
    //
    // Contract receives 10 ETH
    // partner A receives 500 / ( 500 + 500 ) * 10 ETH = 5 ETH
    // partner B receives 500 / ( 500 + 500 ) * 10 ETH = 5 ETH
    receive () external payable {
        uint256 sum;
        for (uint256 i = 0; i < partners.length; i++) {
            sum = sum + partnersWeight[i];
        }
        emit Sum(sum);

        for (uint256 i = 0; i < partners.length; i++) {
            address payable dst = payable(partners[i]);
            uint256 value = msg.value * partnersWeight[i] / sum;
            dst.transfer(value);

            emit SplitValue(dst, partnersWeight[i], value);
        }
    }

    // onlyOwne modifier checks if the originator of the transaction is the owner
    modifier onlyOwner() {
        bool allowed = false;

        if (msg.sender == owner) {
            allowed = true;
        }
        require(allowed);
        _;
    }

    event SplitValue(address receiver, uint256 weight, uint256 amount);
    event Sum(uint256 sum);
    event SplitValueReceived(uint256 amount);
}

