//
//  example_section.swift
//  swift_ui_101
//
//  Created by Abdullah Oğuz on 29.10.2021.
//

import SwiftUI

struct SampleListView: View {
    
    let iconArray: Array = ["square.and.pencil", "trash.fill", "folder.fill.badge.plus", "paperplane.fill"]
    
    let iconTextArray: Array = ["Not", "Trash", "Add Folder", "Location"]
    
    var body: some View {

        VStack{
            NavigationView{
                List(content: {
                    // liste içinde konumlandırma
                    HStack{
                        Image(systemName: "pencil" )
                        Text("New Item")
                        Spacer()
                        Image(systemName: "chevron.right")
                    }
                    Text("second text")
                    Text("Helloo")
                    Text("Helloo")
                    
                   // Section ilgili viewi ayrı bölümlere ayırır
                    Section {
                        HStack{
                            Image(systemName: "pencil" )
                            Text("New Item")
                            Spacer()
                            Image(systemName: "chevron.right")
                        }
                        Text("second text")
                        Text("Helloo")
                        Text("Helloo")
                    }
                    ForEach(iconArray, id: \.self) {
                        (item) in Image(systemName: item)
                    }
                }).navigationTitle(Text("Favorite"))
            }
        }
    }
}

struct example_section_Previews: PreviewProvider {
    static var previews: some View {
        SampleListView()
    }
}

