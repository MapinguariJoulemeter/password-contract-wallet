pragma solidity ^0.4.0;

contract Vault {

    bytes32 stored_hash = 0x07123e1f482356c415f684407a3b8723e10b2cbbc0b8fcd6282c49d37c9c1abc;

    function Withdraw(string password, bytes32 new_hash, uint32 value) payable returns (bool) {
        if (sha256(password) == stored_hash) {
            msg.sender.transfer(value);
            stored_hash = new_hash;
            return true;
        } else {
            return false;
        }
    }
    function() payable { }
}
