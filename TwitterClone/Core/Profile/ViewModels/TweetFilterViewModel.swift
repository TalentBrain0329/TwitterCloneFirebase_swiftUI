//
//  TweetFilterViewModel.swift
//  TwitterClone
//
//  Created by Muhammad Abbas on 13/02/2022.
//

import Foundation

enum TweetFilterViewModel: Int, CaseIterable{
    case tweets
    case replies
    case likes
    
    var title: String{
        switch self{
        case .tweets: return "Tweets"
        case .replies: return "Replies"
        case .likes: return "Likes"
        }
    }
}
