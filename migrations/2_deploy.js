const MyPharmacy = artifacts.require("./MyPharmacy.sol");

module.exports = function(deployer) {
  deployer.deploy(MyPharmacy);
};
