// contracts/GLDToken.sol
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Mparam {

        struct MarketParams {
            address payoutToken;
            address quoteToken;
            address callbackAddr;
            bool capacityInQuote;
            uint256 capacity;
            uint256 formattedInitialPrice;
            uint256 formattedMinimumPrice;
            uint32 debtBuffer;
            uint48 vesting;
            uint48 conclusion;
            uint32 depositInterval;
            int8 scaleAdjustment;
        }

        MarketParams m = MarketParams(
            0x0165878A594ca255338adfa4d48449f69242Eb8F,
            0x5FC8d32690cc91D4c39d9d3abcBD16989F875707,
            0x0000000000000000000000000000000000000000,
            false,
            10000000000000000000000,
            6 * 10**34,
            5 * 10**34,
            11000,
            432000,
            1779373868,
            3600,
            1
        );


        function returnabi() public view returns(bytes memory) {
            return abi.encode(m);
        }

}