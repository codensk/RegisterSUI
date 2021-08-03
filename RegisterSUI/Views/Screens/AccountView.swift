//
//  AccountView.swift
//  RegisterSUI
//
//  Created by SERGEY VOROBEV on 03.08.2021.
//

import SwiftUI

struct AccountView: View {
    var body: some View {
        ZStack {
            AccountViewBackground()
            
            VStack(spacing: 50) {
                AccountTitle()
                
                UserPhoto()
                
                LogoutButton()
            }
        }
    }
}

struct AccountView_Previews: PreviewProvider {
    static var previews: some View {
        AccountView().environmentObject(UserManager(userName: "Demo", password: "Demo"))
    }
}
