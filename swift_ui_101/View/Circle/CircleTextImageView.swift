//
//  CircleTextImageView.swift
//  swift_ui_101
//
//  Created by Abdullah Oğuz on 6.10.2021.
//

import SwiftUI
import Kingfisher

struct CircleTextImageView: View {
    let title: String
    let imageURL: String
    
    var body: some View {
        VStack{
            KFImage(URL(string: imageURL)!).fade(duration: 0.25).resizable().clipShape(Circle()).shadow(radius: 25)
            Text(title).bold()
        }
    }
}

struct CircleTextImageView_Previews: PreviewProvider {
    static var previews: some View {
        CircleTextImageView(title: "Hello", imageURL: "https://picsum.photos/seed/picsum/200/300").frame(width: 200, height: 200, alignment: .center).previewLayout(.sizeThatFits)
    }
}
