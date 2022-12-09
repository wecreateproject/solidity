function suffix(uint x) pure returns (uint) { return x; }

contract C {
    uint x = 10e1000 suffix;
    uint y = 999999999999999999999999999999999999999999999999999999999999999999999999999999 suffix;
}
// ----
// TypeError 5503: (85-99): This fractional number cannot be decomposed into a mantissa and decimal exponent that fit the range of parameters of any possible suffix function.
// TypeError 8838: (85-99): The type of the literal cannot be converted to the parameter of the suffix function.
// TypeError 5503: (114-199): This fractional number cannot be decomposed into a mantissa and decimal exponent that fit the range of parameters of any possible suffix function.
// TypeError 8838: (114-199): The type of the literal cannot be converted to the parameter of the suffix function.
