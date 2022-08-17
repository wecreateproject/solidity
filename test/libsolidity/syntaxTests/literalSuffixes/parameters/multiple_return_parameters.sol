struct S { uint x; }

function uintUintSuffix(uint) pure returns (uint, uint) {
    return (1, 2);
}

function bytesStructContractSuffix(string memory s) pure returns (bytes memory, S memory, C) {
    return (bytes(s), S(42), C(address(0)));
}

contract C {
    function f() public pure returns (uint, uint) {
        return 1 uintUintSuffix;
    }

    function g() public pure returns (bytes memory, S memory, C) {
        return "abcd" bytesStructContractSuffix;
    }
}
// ----
// TypeError 7848: (325-341): Literal suffix functions must return exactly one value.
// TypeError 7848: (432-464): Literal suffix functions must return exactly one value.
