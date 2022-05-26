//
//  TweetModel.swift
//  swift_ui_101
//
//  Created by Abdullah Oğuz on 29.10.2021.
//

import Foundation


struct TweetModel:Identifiable {
    var id: UUID = UUID()
    let userName: String
    var body: String
    let likeCount: Int?
}


extension TweetModel {
    static let tweets = [
        TweetModel(userName: "aoguz", body: "new tweet", likeCount: 2),
        TweetModel(userName: "fatihemree", body: "new tweet", likeCount: 1),
        TweetModel(userName: "fatih.oguz", body: "new tweet", likeCount: 23),
        TweetModel(userName: "gdgdenizli", body: "new tweet", likeCount: 21)
    ]
    
    static let fakeTweet = TweetModel(userName: "aoguz", body: "new tweet", likeCount: 2)
}
