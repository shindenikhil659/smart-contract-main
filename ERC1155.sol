// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import "@openzeppelin/contracts/token/ERC1155/ERC1155.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC1155/extensions/ERC1155Burnable.sol";
import "@openzeppelin/contracts/token/ERC1155/extensions/ERC1155Supply.sol";

contract ERC1155BulkMint is ERC1155, Ownable, ERC1155Burnable, ERC1155Supply {

    string public name;
    string public symbol;

    constructor() ERC1155("") {
        name = "Name";
        symbol = "Sym";
    }

    function setURI(string memory newuri) public onlyOwner {
        _setURI(newuri);
    }

    function mint(address account, uint256 id, uint256 amount, bytes memory data)
        public
        onlyOwner
    {
        _mint(account, id, amount, data);
    }

    function batchMint(address[] memory to, uint256 id, uint256 amount, bytes memory data) public onlyOwner {
        uint length = to.length;
        for (uint i = 0; i < length; i++) {
            _mint(to[i], id, amount, data);
        }
        
    }


    function _beforeTokenTransfer(address operator, address from, address to, uint256[] memory ids, uint256[] memory amounts, bytes memory data)
        internal
        override(ERC1155, ERC1155Supply)
    {
        super._beforeTokenTransfer(operator, from, to, ids, amounts, data);
    }
    
    function withdraw() external payable onlyOwner{
        payable(owner()).transfer(address(this).balance);
    }
}
