type Int is int128;

library L {
    function binaryOperator(Int, Int) private pure returns (Int) {}
    function unaryOperator(Int) private pure returns (Int) {}
}

using {L.binaryOperator as +} for Int;
using {L.unaryOperator as -} for Int;

contract C {
    using {L.binaryOperator as *} for Int;
    using {L.unaryOperator as ~} for Int;
}

library X {
    using {L.binaryOperator as *} for Int;
    using {L.unaryOperator as ~} for Int;
}
// ----
// TypeError 6772: (173-189): Function "L.binaryOperator" is private and therefore cannot be attached to a type outside of the library where it is defined.
// TypeError 6772: (212-227): Function "L.unaryOperator" is private and therefore cannot be attached to a type outside of the library where it is defined.
// TypeError 6772: (268-284): Function "L.binaryOperator" is private and therefore cannot be attached to a type outside of the library where it is defined.
// TypeError 6772: (311-326): Function "L.unaryOperator" is private and therefore cannot be attached to a type outside of the library where it is defined.
// TypeError 6772: (368-384): Function "L.binaryOperator" is private and therefore cannot be attached to a type outside of the library where it is defined.
// TypeError 6772: (411-426): Function "L.unaryOperator" is private and therefore cannot be attached to a type outside of the library where it is defined.
