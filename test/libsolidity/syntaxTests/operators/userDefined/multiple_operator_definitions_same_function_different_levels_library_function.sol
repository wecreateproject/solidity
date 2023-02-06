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
