function uintUintUintSuffix(uint, uint, uint) pure suffix returns (uint) { return 1; }
function stringStringStringSuffix(string memory, string memory, string memory) pure suffix returns (uint) { return 1; }
function uintStringSuffix(uint, string memory) pure suffix returns (uint) { return 1; }
function stringUintSuffix(string memory, uint) pure suffix returns (uint) { return 1; }

contract C {
    function f() public pure {
        1 uintUintUintSuffix;
        1 stringStringStringSuffix;
        1 uintStringSuffix;
        1 stringUintSuffix;

        1.1 uintUintUintSuffix;
        1.1 stringStringStringSuffix;
        1.1 uintStringSuffix;
        1.1 stringUintSuffix;

        "a" uintUintUintSuffix;
        "a" stringStringStringSuffix;
        "a" uintStringSuffix;
        "a" stringUintSuffix;
    }
}
// ----
// TypeError 9128: (436-456): Functions that take 3 or more arguments cannot be used as literal suffixes.
// TypeError 9128: (466-492): Functions that take 3 or more arguments cannot be used as literal suffixes.
// TypeError 8838: (502-520): The type of the literal cannot be converted to the parameters of the suffix function.
// TypeError 8838: (530-548): The type of the literal cannot be converted to the parameters of the suffix function.
// TypeError 9128: (559-581): Functions that take 3 or more arguments cannot be used as literal suffixes.
// TypeError 9128: (591-619): Functions that take 3 or more arguments cannot be used as literal suffixes.
// TypeError 8838: (629-649): The type of the literal cannot be converted to the parameters of the suffix function.
// TypeError 8838: (659-679): The type of the literal cannot be converted to the parameters of the suffix function.
// TypeError 9128: (690-712): Functions that take 3 or more arguments cannot be used as literal suffixes.
// TypeError 9128: (722-750): Functions that take 3 or more arguments cannot be used as literal suffixes.
// TypeError 9128: (760-780): Functions that take 2 arguments can only be used as literal suffixes for rational numbers.
// TypeError 9128: (790-810): Functions that take 2 arguments can only be used as literal suffixes for rational numbers.
