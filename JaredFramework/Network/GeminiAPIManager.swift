//
//  GeminiAPIManager.swift
//  iMessageGemini
//
//  Created by Hunter Ward on 1/27/24.
//

import Foundation

class GeminiAPIManager {
    static let shared = GeminiAPIManager()

    private init() {}

    func fetchData(completion: @escaping (Result<Data, Error>) -> Void) {
        guard let url = URL(string: "https://api.gemini.com/v1/some_endpoint") else {
            completion(.failure(GeminiAPIError.invalidURL))
            return
        }

        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        request.addValue("Bearer \(APIKey.value)", forHTTPHeaderField: "Authorization")

        let task = URLSession.shared.dataTask(with: request) { data, response, error in
            if let error = error {
                completion(.failure(error))
                return
            }
            guard let data = data else {
                completion(.failure(GeminiAPIError.noData))
                return
            }
            completion(.success(data))
        }
        task.resume()
    }

    enum GeminiAPIError: Error {
        case invalidURL
        case noData
    }
}
