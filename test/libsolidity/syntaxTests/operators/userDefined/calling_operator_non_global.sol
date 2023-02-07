type Int is int;
using {add as +} for Int;
using {unsub as -} for Int;

function add(Int, Int) pure returns (Int) {}
function unsub(Int) pure returns (Int) {}

function f() pure {
    Int.wrap(0) + Int.wrap(0);
    -Int.wrap(0);
}
