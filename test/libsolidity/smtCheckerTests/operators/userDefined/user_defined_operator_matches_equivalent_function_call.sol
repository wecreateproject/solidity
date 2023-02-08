type I16 is int16;
using {
    bitor as |, bitand as &, bitxor as ^, bitnot as ~,
    add as +, sub as -, unsub as -, mul as *, div as /, mod as %,
    eq as ==, noteq as !=, lt as <, gt as >, leq as <=, geq as >=
} for I16 global;

function bitor(I16 x, I16 y) pure returns (I16) { return I16.wrap(I16.unwrap(x) | I16.unwrap(y)); }
function bitand(I16 x, I16 y) pure returns (I16) { return I16.wrap(I16.unwrap(x) & I16.unwrap(y)); }
function bitxor(I16 x, I16 y) pure returns (I16) { return I16.wrap(I16.unwrap(x) ^ I16.unwrap(y)); }
function bitnot(I16 x) pure returns (I16) { return I16.wrap(~I16.unwrap(x)); }

function add(I16 x, I16 y) pure returns (I16) { return I16.wrap(I16.unwrap(x) + I16.unwrap(y)); }
function sub(I16 x, I16 y) pure returns (I16) { return I16.wrap(I16.unwrap(x) - I16.unwrap(y)); }
function unsub(I16 x) pure returns (I16) { return I16.wrap(-I16.unwrap(x)); }
function mul(I16 x, I16 y) pure returns (I16) { return I16.wrap(I16.unwrap(x) * I16.unwrap(y)); }
function div(I16 x, I16 y) pure returns (I16) { return I16.wrap(I16.unwrap(x) / I16.unwrap(y)); }
function mod(I16 x, I16 y) pure returns (I16) { return I16.wrap(I16.unwrap(x) % I16.unwrap(y)); }

function eq(I16 x, I16 y) pure returns (bool) { return I16.unwrap(x) == I16.unwrap(y); }
function noteq(I16 x, I16 y) pure returns (bool) { return I16.unwrap(x) != I16.unwrap(y); }
function lt(I16 x, I16 y) pure returns (bool) { return I16.unwrap(x) < I16.unwrap(y); }
function gt(I16 x, I16 y) pure returns (bool) { return I16.unwrap(x) > I16.unwrap(y); }
function leq(I16 x, I16 y) pure returns (bool) { return I16.unwrap(x) <= I16.unwrap(y); }
function geq(I16 x, I16 y) pure returns (bool) { return I16.unwrap(x) >= I16.unwrap(y); }

contract C {
    function testBitwise(I16 x, I16 y) public pure {
        assert(x | y == bitor(x, y)); // FIXME: should hold
        assert(x & y == bitand(x, y)); // FIXME: should hold
        assert(x ^ y == bitxor(x, y)); // FIXME: should hold
        assert(~x == bitnot(x)); // FIXME: should hold
    }

    function testArithmetic(I16 x, I16 y) public pure {
        assert(x + y == add(x, y)); // FIXME: should hold
        assert(x - y == sub(x, y)); // FIXME: should hold
        assert(-x == unsub(x)); // FIXME: should hold
        assert(x * y == mul(x, y)); // FIXME: should hold
        //assert(x / y == div(x, y)); // FIXME: ICE due to https://github.com/ethereum/solidity/issues/13900
        assert(x % y == mod(x, y)); // FIXME: should hold
    }

    function testComparison(I16 x, I16 y) public pure {
        assert((x == y) == eq(x, y)); // FIXME: should hold
        assert((x != y) == noteq(x, y)); // FIXME: should hold
        assert((x < y) == lt(x, y)); // FIXME: should hold
        assert((x > y) == gt(x, y)); // FIXME: should hold
        assert((x <= y) == leq(x, y)); // FIXME: should hold
        assert((x >= y) == geq(x, y)); // FIXME: should hold
    }
}
// ====
// SMTEngine: all
// ----
// Warning 6756: (1796-1801): User-defined operators are not yet supported by SMTChecker. This invocation of operator | has been ignored, which may lead to incorrect results.
// Warning 6756: (1796-1816): User-defined operators are not yet supported by SMTChecker. This invocation of operator == has been ignored, which may lead to incorrect results.
// Warning 6756: (1856-1861): User-defined operators are not yet supported by SMTChecker. This invocation of operator & has been ignored, which may lead to incorrect results.
// Warning 6756: (1856-1877): User-defined operators are not yet supported by SMTChecker. This invocation of operator == has been ignored, which may lead to incorrect results.
// Warning 6756: (1917-1922): User-defined operators are not yet supported by SMTChecker. This invocation of operator ^ has been ignored, which may lead to incorrect results.
// Warning 6756: (1917-1938): User-defined operators are not yet supported by SMTChecker. This invocation of operator == has been ignored, which may lead to incorrect results.
// Warning 6156: (1978-1980): User-defined operators are not yet supported by SMTChecker. This invocation of operator ~ has been ignored, which may lead to incorrect results.
// Warning 6756: (1978-1993): User-defined operators are not yet supported by SMTChecker. This invocation of operator == has been ignored, which may lead to incorrect results.
// Warning 6756: (2096-2101): User-defined operators are not yet supported by SMTChecker. This invocation of operator + has been ignored, which may lead to incorrect results.
// Warning 6756: (2096-2114): User-defined operators are not yet supported by SMTChecker. This invocation of operator == has been ignored, which may lead to incorrect results.
// Warning 6756: (2154-2159): User-defined operators are not yet supported by SMTChecker. This invocation of operator - has been ignored, which may lead to incorrect results.
// Warning 6756: (2154-2172): User-defined operators are not yet supported by SMTChecker. This invocation of operator == has been ignored, which may lead to incorrect results.
// Warning 6156: (2212-2214): User-defined operators are not yet supported by SMTChecker. This invocation of operator - has been ignored, which may lead to incorrect results.
// Warning 6756: (2212-2226): User-defined operators are not yet supported by SMTChecker. This invocation of operator == has been ignored, which may lead to incorrect results.
// Warning 6756: (2266-2271): User-defined operators are not yet supported by SMTChecker. This invocation of operator * has been ignored, which may lead to incorrect results.
// Warning 6756: (2266-2284): User-defined operators are not yet supported by SMTChecker. This invocation of operator == has been ignored, which may lead to incorrect results.
// Warning 6756: (2433-2438): User-defined operators are not yet supported by SMTChecker. This invocation of operator % has been ignored, which may lead to incorrect results.
// Warning 6756: (2433-2451): User-defined operators are not yet supported by SMTChecker. This invocation of operator == has been ignored, which may lead to incorrect results.
// Warning 6756: (2555-2561): User-defined operators are not yet supported by SMTChecker. This invocation of operator == has been ignored, which may lead to incorrect results.
// Warning 6756: (2615-2621): User-defined operators are not yet supported by SMTChecker. This invocation of operator != has been ignored, which may lead to incorrect results.
// Warning 6756: (2678-2683): User-defined operators are not yet supported by SMTChecker. This invocation of operator < has been ignored, which may lead to incorrect results.
// Warning 6756: (2737-2742): User-defined operators are not yet supported by SMTChecker. This invocation of operator > has been ignored, which may lead to incorrect results.
// Warning 6756: (2796-2802): User-defined operators are not yet supported by SMTChecker. This invocation of operator <= has been ignored, which may lead to incorrect results.
// Warning 6756: (2857-2863): User-defined operators are not yet supported by SMTChecker. This invocation of operator >= has been ignored, which may lead to incorrect results.
// Warning 3944: (672-701): CHC: Underflow (resulting value less than -32768) happens here.
// Warning 4984: (672-701): CHC: Overflow (resulting value larger than 32767) happens here.
// Warning 3944: (770-799): CHC: Underflow (resulting value less than -32768) happens here.
// Warning 4984: (770-799): CHC: Overflow (resulting value larger than 32767) happens here.
// Warning 3944: (946-975): CHC: Underflow (resulting value less than -32768) happens here.
// Warning 4984: (946-975): CHC: Overflow (resulting value larger than 32767) happens here.
// Warning 4281: (1142-1171): CHC: Division by zero happens here.
// Warning 6328: (1789-1817): CHC: Assertion violation happens here.
// Warning 6328: (1849-1878): CHC: Assertion violation happens here.
// Warning 6328: (1910-1939): CHC: Assertion violation happens here.
// Warning 6328: (1971-1994): CHC: Assertion violation happens here.
// Warning 6328: (2089-2115): CHC: Assertion violation happens here.
// Warning 6328: (2147-2173): CHC: Assertion violation happens here.
// Warning 6328: (2205-2227): CHC: Assertion violation happens here.
// Warning 6328: (2259-2285): CHC: Assertion violation happens here.
// Warning 6328: (2426-2452): CHC: Assertion violation happens here.
// Warning 6328: (2547-2575): CHC: Assertion violation happens here.
// Warning 6328: (2607-2638): CHC: Assertion violation happens here.
// Warning 6328: (2670-2697): CHC: Assertion violation happens here.
// Warning 6328: (2729-2756): CHC: Assertion violation happens here.
// Warning 6328: (2788-2817): CHC: Assertion violation happens here.
// Warning 6328: (2849-2878): CHC: Assertion violation happens here.
