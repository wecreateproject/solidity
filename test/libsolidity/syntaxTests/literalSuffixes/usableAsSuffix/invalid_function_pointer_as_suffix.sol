function suffix(uint x) pure suffix returns (uint) { return x; }

contract C {
    function (uint) pure returns (uint) storagePtr = suffix;

    function f() public pure {
        function (uint) pure returns (uint) localPtr = suffix;
        1000 localPtr;
        1000 storagePtr;
    }
}
// ----
// TypeError 4438: (243-256): The literal suffix needs to be a pre-defined suffix or a file-level pure function.
// TypeError 4438: (266-281): The literal suffix needs to be a pre-defined suffix or a file-level pure function.
