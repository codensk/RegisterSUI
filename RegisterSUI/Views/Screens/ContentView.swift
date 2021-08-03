//
//  ContentView.swift
//  RegisterSUI
//
//  Created by SERGEY VOROBEV on 03.08.2021.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var userManager: UserManager
    
    var body: some View {
        Group {
            
            switch userManager.currentUserScreen {
            case .Home:
                RegisterView()
            case .Account:
                AccountView().transition(.move(edge: .trailing))
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(UserManager())
    }
}
