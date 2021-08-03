//
//  AccountView.swift
//  RegisterSUI
//
//  Created by SERGEY VOROBEV on 03.08.2021.
//

import SwiftUI

struct AccountView: View {
    @EnvironmentObject var userManager: UserManager
    
    var body: some View {
        ZStack {
            AnimatedGradientBackground(gradient: [Color(#colorLiteral(red: 0, green: 0.2, blue: 1, alpha: 1)), Color(#colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)), Color(#colorLiteral(red: 0.9686274529, green: 0.78039217, blue: 0.3450980484, alpha: 1))])
            
            VStack(spacing: 40) {
                Spacer()
                
                AccountTitle()
                
                UserPhoto()
                
                LogoutButton()
                
                Spacer()
            }
        }
    }
}

struct AccountView_Previews: PreviewProvider {
    static var previews: some View {
        AccountView().environmentObject(UserManager(userName: "Demo", password: "Demo"))
    }
}
