//
//  iMessageServiceTest.swift
//  iMessageGemini
//
//  Created by Hunter Ward on 1/30/24.
//

import Foundation
import XCTest
@testable import YourProjectName // Replace with your actual project name

class IMessageServiceTests: XCTestCase {

    var iMessageService: IMessageService!

    override func setUpWithError() throws {
        super.setUp()
        iMessageService = IMessageService.shared
    }

    override func tearDownWithError() throws {
        iMessageService = nil
        super.tearDown()
    }

    func testSendMessage() {
        // Implement your test for sending a message
        // Note: You will likely need to mock this functionality
    }

    // Add more tests as needed
}
