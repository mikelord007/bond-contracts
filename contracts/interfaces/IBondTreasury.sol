// SPDX-License-Identifier: AGPL-3.0
pragma solidity >=0.8.0;

interface IBondTreasury {

    /// @notice                 Request Payout in Native
    /// @param amount_      Amount of Payout to request
    function requestPayout(
        uint256 amount_
    ) external;

}