pragma solidity ^0.8.0;

contract InfiniteRegeneration303 {
    uint256 public index;
    uint256 public constant MAX_INDEX = 303;

    event IndexAdvanced(uint256 indexed newIndex);

    function advanceIndex() external {
        index += 1;

        if (index > MAX_INDEX) {
            index = 0;
        }

        emit IndexAdvanced(index);
    }
}
