type Int is int256;

using {
    add as +,
    div as /,
    unsub as -,
    bitnot as ~,
    gt as >,
    lt as <
} for Int global;

function add(Int x, Int y) pure returns (int256) {}
function div(Int x, Int y) pure {}
function unsub(Int) pure returns (Int, Int) {}
function bitnot(Int) pure returns (int256) {}
function gt(Int, Int) pure returns (Int) {}
function lt(Int, Int) pure returns (bool, Int) {}

function f() pure {
    Int.wrap(0) + Int.wrap(1);
    Int.wrap(0) / Int.wrap(0);
    -Int.wrap(0);
    ~Int.wrap(0);
    Int.wrap(0) < Int.wrap(0);
    Int.wrap(0) > Int.wrap(0);
}
// ----
// TypeError 7743: (167-175): Wrong return parameters in operator definition. The function "add" needs to return exactly one value of type Int to be used for the operator +.
// TypeError 7743: (211-211): Wrong return parameters in operator definition. The function "div" needs to return exactly one value of type Int to be used for the operator /.
// TypeError 7743: (247-257): Wrong return parameters in operator definition. The function "unsub" needs to return exactly one value of type Int to be used for the operator -.
// TypeError 7743: (295-303): Wrong return parameters in operator definition. The function "bitnot" needs to return exactly one value of type Int to be used for the operator ~.
// TypeError 7743: (342-347): Wrong return parameters in operator definition. The function "gt" needs to return exactly one value of type bool to be used for the operator >.
// TypeError 7743: (386-397): Wrong return parameters in operator definition. The function "lt" needs to return exactly one value of type bool to be used for the operator <.
