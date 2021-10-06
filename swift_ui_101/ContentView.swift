//
//  ContentView.swift
//  swift_ui_101
//
//  Created by Abdullah Oğuz on 8.09.2021.
//

import SwiftUI

struct IconFiledView : View {
    // state kavramı: eğer component üzerinde bir değişikliği dinlemek istediğimiz zaman ilgili yere @State yazarak ekran üzerindeki değişiklikleri alabilir pozisyona geliyoruz.
    var iconName = "hello"
    @State var textFieldValue = ""
    fileprivate func exampleStateView() -> some View {
        return  VStack{
            TextField("Placeholder", text: $textFieldValue)
            Text(textFieldValue).bold().font(.largeTitle)
            
            Image(systemName: textFieldValue.lowercased()).frame(width: 200, height: 200, alignment: .center)
        }
    }
    
    var body: some View {
        CircleTextImageView(title: "ATOMIC WIDGET", imageURL: "https://picsum.photos/seed/picsum/200/300").frame(width: 200, height: 200, alignment: .center)
    }
    
    
}


struct ContentView: View {
    fileprivate func drawScreen() -> some View {
        return VStack {
                HStack{
                    Text("JFSJHKFJKSA")
                    RoundedRectangle(cornerRadius: 40).foregroundColor(Color.blue)
                };
                HStack(alignment: .bottom){
                    Circle().foregroundColor(Color.gray)
                    RoundedRectangle(cornerRadius: 20, style: RoundedCornerStyle.circular).foregroundColor(Color.orange)
                    Spacer(minLength: 10)
                    Text("DEN")
                    Spacer().padding()
                    Text("Hello, world!")
                        .padding()
                    Spacer()
                    Text("Deneme")
                    Spacer()
                }
            }
    }
    
    fileprivate func groupFinded() -> some View {
        return VStack {
            Group{
                // MARK: Hello rectangle
                // TODO: draw shadow rectangle
                VStack{
                    Text("Hello").accentColor(.blue).font(.callout)
                }.frame(width: 200, height: 200, alignment: .center).background(Color.green).shadow(radius: 10)
            }
            Group{
                VStack{
                    Image(systemName: "paperplane").foregroundColor(.orange)
                    Text("Hello2").foregroundColor(.blue)
                }
            }
        }
    }
    
    var body: some View {
        groupFinded()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        IconFiledView()
    }
}
