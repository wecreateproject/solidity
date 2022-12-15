function zero() pure suffix returns (uint) { return 1; }

contract C {
    function f() public pure {
        1 zero;
        1.1 zero;
        "a" zero;
    }
}
// ----
// TypeError 9128: (110-116): Functions that take no arguments cannot be used as literal suffixes.
// TypeError 9128: (126-134): Functions that take no arguments cannot be used as literal suffixes.
// TypeError 9128: (144-152): Functions that take no arguments cannot be used as literal suffixes.
