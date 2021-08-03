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
            LinearGradient(
                gradient: Gradient(colors: [Color(#colorLiteral(red: 0.6078431373, green: 0.3647058824, blue: 0.8470588235, alpha: 1)), Color(#colorLiteral(red: 0.1882352941, green: 0.4823529412, blue: 0.9607843137, alpha: 1))]),
                startPoint: .top,
                endPoint: .bottom
            )
            .ignoresSafeArea()
            
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
