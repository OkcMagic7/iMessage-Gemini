//
//  IMessageService.swift
//  iMessageGemini
//
//  Created by Hunter Ward on 1/27/24.
//

import Foundation

class IMessageService {
    static let shared = IMessageService()

    private init() {}

    func sendMessage(_ message: Message, to recipientId: String, completion: @escaping (Result<Void, Error>) -> Void) {
        // Implementation for sending a message via iMessage.
        // Note: Directly sending iMessages programmatically is restricted.
        // This is a placeholder for where you would handle message data.
        completion(.failure(IMessageServiceError.notSupported))
    }

    enum IMessageServiceError: Error {
        case notSupported
    }
}

