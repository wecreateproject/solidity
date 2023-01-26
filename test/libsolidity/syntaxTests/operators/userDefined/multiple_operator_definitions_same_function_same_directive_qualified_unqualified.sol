type Int is int32;

library L {
    using {add as +, L.add as +} for Int;

    function add(Int, Int) internal pure returns(Int) {}
}
