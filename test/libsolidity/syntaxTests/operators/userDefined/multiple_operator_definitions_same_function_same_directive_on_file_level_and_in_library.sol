type Int is int;

using {L.add as +} for Int;

library L {
    using {L.add as +} for Int;
    using {add as +} for Int;

    function add(Int, Int) internal pure returns (Int) {}
}
