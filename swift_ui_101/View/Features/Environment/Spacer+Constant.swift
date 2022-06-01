//
//  Spacer+Constant.swift
//  swift_ui_101
//
//  Created by Abdullah Oğuz on 1.06.2022.
//

import SwiftUI


// Spacer nesnesine extension ile yeni özellikler kazandırdık Sayfalarda Spacer.minVertical diyerek çağırabiliyoruz.
extension Spacer {
    static let minVertical = Spacer(minLength: 20)
    static let minVerticalHigh = Spacer(minLength: 40)
}
