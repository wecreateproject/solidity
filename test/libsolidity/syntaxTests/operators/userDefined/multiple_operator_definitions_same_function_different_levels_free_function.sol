type Int is int;

function add(Int, Int) pure returns (Int) {}
function unsub(Int) pure returns (Int) {}

using {add as +, unsub as -} for Int global;

contract C {
    using {add as +, unsub as -} for Int;
}

library X {
    using {add as +, unsub as -} for Int;
}
