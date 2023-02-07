==== Source: s0.sol ====
type Int is int;

==== Source: s1.sol ====
import "s0.sol";
using {add1 as +} for Int global;
using {unsub1 as -} for Int global;

function add1(Int, Int) pure returns (Int) {}
function unsub1(Int) pure returns (Int) {}

==== Source: s2.sol ====
import "s0.sol";
using {add2 as +} for Int global;
using {unsub2 as -} for Int global;

function add2(Int, Int) pure returns (Int) {}
function unsub2(Int) pure returns (Int) {}

==== Source: s3.sol ====
import "s1.sol";
import "s2.sol";
contract C {
    function f() public {
        Int.wrap(0) + Int.wrap(0);
        -Int.wrap(0);
    }
}
