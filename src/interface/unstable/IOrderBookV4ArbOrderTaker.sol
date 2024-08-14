// SPDX-License-Identifier: CAL
pragma solidity ^0.8.18;

import {IOrderBookV4OrderTaker} from "../IOrderBookV4OrderTaker.sol";
import {TakeOrdersConfigV3, IOrderBookV4} from "../IOrderBookV4.sol";
import {EvaluableV3} from "../IOrderBookV4.sol";

interface IOrderBookV5ArbOrderTaker is IOrderBookV4OrderTaker {
    function arb3(
        IOrderBookV4 orderBook,
        TakeOrdersConfigV3 calldata takeOrders,
        uint256 minimumSenderOutput,
        EvaluableV3 calldata evaluable
    ) external payable;
}
