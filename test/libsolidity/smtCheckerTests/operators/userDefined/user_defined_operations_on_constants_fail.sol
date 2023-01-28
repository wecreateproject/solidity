type I16 is int16;
using {
    bitor as |, bitand as &, bitxor as ^, bitnot as ~,
    add as +, sub as -, unsub as -, mul as *, div as /, mod as %,
    eq as ==, noteq as !=, lt as <, gt as >, leq as <=, geq as >=
} for I16;

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
    I16 constant MINUS_TWO = I16.wrap(-2);
    I16 constant ZERO = I16.wrap(0);
    I16 constant ONE = I16.wrap(1);
    I16 constant TWO = I16.wrap(2);
    I16 constant THREE = I16.wrap(3);
    I16 constant FOUR = I16.wrap(4);

    function testBitwise() public pure {
        assert(ONE | TWO == FOUR); // should fail
        assert(ONE & THREE == FOUR); // should fail
        assert(TWO ^ TWO == FOUR); // should fail
        assert(~ONE == FOUR); // should fail
    }

    function testArithmetic() public pure {
        assert(TWO + THREE == FOUR); // should fail
        assert(TWO - TWO == FOUR); // should fail
        assert(-TWO == FOUR); // should fail
        assert(TWO * THREE == FOUR); // should fail
        assert(TWO / TWO == FOUR); // should fail
        assert(TWO % TWO == FOUR); // should fail
    }

    function testComparison() public pure {
        assert(!(TWO == TWO)); // should fail
        assert(TWO != TWO); // should fail
        assert(TWO < TWO); // should fail
        assert(TWO > TWO); // should fail
        assert(!(TWO <= TWO)); // should fail
        assert(!(TWO >= TWO)); // should fail
    }
}
// ====
// SMTEngine: all
// ----
// Warning 6756: (2012-2021): User-defined operators are not yet supported by SMTChecker. This invocation of operator | has been ignored, which may lead to incorrect results.
// Warning 6756: (2012-2029): User-defined operators are not yet supported by SMTChecker. This invocation of operator == has been ignored, which may lead to incorrect results.
// Warning 6756: (2062-2073): User-defined operators are not yet supported by SMTChecker. This invocation of operator & has been ignored, which may lead to incorrect results.
// Warning 6756: (2062-2081): User-defined operators are not yet supported by SMTChecker. This invocation of operator == has been ignored, which may lead to incorrect results.
// Warning 6756: (2114-2123): User-defined operators are not yet supported by SMTChecker. This invocation of operator ^ has been ignored, which may lead to incorrect results.
// Warning 6756: (2114-2131): User-defined operators are not yet supported by SMTChecker. This invocation of operator == has been ignored, which may lead to incorrect results.
// Warning 6156: (2164-2168): User-defined operators are not yet supported by SMTChecker. This invocation of operator ~ has been ignored, which may lead to incorrect results.
// Warning 6756: (2164-2176): User-defined operators are not yet supported by SMTChecker. This invocation of operator == has been ignored, which may lead to incorrect results.
// Warning 6756: (2260-2271): User-defined operators are not yet supported by SMTChecker. This invocation of operator + has been ignored, which may lead to incorrect results.
// Warning 6756: (2260-2279): User-defined operators are not yet supported by SMTChecker. This invocation of operator == has been ignored, which may lead to incorrect results.
// Warning 6756: (2312-2321): User-defined operators are not yet supported by SMTChecker. This invocation of operator - has been ignored, which may lead to incorrect results.
// Warning 6756: (2312-2329): User-defined operators are not yet supported by SMTChecker. This invocation of operator == has been ignored, which may lead to incorrect results.
// Warning 6156: (2362-2366): User-defined operators are not yet supported by SMTChecker. This invocation of operator - has been ignored, which may lead to incorrect results.
// Warning 6756: (2362-2374): User-defined operators are not yet supported by SMTChecker. This invocation of operator == has been ignored, which may lead to incorrect results.
// Warning 6756: (2407-2418): User-defined operators are not yet supported by SMTChecker. This invocation of operator * has been ignored, which may lead to incorrect results.
// Warning 6756: (2407-2426): User-defined operators are not yet supported by SMTChecker. This invocation of operator == has been ignored, which may lead to incorrect results.
// Warning 6756: (2459-2468): User-defined operators are not yet supported by SMTChecker. This invocation of operator / has been ignored, which may lead to incorrect results.
// Warning 6756: (2459-2476): User-defined operators are not yet supported by SMTChecker. This invocation of operator == has been ignored, which may lead to incorrect results.
// Warning 6756: (2509-2518): User-defined operators are not yet supported by SMTChecker. This invocation of operator % has been ignored, which may lead to incorrect results.
// Warning 6756: (2509-2526): User-defined operators are not yet supported by SMTChecker. This invocation of operator == has been ignored, which may lead to incorrect results.
// Warning 6756: (2612-2622): User-defined operators are not yet supported by SMTChecker. This invocation of operator == has been ignored, which may lead to incorrect results.
// Warning 6756: (2656-2666): User-defined operators are not yet supported by SMTChecker. This invocation of operator != has been ignored, which may lead to incorrect results.
// Warning 6756: (2699-2708): User-defined operators are not yet supported by SMTChecker. This invocation of operator < has been ignored, which may lead to incorrect results.
// Warning 6756: (2741-2750): User-defined operators are not yet supported by SMTChecker. This invocation of operator > has been ignored, which may lead to incorrect results.
// Warning 6756: (2785-2795): User-defined operators are not yet supported by SMTChecker. This invocation of operator <= has been ignored, which may lead to incorrect results.
// Warning 6756: (2831-2841): User-defined operators are not yet supported by SMTChecker. This invocation of operator >= has been ignored, which may lead to incorrect results.
// Warning 6328: (2005-2030): CHC: Assertion violation happens here.
// Warning 6328: (2055-2082): CHC: Assertion violation happens here.
// Warning 6328: (2107-2132): CHC: Assertion violation happens here.
// Warning 6328: (2157-2177): CHC: Assertion violation happens here.
// Warning 6328: (2253-2280): CHC: Assertion violation happens here.
// Warning 6328: (2305-2330): CHC: Assertion violation happens here.
// Warning 6328: (2355-2375): CHC: Assertion violation happens here.
// Warning 6328: (2400-2427): CHC: Assertion violation happens here.
// Warning 6328: (2452-2477): CHC: Assertion violation happens here.
// Warning 6328: (2502-2527): CHC: Assertion violation happens here.
// Warning 6328: (2603-2624): CHC: Assertion violation happens here.
// Warning 6328: (2649-2667): CHC: Assertion violation happens here.
// Warning 6328: (2692-2709): CHC: Assertion violation happens here.
// Warning 6328: (2734-2751): CHC: Assertion violation happens here.
// Warning 6328: (2776-2797): CHC: Assertion violation happens here.
// Warning 6328: (2822-2843): CHC: Assertion violation happens here.
