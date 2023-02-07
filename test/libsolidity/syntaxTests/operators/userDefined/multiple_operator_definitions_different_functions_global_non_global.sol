type Int is int;

using {add as +} for Int global;
using {add2 as +} for Int;
using {unsub as -} for Int global;
using {unsub2 as -} for Int;

function add(Int, Int) pure returns (Int) {}
function add2(Int, Int) pure returns (Int) {}
function unsub(Int) pure returns (Int) {}
function unsub2(Int) pure returns (Int) {}

function testBinary() pure returns (Int) {
    return Int.wrap(1) + Int.wrap(2);
}

function testUnary() pure returns (Int) {
    return -Int.wrap(2);
}
// ----
// TypeError 5583: (374-399): User-defined binary operator + has more than one definition matching the operand types visible in the current scope.
// TypeError 4705: (457-469): User-defined unary operator - has more than one definition matching the operand type visible in the current scope.
