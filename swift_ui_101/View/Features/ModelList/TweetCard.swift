//
//  TweetCard.swift
//  swift_ui_101
//
//  Created by Abdullah Oğuz on 31.10.2021.
//

import SwiftUI

struct TweetCard: View {
    let tweet: TweetModel
    
    var body: some View {
        
        VStack(alignment: .leading) {
            Text(tweet.userName).padding(.bottom).font(.title)
            HStack {
                Text(tweet.body).font(.title3).fontWeight(.medium)
                Spacer()
                Image(systemName: "heart.fill").foregroundColor(.pink)
                Text("\(tweet.likeCount ?? 0)").fontWeight(.light)
                // eğer likeCount değeri gelmezse 0 yazsın
            }
   
        }.padding().frame(height: 100, alignment: .top).overlay(RoundedRectangle(cornerRadius: 20).stroke(.purple, lineWidth: 2))
    }
}

struct TweetCard_Previews: PreviewProvider {
    static var previews: some View {
        TweetCard(tweet: TweetModel.fakeTweet).previewLayout(.sizeThatFits)
    }
}
