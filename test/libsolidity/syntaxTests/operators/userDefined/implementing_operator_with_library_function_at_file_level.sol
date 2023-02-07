==== Source: external.sol ====
type Int is int128;

library L {
    function binaryOperator(Int, Int) external pure returns (Int) {}
    function unaryOperator(Int) external pure returns (Int) {}
}

using {L.binaryOperator as +} for Int global;
using {L.unaryOperator as -} for Int global;

==== Source: internal.sol ====
type Int is int128;

library L {
    function binaryOperator(Int, Int) internal pure returns (Int) {}
    function unaryOperator(Int) internal pure returns (Int) {}
}

using {L.binaryOperator as +} for Int global;
using {L.unaryOperator as -} for Int global;

==== Source: public.sol ====
type Int is int128;

library L {
    function binaryOperator(Int, Int) public pure returns (Int) {}
    function unaryOperator(Int) public pure returns (Int) {}
}

using {L.binaryOperator as +} for Int global;
using {L.unaryOperator as -} for Int global;
