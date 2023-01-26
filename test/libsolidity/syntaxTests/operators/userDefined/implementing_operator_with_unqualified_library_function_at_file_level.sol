type B32 is bytes32;

library L {
    function publicOperator(B32, B32) public pure returns (B32) {}
}

using {publicOperator as +} for B32;
// ----
// DeclarationError 7920: (111-125): Identifier not found or not unique.
