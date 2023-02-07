type Int is int;

function add(Int, Int) pure returns (Int) {}

contract C {
    using {add as +} for *;
}

contract D {
    using {add as +} for * global;
}
// ----
// SyntaxError 3349: (81-104): The type has to be specified explicitly when attaching specific functions.
