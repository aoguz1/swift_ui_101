//
//  NavigatioınView.swift
//  swift_ui_101
//
//  Created by Abdullah Oğuz on 25.05.2022.
//

import SwiftUI

struct NavigationPage: View {
    
    
    @State private var isPresent: Bool = false;
    
    var body: some View {
        VStack {
            NavigationView{
        
                List(NavigationUserModel.user) { data in
                    
                    // List Navigation
                    NavigationLink {
                        UserViewDetail(user: data)
                    } label: {
                        Text(data.name)
                    }

                }
                // Here open iOS guadline open page sheet 
                .sheet(isPresented: $isPresent, onDismiss: {
                    print("Dismiss")
                }, content: {
                    Button {
                        isPresent.toggle()
                    } label: {
                        Text("Close Sheet")
                    }

                }).navigationTitle("Navigation View").toolbar {
                    ToolbarItem {
                        // Example Navifation
                        Button("Open Sheet"){
                            isPresent.toggle()
                        }
                    }
                }
            }
        }
    }
}

struct NavigationPage_Previews: PreviewProvider {
    static var previews: some View {
        NavigationPage()
    }
}
