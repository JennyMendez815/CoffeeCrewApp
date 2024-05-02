//
//  CoffeePost.swift
//  CoffeeCrewApp
//
//  Created by Juan Aldama on 5/1/24.
//

import Foundation


@Observable class CoffeePost: Identifiable {
    var id = UUID()
    var user: String
    var likes: [String]
    var details: String
    var caption: String
    var photoName: String
    var storeName: String
    
    init(id: UUID = UUID(), user: String, likes: [String], details: String, caption: String, photoName: String, storeName: String) {
        self.id = id
        self.user = user
        self.likes = likes
        self.details = details
        self.caption = caption
        self.photoName = photoName
        self.storeName = storeName
    }
    
    func formattedLikes() -> String {
        
        if (likes.count == 1) {
            return "liked by " + likes[0]
        }
        else if (likes.count == 2) {
            return "liked by " + likes[0] + " and 1 other"
        }
        else if (likes.count > 2) {
            return "liked by " + likes[0] + " and " + String(likes.count - 2) + " others"
        }
        
        return String()
    }
}
