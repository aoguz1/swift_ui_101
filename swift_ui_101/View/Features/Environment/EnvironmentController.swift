//
//  EnvironmentController.swift
//  swift_ui_101
//
//  Created by Abdullah Oğuz on 1.06.2022.
//

import Foundation

class EnviromentController: ObservableObject {
    
    //Published uygulamadaki ağacında tepede durup bu değeri diğer sayfalarda kolaylıkla çağırıp üzerinde işlemler yapmamızı sağlar
    // bununla birlikte yapılan işlemlerde ortak bir yerden yönetildiği için bu özelliğin kullanımına dikkat edilmesi gerekir.
    @Published var currentDate: Date = Date()
}
