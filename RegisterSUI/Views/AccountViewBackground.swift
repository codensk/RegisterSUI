//
//  AccountViewBackground.swift
//  RegisterSUI
//
//  Created by SERGEY VOROBEV on 03.08.2021.
//

import SwiftUI

struct AccountViewBackground: View {
    var body: some View {
        Image("background")
            .resizable()
            .blur(radius: 5, opaque: true)
            .ignoresSafeArea()
        
        LinearGradient(
            gradient: Gradient(
                colors: [.black, .clear]
            ),
            startPoint: .top,
            endPoint: .bottom)
            .opacity(0.8)
            .ignoresSafeArea()
    }
}

struct AccountViewBackground_Previews: PreviewProvider {
    static var previews: some View {
        AccountViewBackground()
    }
}
