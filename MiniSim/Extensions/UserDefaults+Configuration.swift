//
//  UserDefaults+Configuration.swift
//  MiniSim
//
//  Created by Oskar Kwaśniewski on 05/02/2023.
//

import Foundation

extension UserDefaults {
    public struct Keys {
        static let parameters = "parameters"
        static let commands = "commands"
        static let androidHome = "androidHome"
        static let isOnboardingFinished = "isOnboardingFinished"
        static let enableiOSSimulators = "enableiOSSimulators"
        static let enableAndroidEmulators = "enableAndroidEmulators"
        static let menuImage = "menuImage"
    }
    
    @objc dynamic public var androidHome: String? {
        get { string(forKey: Keys.androidHome) }
        set { set(newValue, forKey: Keys.androidHome) }
    }
    
    @objc dynamic public var isOnboardingFinished: Bool {
        get { bool(forKey: Keys.isOnboardingFinished) }
        set { set(newValue, forKey: Keys.isOnboardingFinished) }
    }
    
    @objc dynamic public var menuImage: String {
        get { string(forKey: Keys.menuImage) ?? "iphone" }
        set { set(newValue, forKey: Keys.menuImage) }
    }
    
    public var parameters: Data? {
        get { object(forKey: Keys.parameters) as? Data }
        set { set(newValue, forKey: Keys.parameters) }
    }
    
    public var commands: Data? {
        get { object(forKey: Keys.commands) as? Data }
        set { set(newValue, forKey: Keys.commands) }
    }
    
    public var enableiOSSimulators: Bool {
        get { bool(forKey: Keys.enableiOSSimulators) }
        set { set(newValue, forKey: Keys.enableiOSSimulators) }
    }
    
    public var enableAndroidEmulators: Bool {
        get { bool(forKey: Keys.enableAndroidEmulators) }
        set { set(newValue, forKey: Keys.enableAndroidEmulators) }
    }
}
