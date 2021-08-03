//
//  TextFieldStyle.swift
//  RegisterSUI
//
//  Created by SERGEY VOROBEV on 03.08.2021.
//

import SwiftUI

struct TextFieldStyle: ViewModifier {
    var backgroundColor: Color
    
    func body(content: Content) -> some View {
        content
            .background(backgroundColor)
            .padding(8)
            .background(
                RoundedRectangle(cornerRadius: 10)
                    .fill(backgroundColor)
                    .setShadow(opacity: 0.5)
            )
    }
}

extension TextField {
    func setStyle(backgroundColor: Color) -> some View {
        modifier(TextFieldStyle(backgroundColor: backgroundColor))
    }
}
