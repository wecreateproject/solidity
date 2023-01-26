type B4 is bytes4;
using {bitor as |, bitnot as ~} for B4;

function bitor(B4, B4) pure returns (B4) {}
function bitnot(B4) pure returns (B4) {}

B4 constant X = B4.wrap(0x12345678) | B4.wrap(0xaabbccdd);

contract C {
    B4 constant Y = B4.wrap(0x12345678) | B4.wrap(0xaabbccdd);
}

library L {
    B4 constant Z = ~B4.wrap(0x12345678);
}

interface I {
    B4 constant W = ~B4.wrap(0x12345678);
}
// ----
// TypeError 8349: (162-203): Initial value for constant variable has to be compile-time constant.
// TypeError 8349: (239-280): Initial value for constant variable has to be compile-time constant.
// TypeError 8349: (317-337): Initial value for constant variable has to be compile-time constant.
// TypeError 8349: (376-396): Initial value for constant variable has to be compile-time constant.
