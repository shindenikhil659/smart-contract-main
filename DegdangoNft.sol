// SPDX-License-Identifier: MIT
pragma solidity  ^0.8.0;

contract DegDango is ERC721Enumerable, Ownable {
  using Strings for uint256;

  string baseURI;
  string public baseExtension = ".json";
  uint256 public cost = 10 ether;
  uint256 public maxSupply = 2851;
  uint256 public headStart = block.timestamp + 45 days;
  bool public paused = false;
  bool public revealed = false;
  string public notRevealedUri;
 
  
  constructor(
    string memory _initBaseURI,
    string memory _initNotRevealedUri
  ) ERC721("Degdango", "Degdango") {
    setBaseURI(_initBaseURI);
    setNotRevealedURI(_initNotRevealedUri);
  }

  function _baseURI() internal view virtual override returns (string memory) {
    return baseURI;
  }

//   Making a function for dynamic minting participate

function dynamicPrice(uint256 _supply) public pure returns (uint256 _cost){
    
    if ((_supply >= 0) &&  (_supply < 10)){
        return 10 ether;
    }
    else if ((_supply >= 10) &&  (_supply <50)){
        return 25 ether;
    }
    else if ((_supply >= 50) &&  (_supply <75)){
        return 30 ether;
    }
    else if ((_supply >= 75) &&  (_supply <100)){
        return 40 ether;
    }
    else if ((_supply >= 100) &&  (_supply <150)){
        return 50 ether;
    }
    else if ((_supply >= 150) &&  (_supply <200)){
        return 55 ether;
    }
    else if ((_supply >= 200) &&  (_supply <250)){
        return 60 ether;
    }
    else if ((_supply >= 250) &&  (_supply <300)){
        return 65 ether;
    }
    else if ((_supply >= 300) &&  (_supply <350)){
        return 70 ether;
    }
    else if ((_supply >= 350) &&  (_supply <400)){
        return 75 ether;
    }
    else if ((_supply >= 400) &&  (_supply <450)){
        return 80 ether;
    }
    else if ((_supply >= 450) &&  (_supply <500)){
        return 85 ether;
    }
    else if ((_supply >= 500) &&  (_supply <550)){
        return 90 ether;
    }
    else if ((_supply >= 550) &&  (_supply <600)){
        return 95 ether;
    }
    else if ((_supply >= 600) &&  (_supply <650)){
        return 100 ether;
    }
    else if ((_supply >= 650) &&  (_supply <700)){
        return 105 ether;
    }
    else if ((_supply >= 700) &&  (_supply <750)){
        return 110 ether;
    }
    else if ((_supply >= 750) &&  (_supply <800)){
        return 115 ether;
    }
    else if ((_supply >= 800) &&  (_supply <850)){
        return 120 ether;
    }
    else if ((_supply >= 850) &&  (_supply <900)){
        return 125 ether;
    }
    else if ((_supply >= 900) &&  (_supply <950)){
        return 130 ether;
    }
    else if ((_supply >= 950) &&  (_supply <1000)){
        return 135 ether;
    }
    else if ((_supply >= 1000) &&  (_supply <1050)){
        return 140 ether;
    }
    else if ((_supply >= 1050) &&  (_supply <1100)){
        return 145 ether;
    }
    else if ((_supply >= 1100) &&  (_supply <1150)){
        return 150 ether;
    }
    else if ((_supply >= 1150) &&  (_supply <1200)){
        return 155 ether;
    }
    else if ((_supply >= 1200) &&  (_supply <1250)){
        return 160 ether;
    }
    else if ((_supply >= 1250) &&  (_supply <1300)){
        return 165 ether;
    }
    else if ((_supply >= 1300) &&  (_supply <1350)){
        return 170 ether;
    }
    else if ((_supply >= 1350) &&  (_supply <1400)){
        return 175 ether;
    }
    else if ((_supply >= 1400) &&  (_supply <1450)){
        return 180 ether;
    }
    else if ((_supply >= 1450) &&  (_supply <1500)){
        return 185 ether;
    }
    else if ((_supply >= 1500) &&  (_supply <1550)){
        return 190 ether;
    }
    else if ((_supply >= 1550) &&  (_supply <1600)){
        return 195 ether;
    }
    else if ((_supply >= 1600) &&  (_supply <1650)){
        return 200 ether;
    }
    else if ((_supply >= 1650) &&  (_supply <1700)){
        return 205 ether;
    }
    else if ((_supply >= 1700) &&  (_supply <1750)){
        return 210 ether;
    }
    else if ((_supply >= 1750) &&  (_supply <1800)){
        return 215 ether;
    }
    else if ((_supply >= 1800) &&  (_supply <1850)){
        return 220 ether;
    }
    else if ((_supply >= 1850) &&  (_supply <1900)){
        return 225 ether;
    }
    else if ((_supply >= 1900) &&  (_supply <1950)){
        return 230 ether;
    }
    else if ((_supply >= 1950) &&  (_supply <2000)){
        return 235 ether;
    }
    else if ((_supply >= 2000) &&  (_supply <2050)){
        return 240 ether;
    }
    else if ((_supply >= 2050) &&  (_supply <2100)){
        return 245 ether;
    }
    else if ((_supply >= 2100) &&  (_supply <2150)){
        return 250 ether;
    }
    else if ((_supply >= 2150) &&  (_supply <2200)){
        return 255 ether;
    }
    else if ((_supply >= 2200) &&  (_supply <2250)){
        return 260 ether;
    }
    else if ((_supply >= 2250) &&  (_supply <2300)){
        return 265 ether;
    }
    else if ((_supply >= 2300) &&  (_supply <2350)){
        return 270 ether;
    }
    else if ((_supply >= 2350) &&  (_supply <2400)){
        return 275 ether;
    }
    else if ((_supply >= 2400) &&  (_supply <2450)){
        return 280 ether; 
    }
    else if ((_supply >= 2450) &&  (_supply <2500)){
        return 285 ether;
    }
    else if ((_supply >= 2500) &&  (_supply <2550)){
        return 290 ether;
    }
    else if ((_supply >= 2550) &&  (_supply <2600)){
        return 295 ether;
    }
    else if ((_supply >= 2600) &&  (_supply <2650)){
        return 300 ether;
    }
    else if ((_supply >= 2650) &&  (_supply <2700)){
        return 305 ether;
    }
    else if ((_supply >= 2700) &&  (_supply <2750)){
        return 310 ether;
    }
    else if ((_supply >= 2750) &&  (_supply <2800)){
        return 315 ether;
    }
    else if ((_supply >= 2800) &&  (_supply <=2851)){
        return 320 ether;
    }

    else{
    return 10 ether;
    }
}

function mint() public payable {
    uint256 supply = totalSupply();
    require(!paused, "Contract is paused!");
    require(supply + 1 <= maxSupply, "Max supply reached!");
    require(msg.sender != owner(), "Owner can not mint!");
    require(msg.value >= dynamicPrice(supply) , "Not enough funds!"); 
    address payable giftAddress = payable(msg.sender);
    uint256 giftValue = 0;
    
    if(supply > 0) {
        giftAddress = payable(ownerOf(randomNum(supply, block.timestamp, supply + 1) + 1));
        giftValue = supply + 1 == maxSupply ? address(this).balance * 10 / 100 : msg.value * 12 / 100;
    }
    
    _safeMint(msg.sender, supply + 1);

    if(supply > 0) {
        (bool success, ) = payable(giftAddress).call{value: giftValue}("");
        require(success, "Could not send amount!");
    }
  }

  function walletOfOwner(address _owner)
    public
    view
    returns (uint256[] memory)
  {
    uint256 ownerTokenCount = balanceOf(_owner);
    uint256[] memory tokenIds = new uint256[](ownerTokenCount);
    for (uint256 i; i < ownerTokenCount; i++) {
      tokenIds[i] = tokenOfOwnerByIndex(_owner, i);
    }
    return tokenIds;
  }
  
  function randomNum(uint256 _mod, uint256 _seed, uint256 _salt) public view returns(uint256) {
      uint256 num = uint256(keccak256(abi.encodePacked(block.timestamp, msg.sender, _seed, _salt))) % _mod;
      return num;
  }

  function reveal() public onlyOwner() {
      revealed = true;
  }
  
  function setCost(uint256 _newCost) public onlyOwner() {
    cost = _newCost;
  }

  function setNotRevealedURI(string memory _notRevealedURI) public onlyOwner {
    notRevealedUri = _notRevealedURI;
  }

  function setBaseURI(string memory _newBaseURI) public onlyOwner {
    baseURI = _newBaseURI;
  }

  function setBaseExtension(string memory _newBaseExtension) public onlyOwner {
    baseExtension = _newBaseExtension;
  }
  
  function tokenURI(uint256 tokenId)
        public
        pure
        override
        returns (string memory)
    {
        return
            string(
                abi.encodePacked(
                    "https://ipfs.io/ipfs/QmaUmUGmdfjZcUUDGnzoSixZwTSxktgw1VuFFSaXrmFykT/",
                    Strings.toString(tokenId),
                    ".json"
                )
            );
    }

  function pause(bool _state) public onlyOwner {
    paused = _state;
  }
  
  function withdraw() public payable onlyOwner {
    uint256 supply = totalSupply();
    require(supply == maxSupply || block.timestamp >= headStart, "Can not withdraw yet.");
    (bool s, ) = payable(msg.sender).call{value: address(this).balance}("");
    require(s);
  }
}
