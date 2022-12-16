function suffix(uint x) view suffix returns (uint) {}

contract C {
    uint a = 1000 suffix;
}
// ----
// TypeError 4438: (81-92): The literal suffix must be either a subdenomination or a file-level suffix function.
