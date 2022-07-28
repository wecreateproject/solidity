type Int is uint128;

// No error if the operator is not actually used
using {add1 as +, add2 as +} for Int;
using {unsub1 as -, unsub2 as -} for Int;

function add1(Int, Int) returns (Int) {}
function add2(Int, Int) returns (Int) {}
function unsub1(Int) returns (Int) {}
function unsub2(Int) returns (Int) {}
