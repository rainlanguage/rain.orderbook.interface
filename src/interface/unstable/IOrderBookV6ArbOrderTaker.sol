// SPDX-License-Identifier: LicenseRef-DCL-1.0
// SPDX-FileCopyrightText: Copyright (c) 2020 thedavidmeister
pragma solidity ^0.8.18;

import {IOrderBookV6OrderTaker} from "./IOrderBookV6OrderTaker.sol";
import {TakeOrdersConfigV5, IOrderBookV6, TaskV2} from "./IOrderBookV6.sol";

interface IOrderBookV6ArbOrderTaker is IOrderBookV6OrderTaker {
    function arb5(IOrderBookV6 orderBook, TakeOrdersConfigV5 calldata takeOrders, TaskV2 calldata task)
        external
        payable;
}
