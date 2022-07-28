using {add as +, unsub as -} for U;

type U is uint;

function add(U, U) returns (U) {}
function unsub(U) returns (U) {}

contract C {
    function fromBool() public {
        U u;

        u + true;
        true + u;
        -true;
    }

    function fromUint() public {
        U u;
        uint32 u32;

        u + u32;
        u32 + u;
        -u32;
    }
}
// ----
// TypeError 5653: (190-198): The type of the second operand of this user-defined binary operator + does not match the type of the first operand, which is U.
// TypeError 2271: (208-216): Built-in binary operator + cannot be applied to types bool and U.
// TypeError 4907: (226-231): Built-in unary operator - cannot be applied to type bool.
// TypeError 5653: (315-322): The type of the second operand of this user-defined binary operator + does not match the type of the first operand, which is U.
// TypeError 2271: (332-339): Built-in binary operator + cannot be applied to types uint32 and U.
// TypeError 4907: (349-353): Built-in unary operator - cannot be applied to type uint32. Unary negation is only allowed for signed integers.
