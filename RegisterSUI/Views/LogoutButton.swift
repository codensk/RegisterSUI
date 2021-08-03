//
//  LogoutButton.swift
//  RegisterSUI
//
//  Created by SERGEY VOROBEV on 03.08.2021.
//

import SwiftUI

struct LogoutButton: View {
    @EnvironmentObject var userManager: UserManager

    var body: some View {
        Button(action: userManager.logoutUser) {
            Text("Logout")
                .padding(EdgeInsets(top: 8, leading: 15, bottom: 8, trailing: 15))
        }
        .foregroundColor(.white)
        .background(
            Color(.black)
                .opacity(0.8))
    }
}

struct LogoutButton_Previews: PreviewProvider {
    static var previews: some View {
        LogoutButton()
    }
}
