function nullSuffix(uint) pure {}

contract C {
    function f() public pure {
        return 1 nullSuffix;
    }
}
// ----
// TypeError 7848: (94-106): Literal suffix functions must return exactly one value.
