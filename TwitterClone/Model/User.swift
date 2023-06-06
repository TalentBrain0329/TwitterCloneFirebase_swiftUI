//
//  User.swift
//  TwitterClone
//
//  Created by Muhammad Abbas on 22/02/2022.
//

import FirebaseFirestoreSwift

struct User: Identifiable, Decodable{
    @DocumentID var id: String?
    let username: String
    let fullname: String
    let profileImageUrl: String
    let email: String
}


