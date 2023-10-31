// TokenFactory.sol

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./TokenContract.sol";

contract TokenFactory {

    address[] public deployedTokens;

    function createToken(string memory name, string memory symbol, uint256 initialSupply) public {
        TokenContract newToken = new TokenContract(name, symbol, initialSupply, msg.sender);
        deployedTokens.push(address(newToken));
    }

    function getDeployedTokens() public view returns (address[] memory) {
        return deployedTokens;
    }
}
