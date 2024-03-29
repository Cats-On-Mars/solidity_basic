pragma solidity ^0.4.18;

contract mappingTest{
    mapping(address => uint) idmapping;
    mapping(uint => string) namemapping;
    
    uint num = 0;
    
    function register(string name)public{
        address account = msg.sender;
        num++;
        idmapping[account] = num;
        namemapping[num] = name;
    }
    
    function getIdByAddress(address add)public view returns(uint){
        return idmapping[add];
    }
    
    function getNameById(uint id)public view returns(string){
        return namemapping[id];
    }
}




contract chongzai{
    function fun() {
        
    }
    
    function fun(uint num) {
        
    }
    
    function fun(uint8 num) {
        
    }
    
    //虽然编译通过，但调用会出错
    function fun(uint160 num) {
        
    }
    function fun(address num) {
        
    }
    
    
    uint public a =0;
    function test1(uint num){
        a=100;
    }
    
    function test1(uint8 num){
        a=200;
    }
    function testIt(){
       // test1(100); //编译不通过，两个都匹配
        test1(256); //编译通过
    }
    
}


contract funcParam{
      uint public num;
      string public name;
       function setParam(uint _num,string _name){
           num = _num;
           name = _name;
       }
       
       function Test1() public{
           setParam(1,"shh");
       }
       
       function Test2() public{
           setParam({_num:1,_name:"shh"});
       }
       
       function Test3() public{
           setParam({_name:"shh",_num:1});
       }
       
    //   function Test4() public{
    //       setParam({num:1});
    //   } 
    //err param number need 2
}



contract funReturn{
    
    
    
    function returnDemo()public pure returns(uint num){
        
        uint a = 10;
        return a;
    }
    
    function returnDemo2()public pure returns(uint num){
        
       num = 10;
    }
    
    
    function returnDemo3()public pure returns(uint num){ //100
        uint a = 100;
       num = 10;
      
        return a;
    }
    
    function returnDemo4(uint a,uint b)public pure returns(uint sum,uint mul){
       sum=a+b;
       mul=a-b;
    }
    
    
    function returnDemo5(uint a,uint b)public pure returns(uint sum,uint mul){
       return(a+b,a-b);
    }
}













                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       