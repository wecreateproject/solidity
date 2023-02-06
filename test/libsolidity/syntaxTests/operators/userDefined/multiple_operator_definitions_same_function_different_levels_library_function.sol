type Int is int;

library L {
    using {add as +, unsub as -} for Int;
    using {L.add as +, L.unsub as -} for Int;

    function add(Int, Int) internal pure returns (Int) {}
    function unsub(Int) internal pure returns (Int) {}
}

using {L.add as +, L.unsub as -} for Int;

contract C {
    using {L.add as +, L.unsub as -} for Int;
}

library X {
    using {L.add as +, L.unsub as -} for Int;
}
// ----
// TypeError 7775: (41-44): Only pure free functions can be used to define operators.
// TypeError 7775: (51-56): Only pure free functions can be used to define operators.
// TypeError 7775: (83-88): Only pure free functions can be used to define operators.
// TypeError 7775: (95-102): Only pure free functions can be used to define operators.
// TypeError 7775: (242-247): Only pure free functions can be used to define operators.
// TypeError 7775: (254-261): Only pure free functions can be used to define operators.
// TypeError 7775: (302-307): Only pure free functions can be used to define operators.
// TypeError 7775: (314-321): Only pure free functions can be used to define operators.
// TypeError 7775: (363-368): Only pure free functions can be used to define operators.
// TypeError 7775: (375-382): Only pure free functions can be used to define operators.
