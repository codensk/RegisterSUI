//
//  AnimatedGradientBackground.swift
//  RegisterSUI
//
//  Created by SERGEY VOROBEV on 03.08.2021.
//

import SwiftUI

struct AnimatedGradientBackground: View {
    var gradient = [Color(#colorLiteral(red: 0, green: 0.2, blue: 1, alpha: 1)), Color(#colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)), Color(#colorLiteral(red: 0.9686274529, green: 0.78039217, blue: 0.3450980484, alpha: 1))]
    
    @State private var startPoint = UnitPoint(x: 0, y: 0)
    @State private var endPoint = UnitPoint(x: 0, y: 2)
    
    var body: some View {
        Rectangle()
            .fill(LinearGradient(
                    gradient: Gradient(colors: gradient),
                    startPoint: startPoint,
                    endPoint: endPoint))
            .ignoresSafeArea()
            .onAppear {
                withAnimation (
                    .easeInOut(duration: 3)
                        .repeatForever()) {
                    startPoint = UnitPoint(x: 1, y: -1)
                    endPoint = UnitPoint(x: 0, y: 1)
                }
            }
    }
}

struct AnimatedGradientBackground_Previews: PreviewProvider {
    static var previews: some View {
        AnimatedGradientBackground()
    }
}
