// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity 0.8.15;

import {Auth, Authority} from "@rari-capital/solmate/src/auth/Auth.sol";

contract BondTreasury is Auth {
    address bondTeller;

    event Received(address, uint);

    constructor(
        address guardian_,
        Authority authority_
    ) Auth(guardian_, authority_) { }
  
    function registerTeller(address teller) external requiresAuth {
        bondTeller = teller;
    }

    function requestPayout(uint256 amount) external {
        require(msg.sender == bondTeller, "Not Authorized");

        (bool sent, ) = msg.sender.call{value: amount}("");
        require(sent, "Failed to send Payout");
    }

    receive() external payable {
        emit Received(msg.sender, msg.value);
    }


}