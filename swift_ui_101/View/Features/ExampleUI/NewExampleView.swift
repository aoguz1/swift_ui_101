//
//  NewExampleView.swift
//  swift_ui_101
//
//  Created by Abdullah Oğuz on 11.12.2021.
//

import SwiftUI

struct NewExampleView: View {
    var body: some View {
        VStack{
            VStack(spacing: 20){
                Text("Welcome to the Weather App").bold().font(.title)
                Text("Plase share your current location to get weather in your area..").padding()
                
            }.multilineTextAlignment(.center)
            
         
            
        }.frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

struct NewExampleView_Previews: PreviewProvider {
    static var previews: some View {
        NewExampleView()
    }
}
