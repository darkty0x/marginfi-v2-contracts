// SPDX-License-Identifier: AGPL-3.0-or-later

// Copyright (C) 2024 Dai Foundation
//
// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU Affero General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
//
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU Affero General Public License for more details.
//
// You should have received a copy of the GNU Affero General Public License
// along with this program.  If not, see <https://www.gnu.org/licenses/>.

pragma solidity ^0.8.21;

contract MessengerMock {
    address public xDomainMessageSender;

    event SentMessage(address indexed target, address sender, bytes message, uint256 messageNonce, uint256 gasLimit);

    function setXDomainMessageSender(address xDomainMessageSender_) external {
        xDomainMessageSender = xDomainMessageSender_;
    }

    function sendMessage(address _target, bytes calldata _message, uint32 _minGasLimit) external payable {
        emit SentMessage(_target, msg.sender, _message, 0, _minGasLimit);
    }
}
