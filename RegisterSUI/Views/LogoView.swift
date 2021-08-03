//
//  LogoView.swift
//  RegisterSUI
//
//  Created by SERGEY VOROBEV on 03.08.2021.
//

import SwiftUI

struct LogoView: View {
    var body: some View {
        ZStack {
            Circle()
                .foregroundColor(Color(#colorLiteral(red: 0.3803921569, green: 0.3921568627, blue: 0.7607843137, alpha: 1)))
                .frame(width: 120, height: 120, alignment: .center)
                .overlay(
                    Circle()
                        .stroke(Color.white, lineWidth: 2)
                        .setShadow()
                )
            
            Image("swift")
                .resizable()
                .foregroundColor(.white)
                .frame(width: 80, height: 80, alignment: .center)
        }
    }
}
