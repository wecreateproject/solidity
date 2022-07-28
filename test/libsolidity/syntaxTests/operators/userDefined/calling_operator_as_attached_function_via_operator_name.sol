type Int is int16;

using {add as +} for Int;

function add(Int, Int) returns (Int) {}

function f() {
    Int a;
    a.+(a);
}
// ----
// ParserError 2314: (120-121): Expected identifier but got '+'
