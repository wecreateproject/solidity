function zero() pure returns (uint) { return 1; }

contract C {
    function f() public pure {
        1 zero;
        1.1 zero;
        "a" zero;
    }
}
// ----
// TypeError 9128: (103-109): Functions that take no arguments cannot be used as literal suffixes.
// TypeError 9128: (119-127): Functions that take no arguments cannot be used as literal suffixes.
// TypeError 9128: (137-145): Functions that take no arguments cannot be used as literal suffixes.
