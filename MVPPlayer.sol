pragma solidity ^0.4.24;

contract MVPPlayer{
    
    string playerName;
    address owner;
    
    modifier onlyOwner(){
        require(msg.sender == owner);
        _;
    }
    
    constructor(){
        owner = msg.sender;
    }
    
    function setPlayer(string _player) public onlyOwner {
        playerName  = _player;
    }
    
    function getPlayer() public view returns(string){
        return playerName;
    }
    
}