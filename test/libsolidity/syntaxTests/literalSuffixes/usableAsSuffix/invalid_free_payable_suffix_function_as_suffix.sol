function suffix(uint x) payable suffix returns (uint) {}

contract C {
    uint a = 1000 suffix;
}
// ----
// TypeError 9559: (0-56): Free functions cannot be payable.
// TypeError 4438: (84-95): The literal suffix must be either a subdenomination or a file-level suffix function.
