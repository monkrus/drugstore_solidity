pragma solidity 0.5.11;


contract MyPharmacy {
   
   uint256 public drugCount =0;
    
   mapping(uint => Drugstore) public drugs;
   
   address owner;
  
    uint256 openingTime = 1569005303;
   
   modifier onlyWhileOpen() {
   require(block.timestamp >= openingTime);
    _;
   }
   
   modifier onlyOwner() {
   require(msg.sender == owner);
    _;
    
   
    
   }
   struct Drugstore { 
      string _manufacturer;
      string _drugName;
      string _drugId;
   }
   constructor() public {
       owner = msg.sender;
   }
   
   function addDrugs (string memory _manufacturer, string memory _drugName, string memory _drugId) public   onlyWhileOpen {
    incrementCount();
    drugs[drugCount] = Drugstore( _manufacturer, _drugName, _drugId );
   }
   
   function incrementCount() internal {
       drugCount +=1;
   
  }
   
}