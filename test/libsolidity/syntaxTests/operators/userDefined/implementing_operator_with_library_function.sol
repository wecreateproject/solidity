==== Source: external.sol ====
type Int is int128;

library L {
    function binaryOperator(Int, Int) external pure returns (Int) {}
    function unaryOperator(Int) external pure returns (Int) {}

    using {L.binaryOperator as *} for Int;
    using {L.unaryOperator as ~} for Int;
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

==== Source: internal.sol ====
type Int is int128;

library L {
    function binaryOperator(Int, Int) internal pure returns (Int) {}
    function unaryOperator(Int) internal pure returns (Int) {}

    using {L.binaryOperator as *} for Int;
    using {L.unaryOperator as ~} for Int;
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

==== Source: private.sol ====
type Int is int128;

library L {
    function binaryOperator(Int, Int) private pure returns (Int) {}
    function unaryOperator(Int) private pure returns (Int) {}

    using {L.binaryOperator as *} for Int;
    using {L.unaryOperator as ~} for Int;
}
==== Source: public.sol ====
type Int is int128;

library L {
    function binaryOperator(Int, Int) public pure returns (Int) {}
    function unaryOperator(Int) public pure returns (Int) {}

    using {L.binaryOperator as *} for Int;
    using {L.unaryOperator as ~} for Int;
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
