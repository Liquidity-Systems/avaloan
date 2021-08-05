// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.2;

/**
  * Migrations
  * A helper contract to manage truffle migrations
**/
contract Migrations {
  address public owner;
  uint public last_completed_migration;

  constructor() {
    owner = msg.sender;
  }

  modifier restricted() {
    if (msg.sender == owner) _;
  }

  function setCompleted(uint completed) public restricted {
    last_completed_migration = completed;
  }
}
