pragma solidity ^0.4.18;

contract addressDemo{
    address public a = 0x87b77f033b2d0347833ae375acaea991133e8ea3;
    //20byte = 20*8=160bit = uint160 
    //0xca35b7d915458ef540ade6068dfe2f44e8fa733c  账户地址 
    //0x87b77f033b2d0347833ae375acaea991133e8ea3  合约地址
    
    function changeIt() public view returns(uint160){
        return uint160(a);
    }
    function changeIt2() public pure returns(address){
        return address(774805854792368045743501152916407987409992453795);
    }
    
    address b = 0xca35b7d915458ef540ade6068dfe2f44e8fa733c;
    address c = 0x87b77f033b2d0347833ae375acaea991133e8ea3;
    
    function check() public view returns(bool){
        return b>c;
    }
}

contract payableDemo{
    
    function pay()public payable{   //给本合约转账
        
    }
    
    function getBalance()public view returns(uint){ //获取本合约余额
        return this.balance;        
    }
    
    function getThis()public view returns(address){   //this就是本合约地址
        return this;               
    } 

    function getRadomBalance()public view returns(uint){   //获取某个地址（账户/合约）余额
       address account = 0xca35b7d915458ef540ade6068dfe2f44e8fa733c;
       return account.balance;
    }
    function getRadomBalance(address account)public view returns(uint){
       return account.balance;
    }
    
    function transfer()public payable{   //调用者给指定地址（account1）转账
        address account1 = 0x14723a09acff6d2a60dcdf7aa4aff308fddc160c;
        //account1.transfer(msg.value);
        account1.transfer(10 ether);  //如果此时mag.value大于10的话，多余的部分转给本合约地址
    }
    
    function transfer2()public payable{   //调用者给本合约转账
        this.transfer(msg.value);
    }
    function()public payable{    //必须要有回滚函数
        
    }
    
    // function sendMoney()public payable{
    //     address account1 = 0x14723a09acff6d2a60dcdf7aa4aff308fddc160c;
    //     account1.send(1 ether);
    // }
}


contract global{        //全局属性
    function getGlobal()public view returns(address){
        return msg.sender;
    }
    
    function getGlobal2()public view returns(uint){
        return block.difficulty;
    }
    
    function getGlobal3()public view returns(uint){
        return block.number;
    }
    
    function getGlobal4()public view returns(address){
        return block.coinbase;
    }
}










                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              