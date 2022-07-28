type Int is int16;

using {add as +} for Int;

function add(Int, Int) returns (Int) {}

function f() {
    Int a;
    a.add(a);
}
// ----
// TypeError 9582: (118-123): Member "add" not found or not visible after argument-dependent lookup in Int.
