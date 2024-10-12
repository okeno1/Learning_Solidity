// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MyContract{
   
/*
    //state uint

    int256 myInt = 1;
    uint public myUint  = 1;
    uint256 public myUint256 =1;
    uint8 public myUint8 = 1;

    string public myString = "Hello, world! ";
    bytes32 public myBytes32 = "Hello, World!";

    address public myAddress = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;

    //local variable
    function getValue() public pure returns(uint) {
        uint value = 1;
        return value;
    }

    struct MyStruct{
        uint256 myUint256;
        string myString;
    }

    MyStruct public mystruct = MyStruct(1, "Hello World!");
*/
/*
//arrays
    uint[] public uintArray = [1,2,3];
    string[] public stringArray = ["apple","banana","carrot"];
    string[] public values;

    uint256[][] public array2D = [[1,2,3],[4,5,6]];

    function addValue(string memory _value) public {
        values.push(_value);
    }

    function valueCount() public view returns (uint){
        return values.length;
    }
*/
/*
    //mappings  mapping(key=>value) myMapping;
    mapping (uint=> string) public names;
    mapping (uint => Book) public books;
    //nested mapping
    mapping (address => mapping(uint => Book)) public myBooks;

    struct Book{
        string title;
        string author;
    }

    constructor() {
        names[1] = "Adam";
        names[2] = "Bruce";
        names[3] = "Carl";
    }

    function addBook(
        uint _id,
        string memory _title, 
        string memory _author
        ) public{
            books[_id] = Book(_title, _author);
    }

    function addMyBook(
        uint _id,
        string memory _title, 
        string memory _author
        ) public{
            myBooks[msg.sender][_id] = Book(_title, _author);
    }
*/

//conditionals and loops
    uint[] public numbers = [1,2,3,4,5,6,7,8,9,10];

    address public owner;
    
    constructor(){
        owner = msg.sender;

    }

    function countEvenNumbers() public view returns(uint){
        uint count = 0;

        for(uint i = 0; i<numbers.length;i++){
            if(isEvenNumber(numbers[i])){
                count++;
            }
        }
        return count;
    }

    function isEvenNumber(uint _number) public view returns(bool){
        if(_number % 2 == 0){
            return true;
        }else{
            return false;
        }
    }

    function isOwner() public view returns (bool){
        return(msg.sender == owner);
    }

}
