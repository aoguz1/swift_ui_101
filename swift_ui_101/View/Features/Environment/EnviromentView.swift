//
//  EnviromentView.swift
//  swift_ui_101
//
//  Created by Abdullah Oğuz on 1.06.2022.
//

import SwiftUI

struct EnviromentView: View {
    @Environment(\.verticalSizeClass) var  verticalSize
    // Publish değişkenlerimizi sayfada çağırmak için stateObject özelliğini kullandık.
    @StateObject var envorinmenController = EnviromentController()
    var body: some View {
        NavigationView {
            VStack{
                Text(envorinmenController.currentDate.description)
                HStack{
                    verticalSize == .regular ? Spacer.minVerticalHigh : Spacer.minVertical
                    DatePicker(selection: $envorinmenController.currentDate , label: { /*@START_MENU_TOKEN@*/Text("Date")/*@END_MENU_TOKEN@*/ })
                    verticalSize == .regular ? Spacer.minVerticalHigh :  Spacer.minVertical
                }
                NavigationLink {
                    DateDetailView()
                } label: {
                    Text("Detail Date View")
                }

            }
            // navigation yapacağımız sayfaya controller sınıfımızı vererek gönderilecek sayfa ortak değişkenleri kullanmasını sağladık.
        }.environmentObject(envorinmenController)
    }
}

struct EnviromentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            EnviromentView()
            if #available(iOS 15.0, *) {
                EnviromentView()
                    .previewInterfaceOrientation(.landscapeLeft)
            } else {
                // Fallback on earlier versions
            }
        }
    }
}
