//
//  ImageUploader.swift
//  TwitterClone
//
//  Created by Muhammad Abbas on 17/02/2022.
//

import Firebase
import UIKit

struct ImageUploader{
    static func uploadImage(image: UIImage, completion: @escaping (String) -> ()){
        guard let imageData = image.jpegData(compressionQuality: 0.5) else { return }
        
        let filename = NSUUID().uuidString
        let ref = Storage.storage().reference(withPath: "/profile_image/\(filename).jpg")

        ref.putData(imageData, metadata: nil) { _ , error in
            if let error = error{
                print("DEBUG: Failed to upload image with error: \(error.localizedDescription)")
                return
            }

            ref.downloadURL { imageUrl, _ in
                guard let imageUrl = imageUrl?.absoluteString else { return }
                completion(imageUrl)
            }
        }
        
    }
}
