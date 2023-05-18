//
//  RootView.swift
//  Luxmi_iOS
//
//  Created by Mrityunjoy Saha on 5/10/23.
//

import SwiftUI

struct RootView: View {
    
    @State private var showSignInView: Bool = false
    
    var body: some View {
        ZStack {
            if !showSignInView {
                NavigationStack {
                    SettingsView(showSignInView: $showSignInView)
                }
            }
        }
        
        .onAppear {
            let authUser = try? AuthenticationManager.shared.getAuthenticatedUser()
            self.showSignInView = authUser == nil            
        }
        
        .fullScreenCover(isPresented: $showSignInView) {
            NavigationStack {
                ContentView()
            }
        }
    }
}

struct RootView_Previews: PreviewProvider {
    static var previews: some View {
        RootView()
    }
}
