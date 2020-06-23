pragma solidity 0.6.0;

contract numberguess {
    int[3]  numbers;
    uint public WinnerCounter;
    uint public LoserCounter;
    string public name;
    function yourNumbers(int num1,int num2, int num3) public {
        numbers[0] = num1;
        numbers[1] = num2;
        numbers[2] = num3;
    }
    function Guess(string memory YourNmae, int YourNumber) public  returns(bool){
        for(uint i=0;i<=numbers.length;i++){
            if(numbers[i] == YourNumber){
                WinnerCounter++;
                name = YourNmae;
                return true;
            }
            LoserCounter++;
            return false;
        }
}
    function totalGuess() public {
        uint guess = WinnerCounter + LoserCounter;
        guess;
    }
}