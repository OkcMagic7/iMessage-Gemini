//
//  Configuration.swift
//  iMessageGemini
//
//  Created by Hunter Ward on 1/30/24.
//

import Foundation

class Configuration {
    static let shared = Configuration()

    private init() {
        // Load configuration settings here
        // For example, load from a plist or set default values
    }

    // Example configuration properties
    var apiBaseUrl: String {
        return "https://api.example.com"  // Replace with actual value
    }

    var apiKey: String {
        return "your_api_key"  // Replace with actual value
    }

    // Add more configuration properties as needed
}
