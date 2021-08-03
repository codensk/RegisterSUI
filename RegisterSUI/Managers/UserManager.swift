//
//  UserManager.swift
//  RegisterSUI
//
//  Created by SERGEY VOROBEV on 03.08.2021.
//
import Combine

final class UserManager: ObservableObject {
    @Published var isRegistered = false
    @Published var userName = ""
    @Published var password = ""
    
    let photo = "photo"
    
    private let settings = SettingsManager.shared
    
    init() {
        checkUserRegistered()
    }
    
    init(userName: String, password: String) {
        self.userName = userName
        self.password = password
        
        checkUserRegistered()
    }
    
    func userRegister(userName: String, password: String) {
        if userValidate(userName: userName, password: password) {
            self.userName = userName
            self.password = password
            
            isRegistered = true
            
            saveUser(username: userName, password: password)
        } else {
            isRegistered = false
        }
    }
    
    func userValidate(userName: String, password: String) -> Bool {
        if validate(userName) || validate(password) {
            return false
        }
        
        return true
    }
    
    func validate(_ value: String) -> Bool {
        (0...3).contains(value.count)
    }
    
    func logoutUser() {
        settings.removeValue(for: "userName")
        settings.removeValue(for: "password")
        
        self.userName = ""
        self.password = ""
        
        isRegistered = false
    }
    
    private func checkUserRegistered() {
        if let userName = settings.getValue(for: "userName"),
           let password = settings.getValue(for: "password") {
            self.userName = userName
            self.password = password
            
            isRegistered = true
        }
    }
    
    private func saveUser(username: String, password: String) {
        settings.setValue(for: "userName", with: username)
        settings.setValue(for: "password", with: password)
    }
}
