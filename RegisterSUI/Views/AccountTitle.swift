//
//  AccountTitle.swift
//  RegisterSUI
//
//  Created by SERGEY VOROBEV on 03.08.2021.
//

import SwiftUI

struct AccountTitle: View {
    @EnvironmentObject var userManager: UserManager
    
    @State var scale: CGFloat = 1
    
    var body: some View {
        Text("Hello, \(userManager.userName)!")
            .foregroundColor(.black)
            .font(.title)
            .fontWeight(.light)
            .scaleEffect(scale)
            .onAppear {
                let baseAnimation = Animation.easeInOut(duration: 1)
                let repeated = baseAnimation.repeatForever(autoreverses: true)
                
                withAnimation(repeated) {
                    scale = 0.9
                }
            }
    }
}

struct AccountTitle_Previews: PreviewProvider {
    static var previews: some View {
        AccountTitle()
    }
}
