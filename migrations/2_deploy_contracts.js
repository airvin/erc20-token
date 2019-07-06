const HildiToken = artifacts.require("HildiToken")

module.exports = function(deployer) {
    deployer.deploy(HildiToken)
}