// SPDX-License-Identifier: AGPL-3.0
pragma solidity >=0.8.0;

struct LockedBalance {
    int128 amount;
    uint256 cooldown;
    uint256 end;
}

contract VotingEscrow {

    function locked(address) external returns (LockedBalance memory){
        LockedBalance memory l = LockedBalance(200,1699370063, 100);

        return l;
    }

    function deposit_for(address) external payable{

    }

    function create_cooldown_lock_for(uint256, address) external payable{

    }
}
