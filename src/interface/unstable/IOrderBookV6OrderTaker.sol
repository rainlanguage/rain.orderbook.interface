// SPDX-License-Identifier: LicenseRef-DCL-1.0
// SPDX-FileCopyrightText: Copyright (c) 2020 thedavidmeister
pragma solidity ^0.8.18;

import {Float} from "./IOrderBookV6.sol";

interface IOrderBookV6OrderTaker {
    /// @notice Called by `IOrderBookV6` when `takeOrders` is called with
    /// non-zero data, if it caused a non-zero input amount. I.e. if the order(s)
    /// taker received some tokens. Input and output directions are relative to
    /// the `IOrderBookV6OrderTaker` contract. If the order(s) taker had an
    /// active debt from a flash loan then that debt will be paid _before_
    /// calculating any input amounts sent.
    /// i.e. the debt is deducted from the input amount before this callback is
    /// called.
    /// @param inputToken The token that was sent to `IOrderBookV6OrderTaker`.
    /// @param outputToken The token that `IOrderBookV6` will attempt to pull
    /// from `IOrderBookV6OrderTaker` after this callback returns.
    /// @param inputAmountSent The amount of `inputToken` that was sent to
    /// `IOrderBookV6OrderTaker`.
    /// @param totalOutputAmount The total amount of `outputToken` that
    /// `IOrderBookV6` will attempt to pull from `IOrderBookV6OrderTaker` after
    /// this callback returns.
    /// @param takeOrdersData The data passed to `takeOrders` by the caller.
    function onTakeOrders2(
        address inputToken,
        address outputToken,
        Float inputAmountSent,
        Float totalOutputAmount,
        bytes calldata takeOrdersData
    ) external;
}
