// TokenContract.sol

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract TokenContract {

    mapping(address => uint256) public balances;
    string public name;
    string public symbol;
    address public factoryOwner;

    constructor(string memory _name, string memory _symbol, uint256 initialSupply, address creator) {
        name = _name;
        symbol = _symbol;
        balances[creator] = initialSupply;  // Giving the entire initial supply to creator
        factoryOwner = msg.sender;  // Assigning the TokenFactory as the owner
    }

    function transfer(address recipient, uint256 amount) public {
        require(balances[msg.sender] >= amount, "Not enough tokens");
        balances[msg.sender] -= amount;
        balances[recipient] += amount;
    }

    function mint(uint256 amount) public {
        require(msg.sender == factoryOwner, "Only TokenFactory can mint tokens");
        balances[factoryOwner] += amount;
    }

    function balanceOf(address account) public view returns (uint256) {
        return balances[account];
    }
}
