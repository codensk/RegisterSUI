//
//  RegisterSUIApp.swift
//  RegisterSUI
//
//  Created by SERGEY VOROBEV on 03.08.2021.
//

import SwiftUI

@main
struct RegisterSUIApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(UserManager())
        }
    }
}
