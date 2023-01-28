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
        assert(ONE | TWO == THREE); // FIXME: should hold
        assert(ONE & THREE == ZERO); // FIXME: should hold
        assert(TWO ^ TWO == ZERO); // FIXME: should hold
        assert(~ONE == MINUS_TWO); // FIXME: should hold
    }

    function testArithmetic() public pure {
        assert(TWO + TWO == FOUR); // FIXME: should hold
        assert(TWO - TWO == ZERO); // FIXME: should hold
        assert(-TWO == MINUS_TWO); // FIXME: should hold
        assert(TWO * TWO == FOUR); // FIXME: should hold
        assert(TWO / TWO == ONE); // FIXME: should hold
        assert(TWO % TWO == ZERO); // FIXME: should hold
    }

    function testComparison() public pure {
        assert(TWO == TWO); // FIXME: should hold
        assert(!(TWO != TWO)); // FIXME: should hold
        assert(!(TWO < TWO)); // FIXME: should hold
        assert(!(TWO > TWO)); // FIXME: should hold
        assert(TWO <= TWO); // FIXME: should hold
        assert(TWO >= TWO); // FIXME: should hold
    }
}
// ====
// SMTEngine: all
// ----
// Warning 6756: (2012-2021): User-defined operators are not yet supported by SMTChecker. This invocation of operator | has been ignored, which may lead to incorrect results.
// Warning 6756: (2012-2030): User-defined operators are not yet supported by SMTChecker. This invocation of operator == has been ignored, which may lead to incorrect results.
// Warning 6756: (2070-2081): User-defined operators are not yet supported by SMTChecker. This invocation of operator & has been ignored, which may lead to incorrect results.
// Warning 6756: (2070-2089): User-defined operators are not yet supported by SMTChecker. This invocation of operator == has been ignored, which may lead to incorrect results.
// Warning 6756: (2129-2138): User-defined operators are not yet supported by SMTChecker. This invocation of operator ^ has been ignored, which may lead to incorrect results.
// Warning 6756: (2129-2146): User-defined operators are not yet supported by SMTChecker. This invocation of operator == has been ignored, which may lead to incorrect results.
// Warning 6156: (2186-2190): User-defined operators are not yet supported by SMTChecker. This invocation of operator ~ has been ignored, which may lead to incorrect results.
// Warning 6756: (2186-2203): User-defined operators are not yet supported by SMTChecker. This invocation of operator == has been ignored, which may lead to incorrect results.
// Warning 6756: (2294-2303): User-defined operators are not yet supported by SMTChecker. This invocation of operator + has been ignored, which may lead to incorrect results.
// Warning 6756: (2294-2311): User-defined operators are not yet supported by SMTChecker. This invocation of operator == has been ignored, which may lead to incorrect results.
// Warning 6756: (2351-2360): User-defined operators are not yet supported by SMTChecker. This invocation of operator - has been ignored, which may lead to incorrect results.
// Warning 6756: (2351-2368): User-defined operators are not yet supported by SMTChecker. This invocation of operator == has been ignored, which may lead to incorrect results.
// Warning 6156: (2408-2412): User-defined operators are not yet supported by SMTChecker. This invocation of operator - has been ignored, which may lead to incorrect results.
// Warning 6756: (2408-2425): User-defined operators are not yet supported by SMTChecker. This invocation of operator == has been ignored, which may lead to incorrect results.
// Warning 6756: (2465-2474): User-defined operators are not yet supported by SMTChecker. This invocation of operator * has been ignored, which may lead to incorrect results.
// Warning 6756: (2465-2482): User-defined operators are not yet supported by SMTChecker. This invocation of operator == has been ignored, which may lead to incorrect results.
// Warning 6756: (2522-2531): User-defined operators are not yet supported by SMTChecker. This invocation of operator / has been ignored, which may lead to incorrect results.
// Warning 6756: (2522-2538): User-defined operators are not yet supported by SMTChecker. This invocation of operator == has been ignored, which may lead to incorrect results.
// Warning 6756: (2578-2587): User-defined operators are not yet supported by SMTChecker. This invocation of operator % has been ignored, which may lead to incorrect results.
// Warning 6756: (2578-2595): User-defined operators are not yet supported by SMTChecker. This invocation of operator == has been ignored, which may lead to incorrect results.
// Warning 6756: (2686-2696): User-defined operators are not yet supported by SMTChecker. This invocation of operator == has been ignored, which may lead to incorrect results.
// Warning 6756: (2738-2748): User-defined operators are not yet supported by SMTChecker. This invocation of operator != has been ignored, which may lead to incorrect results.
// Warning 6756: (2791-2800): User-defined operators are not yet supported by SMTChecker. This invocation of operator < has been ignored, which may lead to incorrect results.
// Warning 6756: (2843-2852): User-defined operators are not yet supported by SMTChecker. This invocation of operator > has been ignored, which may lead to incorrect results.
// Warning 6756: (2893-2903): User-defined operators are not yet supported by SMTChecker. This invocation of operator <= has been ignored, which may lead to incorrect results.
// Warning 6756: (2943-2953): User-defined operators are not yet supported by SMTChecker. This invocation of operator >= has been ignored, which may lead to incorrect results.
// Warning 6328: (2005-2031): CHC: Assertion violation happens here.
// Warning 6328: (2063-2090): CHC: Assertion violation happens here.
// Warning 6328: (2122-2147): CHC: Assertion violation happens here.
// Warning 6328: (2179-2204): CHC: Assertion violation happens here.
// Warning 6328: (2287-2312): CHC: Assertion violation happens here.
// Warning 6328: (2344-2369): CHC: Assertion violation happens here.
// Warning 6328: (2401-2426): CHC: Assertion violation happens here.
// Warning 6328: (2458-2483): CHC: Assertion violation happens here.
// Warning 6328: (2515-2539): CHC: Assertion violation happens here.
// Warning 6328: (2571-2596): CHC: Assertion violation happens here.
// Warning 6328: (2679-2697): CHC: Assertion violation happens here.
// Warning 6328: (2729-2750): CHC: Assertion violation happens here.
// Warning 6328: (2782-2802): CHC: Assertion violation happens here.
// Warning 6328: (2834-2854): CHC: Assertion violation happens here.
// Warning 6328: (2886-2904): CHC: Assertion violation happens here.
// Warning 6328: (2936-2954): CHC: Assertion violation happens here.
