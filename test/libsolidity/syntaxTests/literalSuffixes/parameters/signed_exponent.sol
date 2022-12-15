function s8(uint mantissa, int8 exponent) pure suffix returns (uint) { }
function s64(uint mantissa, int64 exponent) pure suffix returns (uint) { }
function s160(uint mantissa, int160 exponent) pure suffix returns (uint) { }
function s256(uint mantissa, int256 exponent) pure suffix returns (uint) { }
function ms64(int64 mantissa, int8 exponent) pure suffix returns (uint) { }
function ms160(int160 mantissa, int160 exponent) pure suffix returns (uint) { }
function ms256(int256 mantissa, int256 exponent) pure suffix returns (uint) { }
function mu64(uint64 mantissa, int8 exponent) pure suffix returns (uint) { }
function mu160(uint160 mantissa, int160 exponent) pure suffix returns (uint) { }
function mu256(uint256 mantissa, int256 exponent) pure suffix returns (uint) { }

contract C {
    function f() public pure {
        3.1415 s8;
        3.1415 s64;
        3.1415 s160;
        3.1415 s256;

        1.6180 ms64;
        1.6180 ms160;
        1.6180 ms256;

        2.7182 mu64;
        2.7182 mu160;
        2.7182 mu256;
    }
}
// ----
// TypeError 3123: (830-839): The exponent parameter of a literal suffix function must be unsigned. Exponent is always either zero or a negative power of 10 but the parameter represents its absolute value.
// TypeError 3123: (849-859): The exponent parameter of a literal suffix function must be unsigned. Exponent is always either zero or a negative power of 10 but the parameter represents its absolute value.
// TypeError 3123: (869-880): The exponent parameter of a literal suffix function must be unsigned. Exponent is always either zero or a negative power of 10 but the parameter represents its absolute value.
// TypeError 3123: (890-901): The exponent parameter of a literal suffix function must be unsigned. Exponent is always either zero or a negative power of 10 but the parameter represents its absolute value.
// TypeError 3123: (912-923): The exponent parameter of a literal suffix function must be unsigned. Exponent is always either zero or a negative power of 10 but the parameter represents its absolute value.
// TypeError 3123: (933-945): The exponent parameter of a literal suffix function must be unsigned. Exponent is always either zero or a negative power of 10 but the parameter represents its absolute value.
// TypeError 3123: (955-967): The exponent parameter of a literal suffix function must be unsigned. Exponent is always either zero or a negative power of 10 but the parameter represents its absolute value.
// TypeError 3123: (978-989): The exponent parameter of a literal suffix function must be unsigned. Exponent is always either zero or a negative power of 10 but the parameter represents its absolute value.
// TypeError 3123: (999-1011): The exponent parameter of a literal suffix function must be unsigned. Exponent is always either zero or a negative power of 10 but the parameter represents its absolute value.
// TypeError 3123: (1021-1033): The exponent parameter of a literal suffix function must be unsigned. Exponent is always either zero or a negative power of 10 but the parameter represents its absolute value.
