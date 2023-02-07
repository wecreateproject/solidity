type Int is uint128;

// No error if the operator is not actually used
using {add1 as +, add2 as +} for Int global;
using {unsub1 as -, unsub2 as -} for Int global;

function add1(Int, Int) pure returns (Int) {}
function add2(Int, Int) pure returns (Int) {}
function unsub1(Int) pure returns (Int) {}
function unsub2(Int) pure returns (Int) {}
