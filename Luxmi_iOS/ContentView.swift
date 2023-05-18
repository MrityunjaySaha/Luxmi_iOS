//
//  ContentView.swift
//  Luxmi_iOS
//
//  Created by Mrityunjoy Saha on 5/10/23.
//
import SwiftUI

struct ContentView: View {
    @State private var showSignInView = false
    
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink(destination: Welcome(showSignInView: $showSignInView)) {
                    Text("Thank you for Choosing Us!")
                        .font(.headline)
                        .foregroundColor(.white)
                        .frame(height: 55)
                        .frame(maxWidth: .infinity)
                        .background(Color.blue)
                        .cornerRadius(10)
                }
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

