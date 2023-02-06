type B32 is bytes32;

library L {
    using {externalOperator as +} for B32;
    using {publicOperator as -} for B32;
    using {internalOperator as *} for B32;
    using {privateOperator as /} for B32;

    function externalOperator(B32, B32) external pure returns (B32) {}
    function publicOperator(B32, B32) public pure returns (B32) {}
    function internalOperator(B32, B32) internal pure returns (B32) {}
    function privateOperator(B32, B32) private pure returns (B32) {}
}
// ----
// TypeError 7775: (45-61): Only pure free functions can be used to define operators.
// TypeError 7775: (88-102): Only pure free functions can be used to define operators.
// TypeError 7775: (129-145): Only pure free functions can be used to define operators.
// TypeError 7775: (172-187): Only pure free functions can be used to define operators.
