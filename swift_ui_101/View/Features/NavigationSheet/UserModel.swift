//
//  UserModel.swift
//  swift_ui_101
//
//  Created by Abdullah Oğuz on 25.05.2022.
//

import Foundation


struct NavigationUserModel : Identifiable{
    var id: UUID = UUID()
    let name: String
}

/// samples navigation user data
extension NavigationUserModel {
    static let user :[NavigationUserModel] = [NavigationUserModel(name: "Oğuz"),NavigationUserModel(name: "Cem"),NavigationUserModel(name: "Carolll")]
    
    static let fakeUserData = [NavigationUserModel(name: "Abdullah")]
}
