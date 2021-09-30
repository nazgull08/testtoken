// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/ERC20.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/access/AccessControlEnumerable.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/utils/Context.sol";

contract ERC20PresetMinterPauser is Context, AccessControlEnumerable, ERC20Burnable {
    bytes32 public constant MINTER_ROLE = keccak256("MINTER_ROLE");

    constructor(string memory name, string memory symbol) ERC20(name, symbol) {
        _setupRole(DEFAULT_ADMIN_ROLE, _msgSender());
        _setupRole(MINTER_ROLE, _msgSender());
    }

    function mint(address to, uint256 amount) public virtual {
        require(hasRole(MINTER_ROLE, _msgSender()), "ERC20ENRT: must have minter role to mint");
        _mint(to, amount);
    }

    function _beforeTokenTransfer(
        address from,
        address to,
        uint256 amount
    ) internal virtual override(ERC20) {
        super._beforeTokenTransfer(from, to, amount);
    }
}
