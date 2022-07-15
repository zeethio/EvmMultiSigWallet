pragma solidity ^0.8.15;
import "./Factory.sol";
import "./MultiSigWallet.sol";


/// @title Multisignature wallet factory - Allows creation of multisig wallet.
/// @author Stefan George - <stefan.george@consensys.net>
contract MultiSigWalletFactory is Factory {


    function create(address[] memory _owners, uint _required)
        public
        returns (address wallet)
    {
        wallet = address(new MultiSigWallet(_owners, _required));
        register(wallet);
    }
}

