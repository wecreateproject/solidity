using {f as +} for uint global;
using {f as +} for uint[2] global;
using {f as +} for mapping(uint => uint) global;
using {f as +} for function (uint) pure returns (uint) global;
using {f as +} for string global;

function f(uint, uint) pure returns (uint) {}
// ----
// TypeError 5332: (7-8): Operators can only be implemented for user-defined value types.
// TypeError 5332: (32-33): Operators can only be implemented for user-defined value types.
// TypeError 5332: (60-61): Operators can only be implemented for user-defined value types.
// TypeError 5332: (102-103): Operators can only be implemented for user-defined value types.
// TypeError 5332: (158-159): Operators can only be implemented for user-defined value types.
