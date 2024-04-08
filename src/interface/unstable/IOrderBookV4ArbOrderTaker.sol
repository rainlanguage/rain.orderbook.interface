// SPDX-License-Identifier: CAL
pragma solidity ^0.8.18;

import {IOrderBookV4OrderTaker} from "./IOrderBookV4OrderTaker.sol";
import {TakeOrdersConfigV3} from "./IOrderBookV4.sol";

interface IOrderBookV4ArbOrderTaker is IOrderBookV4OrderTaker {
    function arb2(TakeOrdersConfigV3 calldata takeOrders, uint256 minimumSenderOutput) external payable;
}
