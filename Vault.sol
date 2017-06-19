pragma solidity ^0.4.0;

contract Vault {

    bytes32 stored_hash = 0xa4244aa43ddd6e3ef9e64bb80f4ee952f68232aa008d3da9c78e3b627e5675c8;
    string password;
    bytes32 new_hash;
    uint32 value;

    function Withdraw(string password, bytes32 new_hash, uint32 value) returns (uint) {
        if (sha256(password) == stored_hash) {
            msg.sender.transfer(value);
            stored_hash = new_hash;
            return value;
        } else {
            return 0;
        }
    }
    function() payable { }
}
