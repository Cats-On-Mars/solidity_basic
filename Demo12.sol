pragma solidity ^0.4.18;

contract father{
    uint Money = 10000;
    function run()public pure returns(string){
        return "run";
    }
}

contract son is father{
    uint Money = 99999;
    function getMoney()public  view returns(uint){
        return Money;
    }
    
    function run()public pure returns(string){
        return "walk";
    }
}


contract Fa{
    uint public Money = 100;
}
contract Ma{
    uint public Money = 200;
}
contract So is Fa,Ma{
    function get() public view returns(uint){
        return Money;
    }
}



contract destruct{
    address owner;
    function destruct(){
        owner = msg.sender;
    }
    
    uint public money = 0;
    function increment(){
        money+=10;
    }
    
    function kill(){   //销毁合约
        if(msg.sender==owner){
            selfdestruct(owner);
        }
    }
}




                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         