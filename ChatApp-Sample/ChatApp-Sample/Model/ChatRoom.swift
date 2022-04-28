//
//  ChatRoom.swift
//  ChatApp-Sample
//
//  Created by 木元健太郎 on 2022/04/27.
//

import Foundation
import Firebase

class ChatRoom {
    
    let latestMessageId: String
    let memebers: [String]
    let createdAt: Timestamp
    
    var latestMessage: Message?
    var documentId: String?
    var partnerUser: User?
    
    init(dic: [String: Any]) {
        self.latestMessageId = dic["latestMessageId"] as? String ?? ""
        self.memebers = dic["memebers"] as? [String] ?? [String]()
        self.createdAt = dic["createdAt"] as? Timestamp ?? Timestamp()
    }
    
}

