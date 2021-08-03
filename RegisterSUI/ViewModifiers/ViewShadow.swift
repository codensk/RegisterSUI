//
//  ViewShadow.swift
//  RegisterSUI
//
//  Created by SERGEY VOROBEV on 03.08.2021.
//

import SwiftUI

struct ViewShadow: ViewModifier {
    var opacity: Double
    
    func body(content: Content) -> some View {
        content
            .shadow(color: .black.opacity(opacity), radius: 10)
    }
}

extension View {
    func setShadow(opacity: Double = 1.0) -> some View {
        modifier(ViewShadow(opacity: opacity))
    }
}
