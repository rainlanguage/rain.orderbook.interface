// SPDX-License-Identifier: LicenseRef-DCL-1.0
// SPDX-FileCopyrightText: Copyright (c) 2020 thedavidmeister
pragma solidity ^0.8.18;

import {IOrderBookV3OrderTaker} from "./IOrderBookV3OrderTaker.sol";
import {TakeOrdersConfigV2} from "./IOrderBookV3.sol";

interface IOrderBookV3ArbOrderTaker is IOrderBookV3OrderTaker {
    function arb(TakeOrdersConfigV2 calldata takeOrders, uint256 minimumSenderOutput) external payable;
}
