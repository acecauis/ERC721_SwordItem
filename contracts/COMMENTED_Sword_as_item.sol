pragma solidity ^0.4.24;

contract Item is ERC721 {
    struct Item {
        string name;        // Name of item
        uint level;         // Item level
        uint rarityLevel;   // 1 = normal, 2 = rare, 3 = epic, 4 = legendary
    }

    Item[] public items;    // First 'Item' has Index 0 -- an array of items that is publicly viewable on the blockchain
    address public owner;   // Each address is public and is matched to its respective owner

    // Defining 'Item()' as a function, itemizing objects
    function Item() public {
        owner = msg.sender; // Sender is the 'owner', i.e., ethereum address of 'owner'
    }

    // Function to create new Items
    function createItem(string name, address to) public {
        require(owner == msg.sender);     // Only owner can create new Items
        uint if = items.length;           // Item ID = length of the Items array
        items.push(Item(name, 5, 1))      // Item ("Sword", 5, 1)
        _mint(to, id);                    // Assigns the Token to the Ethereum address that is specified
    });
}
