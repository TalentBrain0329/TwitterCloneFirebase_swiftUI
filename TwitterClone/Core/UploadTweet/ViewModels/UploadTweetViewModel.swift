//
//  UploadTweetViewModel.swift
//  TwitterClone
//
//  Created by Muhammad Abbas on 01/03/2022.
//

import Foundation

class UploadTweetViewModel: ObservableObject{
    @Published var didUploadTweet = false
    let service = TweetService()
    
    func uploadTweet(withcaption caption: String){
        service.uploadTweet(caption: caption){ success in
            if success{
                self.didUploadTweet = true
            }else{
                
            }
        }
    }
}
