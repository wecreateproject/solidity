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

// ----
// TypeError 7775: (external.sol:177-193): Only pure free functions can be used to define operators.
// TypeError 7775: (external.sol:220-235): Only pure free functions can be used to define operators.
// TypeError 7775: (external.sol:261-277): Only pure free functions can be used to define operators.
// TypeError 7775: (external.sol:300-315): Only pure free functions can be used to define operators.
// TypeError 7775: (external.sol:356-372): Only pure free functions can be used to define operators.
// TypeError 7775: (external.sol:399-414): Only pure free functions can be used to define operators.
// TypeError 7775: (external.sol:456-472): Only pure free functions can be used to define operators.
// TypeError 7775: (external.sol:499-514): Only pure free functions can be used to define operators.
// TypeError 7775: (internal.sol:177-193): Only pure free functions can be used to define operators.
// TypeError 7775: (internal.sol:220-235): Only pure free functions can be used to define operators.
// TypeError 7775: (internal.sol:261-277): Only pure free functions can be used to define operators.
// TypeError 7775: (internal.sol:300-315): Only pure free functions can be used to define operators.
// TypeError 7775: (internal.sol:356-372): Only pure free functions can be used to define operators.
// TypeError 7775: (internal.sol:399-414): Only pure free functions can be used to define operators.
// TypeError 7775: (internal.sol:456-472): Only pure free functions can be used to define operators.
// TypeError 7775: (internal.sol:499-514): Only pure free functions can be used to define operators.
// TypeError 7775: (private.sol:175-191): Only pure free functions can be used to define operators.
// TypeError 7775: (private.sol:218-233): Only pure free functions can be used to define operators.
// TypeError 7775: (public.sol:173-189): Only pure free functions can be used to define operators.
// TypeError 7775: (public.sol:216-231): Only pure free functions can be used to define operators.
// TypeError 7775: (public.sol:257-273): Only pure free functions can be used to define operators.
// TypeError 7775: (public.sol:296-311): Only pure free functions can be used to define operators.
// TypeError 7775: (public.sol:352-368): Only pure free functions can be used to define operators.
// TypeError 7775: (public.sol:395-410): Only pure free functions can be used to define operators.
// TypeError 7775: (public.sol:452-468): Only pure free functions can be used to define operators.
// TypeError 7775: (public.sol:495-510): Only pure free functions can be used to define operators.
