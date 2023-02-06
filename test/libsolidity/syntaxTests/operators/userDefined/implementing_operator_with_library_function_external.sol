type Int is int128;

library L {
    function externalOperator(Int, Int) external pure returns (Int) {}
}

using {L.externalOperator as +} for Int;
