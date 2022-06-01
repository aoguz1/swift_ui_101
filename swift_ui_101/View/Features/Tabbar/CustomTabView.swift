//
//  CustomTabView.swift
//  swift_ui_101
//
//  Created by Abdullah Oğuz on 26.05.2022.
//

import SwiftUI

struct CustomTabView: View {
    @State private var selectedIndex = CustomTabEnum.home
    var body: some View {



        VStack {
            Button("Reset"){
                print(selectedIndex)
                selectedIndex = CustomTabEnum.home
            }
            TabView(selection: $selectedIndex) {

                HomeTab().tabItem { Image(systemName: "house");Text("Tab Label 1") }.tag(CustomTabEnum.home)
                StarTab().tabItem { Image(systemName: "star");Text("Tab Label 2") }.tag(CustomTabEnum.star)
                HeartTab().tabItem { Image(systemName: "heart");Text("Tab Label 3") }.tag(CustomTabEnum.heart)
            }
        }


    }
}

struct CustomTabView_Previews: PreviewProvider {
    static var previews: some View {
        CustomTabView()
    }
}

struct HomeTab: View {
    @State private var fruits = [
        "Apple",
        "Banana",
        "Papaya",
        "Mango"
    ]
    var body: some View {
        NavigationView{
            VStack{
                Text("Tab1")
                Text("denemeee")
                NavigationLink {
                    Text("Sample")
                } label: {
                    Label("Lightning", systemImage: "bolt.fill")
                }
                List{
                    ForEach(fruits, id: \.self) { fruit in
                        Text(fruit)
                    }
                }

                .toolbar{
                    EditButton()
                }
        }.navigationTitle("Furuits")
    }
}
}

struct StarTab: View {
    var body: some View {
        Text("Tab2")
    }
}

struct HeartTab: View {
    var body: some View {
       
        Text("heart")
    }
}
