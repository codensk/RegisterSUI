//
//  SignUpButton.swift
//  RegisterSUI
//
//  Created by SERGEY VOROBEV on 03.08.2021.
//

import SwiftUI

struct SignUpButton: View {
    var action: () -> Void
    var state = true
    
    var body: some View {
        Button("Sign Up") {
            action()
        }
        .setStyle()
        .disabled(state)
        .opacity(state ? 0.5 : 1)
    }
}

struct SignUpButton_Previews: PreviewProvider {
    static var previews: some View {
        SignUpButton(action: {})
    }
}
