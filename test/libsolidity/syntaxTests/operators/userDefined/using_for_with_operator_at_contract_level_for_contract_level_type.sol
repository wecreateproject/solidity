library L {
    type FixedBytes is bytes10;
}

function add(L.FixedBytes, L.FixedBytes) pure returns (L.FixedBytes) {}
function unsub(L.FixedBytes, L.FixedBytes) pure returns (L.FixedBytes) {}

library LX {
    using {add as +, unsub as -} for L.FixedBytes;
}

contract CX {
    using {add as +, unsub as -} for L.FixedBytes;
}
