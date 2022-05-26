//
//  UserViewDetail.swift
//  swift_ui_101
//
//  Created by Abdullah Oğuz on 26.05.2022.
//

import SwiftUI

struct UserViewDetail: View {
    let user:NavigationUserModel
    var body: some View {
        Text(user.name)
    }
}

struct UserViewDetail_Previews: PreviewProvider {
    static var previews: some View {
        UserViewDetail(user: NavigationUserModel.fakeUserData.first!)
    }
}
