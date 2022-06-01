//
//  DateDetailView.swift
//  swift_ui_101
//
//  Created by Abdullah Oğuz on 1.06.2022.
//

import SwiftUI

struct DateDetailView: View {
    // Controller sınıfından aldığımız ortak değişikeni detay sayfasında yazdırdık.
    @EnvironmentObject var envorimentController: EnviromentController
    var body: some View {
        Text(envorimentController.currentDate.description)
    }
}

struct DateDetailView_Previews: PreviewProvider {
    static var previews: some View {
        DateDetailView()
    }
}
