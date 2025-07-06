pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/access/AccessControl.sol";

contract legumineuse42NFT is ERC721URIStorage, AccessControl, Ownable
{
    bytes32 public constant MINTER_ROLE = keccak256("MINTER_ROLE");
    uint256 private _tokenIds;

    constructor() ERC721("legumineuse42NFT", "L42") Ownable(msg.sender) 
    {

        _grantRole(DEFAULT_ADMIN_ROLE, msg.sender);
        _grantRole(MINTER_ROLE, msg.sender);
    }
    function perm_on_off(address acc, bool SandWITCH) external onlyOwner
    {
        if (SandWITCH == true) 
        {
            _grantRole(MINTER_ROLE, acc);
            return; 
        }
        _revokeRole(MINTER_ROLE, acc);
    }

    function mintNFT(address recipient, string memory tokenURI) public onlyRole(MINTER_ROLE)
    {
        _tokenIds += 1;
        _mint(recipient, uint256(_tokenIds));
        _setTokenURI(uint256(_tokenIds), tokenURI);
    }
    
    function supportsInterface(bytes4 interfaceId)
        public
        view
        override(ERC721URIStorage, AccessControl)
        returns (bool)
    {
        return super.supportsInterface(interfaceId);
    }
}