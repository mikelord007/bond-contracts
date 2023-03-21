// SPDX-License-Identifier: AGPL-3.0
pragma solidity >=0.8.0;

struct LockedBalance {
    int128 amount;
    uint256 cooldown;
    uint256 end;
}

interface IVotingEscrow {

    function locked(address) external returns (LockedBalance memory);

    function deposit_for(address) external payable;

    function create_cooldown_lock_for(uint256, address) external payable;
}
