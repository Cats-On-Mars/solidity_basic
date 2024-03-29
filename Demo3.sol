pragma solidity ^0.4.18;

contract HelloWord{
    string Myname = "shh";
    function getName() public view returns(string){
        return Myname;
    }
    
    function changeName(string _newName) public{
        Myname = _newName;
    }
    
    function pureTest(string _name) public pure returns(string){
        return _name;
    }
}

contract BooleanTest{
    bool a;
    int num1 = 100;
    int num2 = 200;
    
    function getBool() public view returns(bool){
        return a;
    }
    
    function getBool2() public view returns(bool){
        return !a;
    }
    
    function panduan() public view returns(bool){
        return num1==num2;
    }
    
}

contract MathDemo{  //一个特殊的计算符 ** 代表几次幂，其他都一样
    uint a = 2;
    uint b = 3;
    
    function pingfang() public view returns(uint){
        return a**b;
    }
    
    function pingfang2(uint c,uint d) public pure returns(uint){
        return c**d;
    }
    
    
}


contract errDemo{ //溢出错误，通过编译但调用出错
     function err1() pure public returns(uint){
        uint8 a = 255;
        a++;
        return a;
    }
    
    function err2() pure public returns(uint){
        uint8 b = 0;
        b--;
        return b;
    }
    
    function err3() pure public returns(uint){
        uint a = 2;
        uint b = 0;
        return a/b;
    }
}


contract intergerDemo{ //string字面量,先计算后赋值。满足精度的需要
    function func1()public pure returns(uint){
        uint num= (2**800+1)-2**800;
        return num;
    }
    
    function func2() public pure returns(uint){
        uint num = 2/4*1000;
        return num;
    }
    
    function func3() public pure returns(uint){
        uint num = 111111111111111111111112-111111111111111111111111;
        return num;
    }
}



contract ByteArray{
    //bytes1=uint8
    //两个16进制数是一个8位
    bytes1 num1 = 0x7a;     //7*16+10
    bytes2 num2 = 0x7a68;   //7*16*16*16+10*16*16+6*16+8
    
    bytes3 public num3 = 255*255*255;
    //加上public之后自动生成get方法，可以调用这个数
    
    
    function getLength() public view returns(uint){
        return num1.length;
    }
    
    // function setLength() public view {
        // num1.length = 2; //length can't be change
    // }
    
    function compare()public view returns(bool){
        return num1<num2;  //> < = != ok
    }
    
    //& | ~ ^ << >> 
    
    function change()public {
        // num2[0] = 3; error  不能改变字节数组的单个位，只能改变整个数
        num2 = 0x632a;
    }
}








                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 