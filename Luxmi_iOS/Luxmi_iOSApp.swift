//
//  Luxmi_iOSApp.swift
//  Luxmi_iOS
//
//  Created by Mrityunjoy Saha on 5/10/23.
//

import SwiftUI
import Firebase

@main
struct Luxmi_iOSApp: App {
    
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    
    var body: some Scene {
        WindowGroup {
            RootView()
        }
    }
}

class AppDelegate: NSObject, UIApplicationDelegate {
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]? = nil) -> Bool {
        FirebaseApp.configure()
        
        return true
    }
}
