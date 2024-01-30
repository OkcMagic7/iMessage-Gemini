//
//  GeminiService.swift
//  iMessageGemini
//
//  Created by Hunter Ward on 1/27/24.
//

import Foundation

class GeminiService {
    static let shared = GeminiService()

    private let apiManager = GeminiAPIManager.shared

    private init() {}

    func fetchData(completion: @escaping (Result<Data, Error>) -> Void) {
        apiManager.fetchData { result in
            switch result {
            case .success(let data):
                // Process the data as required
                completion(.success(data))
            case .failure(let error):
                completion(.failure(error))
            }
        }
    }

    // Add more functions as needed for different API interactions
}

