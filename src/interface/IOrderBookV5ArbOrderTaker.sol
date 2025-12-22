// SPDX-License-Identifier: LicenseRef-DCL-1.0
// SPDX-FileCopyrightText: Copyright (c) 2020 thedavidmeister
pragma solidity ^0.8.18;

import {IOrderBookV5OrderTaker} from "./IOrderBookV5OrderTaker.sol";
import {
    TakeOrdersConfigV4,
    IOrderBookV5,
    TaskV2,
    //forge-lint: disable-next-line(unused-import)
    EvaluableV4
} from "./IOrderBookV5.sol";

interface IOrderBookV5ArbOrderTaker is IOrderBookV5OrderTaker {
    function arb4(IOrderBookV5 orderBook, TakeOrdersConfigV4 calldata takeOrders, TaskV2 calldata task)
        external
        payable;
}
