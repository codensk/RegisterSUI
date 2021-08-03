//
//  RegisterView+getContextBackgroundColor.swift
//  RegisterSUI
//
//  Created by SERGEY VOROBEV on 03.08.2021.
//

import SwiftUI

extension RegisterView {
    func getContextBackgroundColor(_ value: String) -> Color {
        if value.isEmpty {
            return .white
        }
        
        if userManager.validate(value) {
            return Color(#colorLiteral(red: 1, green: 0.7960784314, blue: 0.7960784314, alpha: 1))
        }
        
        return Color(#colorLiteral(red: 0.8580410624, green: 0.9881504383, blue: 0.8043193816, alpha: 1))
    }
}
