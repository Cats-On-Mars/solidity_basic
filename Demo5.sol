pragma solidity ^0.4.18;

contract fixArray{
    uint[5] a;
    uint[5] b = [1,2,3,4,5];
    
    function init()public{
        a[0]=100;
        a[2]=300;
    }
    
    function getArrayContent()public view returns(uint[5]){
        return a;
    }
    
    function getLength()public view returns(uint){
        return b.length;
    }
    
    // function changeLength()public view returns(uint){
        // error,can't change length
        //error,can't push member
    // }
}

contract dynamicArray{
    uint[] a;
    uint[] b = [1,2,3,4,5];
    
    function getContenta()public view returns(uint[]){
        return a;
    }
    
    function getLength()public view returns(uint){
        return a.length;
    }
    
    function init()public{
        b[0]=100;
        b[1]=200;
    }
    
    function getContentb()public view returns(uint[]){
        return b;
    }
    
    
    function getSum() public view returns(uint){
        uint sum = 0;
        for(uint i = 0;i<b.length;i++){
            sum += b[i];
        }
        return sum;
    }
    
    function changeLength()public{
        b.length = 10;
    }
    
    function add()public{
        b.push(6);
    }
}

contract twoArray{
    uint[2][3] a = [[1,2],[3,4],[5,6]];  //watch the order!!
    
    function getLength1()public view returns(uint){
        return a.length;
    }
    
    function getLength2()public view returns(uint){
        return a[0].length;
    }
    
    
    function getContent()public view returns(uint[2][3]){
        return a;
    }
    
    function getSum()public view returns(uint){
        uint sum = 0;
        for(uint i = 0;i<a.length;i++){
            for(uint j = 0;j<a[i].length;j++){
                sum += a[i][j];   //watch the order!!
            }
        }
        return sum;
    }
    
}


contract dynamicTwoArray{
    uint[][] a;
    uint[][] b=[[1,2],[3,4],[5,6]];
    // function getcontent() public view returns(uint[][]){ //can not returns type uint[][]
    //     return b;
    // }
    
    function changeLength() public{ 
        b[1].length = 10;
    }
    
    function getLength() public view returns(uint){ 
        return b[1].length;
    }
    //have not push function
}

contract arrayLiterals{
    function getArrayLiterals1()public pure returns(uint8[3]){
        
        return [1,2,3];//最小匹配原则 uint8
    }
    
    function getArrayLiterals2()public pure returns(uint16[3]){
        
        return [256,2,3]; //uint16
    }
    
    function getArrayLiterals3()public pure returns(uint[3]){
        
        return [uint(1),2,3]; //数指定第一个数的type
    }
    
    //在参数列表中与合约交互式时在参数列表中与合约交互式时有用
    function getSum(uint[3] arr)public pure returns(uint){
        uint sum = 0;
        for(uint i =0;i<3;i++){
            sum += arr[i];
        }
        return sum;
    }
}























