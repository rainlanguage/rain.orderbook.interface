// SPDX-License-Identifier: LicenseRef-DCL-1.0
// SPDX-FileCopyrightText: Copyright (c) 2020 thedavidmeister
pragma solidity ^0.8.18;

import {IOrderBookV4OrderTaker} from "../IOrderBookV4OrderTaker.sol";
import {TakeOrdersConfigV3, IOrderBookV4, TaskV1} from "../IOrderBookV4.sol";
import {EvaluableV3} from "../IOrderBookV4.sol";

interface IOrderBookV5ArbOrderTaker is IOrderBookV4OrderTaker {
    function arb3(IOrderBookV4 orderBook, TakeOrdersConfigV3 calldata takeOrders, TaskV2 calldata task)
        external
        payable;
}
