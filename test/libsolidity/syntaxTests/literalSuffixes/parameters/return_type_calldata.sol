struct S {
    uint x;
}

function structSuffix(uint x) pure returns (S calldata s) {
    assembly {
        s := x
    }
}

function arraySuffix(uint x) pure returns (uint[5] calldata a) {
    assembly {
        a := x
    }
}

contract C {
    function f() public pure {
        1 structSuffix;
        1 arraySuffix;
    }
}
// ----
// TypeError 7251: (281-295): Literal suffix functions can only return value types and reference types stored in memory.
// TypeError 7251: (305-318): Literal suffix functions can only return value types and reference types stored in memory.
