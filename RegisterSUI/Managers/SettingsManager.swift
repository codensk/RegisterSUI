//
//  SettingsManager.swift
//  RegisterSUI
//
//  Created by SERGEY VOROBEV on 03.08.2021.
//

import Foundation

class SettingsManager {
    static var shared = SettingsManager()
    
    private let userDefaults = UserDefaults.standard
    
    func setValue(for key: String, with value: String) {
        userDefaults.set(value, forKey: key)
    }
    
    func getValue(for key: String) -> String? {
        userDefaults.string(forKey: key)
    }
    
    func removeValue(for key: String) {
        userDefaults.removeObject(forKey: key)
        userDefaults.synchronize()
    }
    
    private init() {}
}
