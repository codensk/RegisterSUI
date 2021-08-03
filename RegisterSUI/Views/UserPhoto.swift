//
//  UserPhoto.swift
//  RegisterSUI
//
//  Created by SERGEY VOROBEV on 03.08.2021.
//

import SwiftUI

struct UserPhoto: View {
    @EnvironmentObject var userManager: UserManager
    
    var body: some View {
        Image(userManager.photo)
            .resizable()
            .frame(maxWidth: 150, maxHeight: 150)
    }
}

struct UserPhoto_Previews: PreviewProvider {
    static var previews: some View {
        UserPhoto()
    }
}
