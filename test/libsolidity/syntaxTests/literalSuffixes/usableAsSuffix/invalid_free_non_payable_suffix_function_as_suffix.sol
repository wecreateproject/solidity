function suffix(uint x) suffix returns (uint) {}

contract C {
    uint a = 1000 suffix;
}
// ----
// TypeError 4438: (76-87): The literal suffix needs to be a pre-defined suffix or a file-level pure function.
