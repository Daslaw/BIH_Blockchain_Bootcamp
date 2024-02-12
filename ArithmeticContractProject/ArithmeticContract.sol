    // SPDX-License-Identifier: GPL-3.0
    pragma solidity >=0.8.2 <0.9.0;


    contract ArithmeticContract {
        // Function for finding Odd number
        function isOdd(uint256 _number) public pure returns (bool) {
            return _number % 2 != 0;
        }

        // Function for finding even number
        function isEven(uint256 _number) public pure returns (bool) {
            return _number % 2 == 0;
        }
        
        // function for finding bit digits

        function mostSignificantBit(uint256 _number) public pure returns (uint8) {
            uint8 msb = 0;
            while (_number > 0) {
                _number = _number >> 1;
                msb++;
            }
            
            return msb;
        }
    }
