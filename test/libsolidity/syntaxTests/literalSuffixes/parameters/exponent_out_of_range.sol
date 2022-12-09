function u8(uint m, uint8 e) pure returns (uint) {}
function u16(uint m, uint16 e) pure returns (uint) {}
function u256(uint m, uint e) pure returns (uint) {}

contract C {
    function min() public pure {
        // We never use positive exponents so here it's just 0 and the whole number goes into mantissa
        1.0e78 u8;
        1.0e78 u16;
        1.0e78 u256;

        115792089237316195423570985008687907853269984665640564039457584007913129639936 u8;   // 2**256
        115792089237316195423570985008687907853269984665640564039457584007913129639936 u16;  // 2**256
        115792089237316195423570985008687907853269984665640564039457584007913129639936 u256; // 2**256
    }

    function max() public pure {
        1e-256 u8;
    }
}
// ----
// TypeError 5503: (317-326): This fractional number cannot be decomposed into a mantissa and decimal exponent that fit the range of parameters of any possible suffix function.
// TypeError 5503: (336-346): This fractional number cannot be decomposed into a mantissa and decimal exponent that fit the range of parameters of any possible suffix function.
// TypeError 5503: (356-367): This fractional number cannot be decomposed into a mantissa and decimal exponent that fit the range of parameters of any possible suffix function.
// TypeError 5503: (378-459): This fractional number cannot be decomposed into a mantissa and decimal exponent that fit the range of parameters of any possible suffix function.
// TypeError 5503: (481-563): This fractional number cannot be decomposed into a mantissa and decimal exponent that fit the range of parameters of any possible suffix function.
// TypeError 5503: (584-667): This fractional number cannot be decomposed into a mantissa and decimal exponent that fit the range of parameters of any possible suffix function.
// TypeError 8838: (727-736): The type of the literal cannot be converted to the parameters of the suffix function.
