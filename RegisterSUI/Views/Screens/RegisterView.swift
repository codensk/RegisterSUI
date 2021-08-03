//
//  RegisterView.swift
//  RegisterSUI
//
//  Created by SERGEY VOROBEV on 03.08.2021.
//

import SwiftUI

struct RegisterView: View {
    @EnvironmentObject var userManager: UserManager

    var body: some View {
        ZStack {
            AnimatedGradientBackground(gradient: [Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)), Color(#colorLiteral(red: 0.9607843161, green: 0.7058823705, blue: 0.200000003, alpha: 1)), Color(#colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1))])
            
            VStack {
                Text("User registration")
                    .foregroundColor(.white)
                    .font(.title)
                    .fontWeight(.light)
                    .setShadow()
                
                Spacer()
                
                LogoView()
                
                Spacer()
                
                VStack(spacing: 15) {
                    TextField("Username", text: $userManager.userName)
                        .setStyle(backgroundColor: getContextBackgroundColor( userManager.userName))
                    
                    TextField("Password", text: $userManager.password)
                        .setStyle(backgroundColor: getContextBackgroundColor( userManager.password))
                }
                
                Spacer()
                
                SignUpButton(action: {
                    withAnimation {
                        userManager.userRegister(
                            userName: userManager.userName,
                            password: userManager.password
                        )
                    }
                }, state: !userManager.userValidate(
                    userName:  userManager.userName,
                    password: userManager.password
                ))
                
                Spacer()
                
            }
            .padding()
        }
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView().environmentObject(UserManager())
    }
}
