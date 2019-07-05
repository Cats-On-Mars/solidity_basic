pragma solidity ^0.4.18;

contract Z{
    uint public num0 = 100;
}
contract A is Z{
    uint public num = 1000;
    function run() public pure {
    }
}
contract B is A{
    function walk() public view returns(uint){
        return num;
    }
}


contract father{
    uint money = 1000;           //没有加任何属性，可以被继承
    // uint public money = 10000;   public属性，可以被继承  
    // uint internal money = 10000; internal属性，可以被继承
    // uint external money = 10000; external属性，不能被继承
    // uint private money = 1000;   private属性，不能被继承
}
contract son is father{
    function getMoney()public view returns(uint){
        return money;
    }
}


contract AA{
    function walk()public pure returns(string){
        return "walk";
    }
    //public  属性，可以被继承 
    //internal属性，可以被继承，只能在合约内部或继承的合约中调用，不能被外部调用
    //external属性，可以被继承, 只能被外部调用 / 继承的合约中用this.walk()调用
    //private 属性，不能被继承, 只能在内部被调用，不能被外部调用
}
contract BB is AA{
    function test()public pure returns(string){
        return walk();
    }
}




contract AAA{
    function run()public returns(string){
        return "run";
    }
}
contract BBB{
    AAA a = new AAA();
    function externalTestIt() returns(string){
        return a.run();
        //address.run()
    }
}








                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       