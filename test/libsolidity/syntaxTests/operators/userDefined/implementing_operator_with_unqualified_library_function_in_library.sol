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
