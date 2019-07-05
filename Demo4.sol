pragma solidity ^0.4.18;

contract ByteArray{
    //bytes1=uint8
    //两个16进制数是一个8位
    bytes1 num1 = 0x7a;     //7*16+10
    bytes2 num2 = 0x7a68;   //7*16*16*16+10*16*16+6*16+8
    
    bytes3 public num3 = 255*255*255;  //加上public之后自动生成get方法，可以调用这个数
    
    
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


contract DynamicByte{
    bytes public num1 = new bytes(2);
    
    function initNum() public{
        num1[0] = 0x7a;
        num1[1] = 0x68;
    }
    
    function getLength()public view returns(