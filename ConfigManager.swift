//
//  ConfigManager.swift
//  iMessageGemini
//
//  Created by Hunter Ward on 1/30/24.
//

import Foundation

class ConfigManager {
    static let shared = ConfigManager()

    var apiBaseUrl: String = ""
    var apiKey: String = ""

    private init() {
        loadAppConfig()
    }

    private func loadAppConfig() {
        // Load JSON configuration
        if let url = Bundle.main.url(forResource: "appConfig", withExtension: "json"),
           let data = try? Data(contentsOf: url) {
            let decoder = JSONDecoder()
            if let jsonConfig = try? decoder.decode(AppConfig.self, from: data) {
                apiBaseUrl = jsonConfig.apiBaseUrl
                apiKey = jsonConfig.apiKey
                // Set other configuration properties
            }
        }

        // Load plist configuration
        if let url = Bundle.main.url(forResource: "environment", withExtension: "plist"),
           let data = try? Data(contentsOf: url),
           let result = try? PropertyListSerialization.propertyList(from: data, options: [], format: nil) as? [String: AnyObject] {
            apiBaseUrl = result["apiBaseUrl"] as? String ?? apiBaseUrl
            apiKey = result["apiKey"] as? String ?? apiKey
            // Override other properties as needed
        }
    }
}

struct AppConfig: Codable {
    let apiBaseUrl: String
    let apiKey: String
    // Define other properties as per your JSON structure
}
