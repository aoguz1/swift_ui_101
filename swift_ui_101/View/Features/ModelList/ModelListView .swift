//
//  ModelListView .swift
//  swift_ui_101
//
//  Created by Abdullah Oğuz on 29.10.2021.
//

import SwiftUI

struct ModelListView_: View {
    var body: some View {
        VStack{
            Text("Hello List View")
            List(TweetModel.tweets) { data in
                TweetCard(tweet: data)
            }
        }
    }
}

struct ModelListView__Previews: PreviewProvider {
    static var previews: some View {
        ModelListView_()
    }
}
