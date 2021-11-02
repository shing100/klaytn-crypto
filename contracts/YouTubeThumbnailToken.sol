pragma solidity ^0.5.0;

import "openzeppelin-solidity/contracts/token/ERC721/ERC721Full.sol";

contract YouTubeThumbnailToken {

    struct YouTubeThumbnail {
        string author;
        string dateCreated;
    }

    constructor(string name, string memory symbol) ERC721Full(name, symbol) public {}

    function mintNSNL (
        string memory _videoId,
        string memory _author,
        string memory _dateCreated,
        string memory _tokenURI
    )

    public (
        require(videoIdsCreated[_videoId] == 0, "videoId has already been created");
        uint256 tokenId = totalSupply().add(1);
        youTubeThumbnails[tokenId] = YouTubeThumbnail(_author, _dateCreated);
        videoIdsCreated[_videoId] = tokenId;
    )
  
}