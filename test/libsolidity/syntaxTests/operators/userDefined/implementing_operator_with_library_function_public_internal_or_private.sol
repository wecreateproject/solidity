type Int is int128;

library L {
    function publicOperator(Int, Int) public returns (Int) {}
    function internalOperator(Int, Int) internal returns (Int) {}
    function privateOperator(Int, Int) private returns (Int) {}
}

using {L.publicOperator as +} for Int;
using {L.internalOperator as +} for Int;
// FIXME: Being able to use private library functions in a file-level 'using for' is a bug.
// See: https://github.com/ethereum/solidity/issues/13764
using {L.privateOperator as +} for Int;
