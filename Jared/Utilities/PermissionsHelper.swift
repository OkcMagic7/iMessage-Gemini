//
//  PermissionsHelper.swift
//  iMessageGemini
//
//  Created by Hunter Ward on 1/30/24.
//

import Foundation
import AVFoundation

class PermissionsHelper {
    static let shared = PermissionsHelper()

    private init() {}

    func checkCameraPermission(completion: @escaping (Bool) -> Void) {
        switch AVCaptureDevice.authorizationStatus(for: .video) {
            case .authorized:
                completion(true)
            case .notDetermined:
                AVCaptureDevice.requestAccess(for: .video) { granted in
                    DispatchQueue.main.async {
                        completion(granted)
                    }
                }
            case .denied, .restricted:
                completion(false)
            @unknown default:
                completion(false)
        }
    }

    // Add more methods for other permissions as needed
}
