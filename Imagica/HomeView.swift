//
//  ContentView.swift
//  Imagica
//
//  Created by Pratik Kumar Singh on 11/11/24.
//

import SwiftUI

struct HomeView: View {
    @State private var scaleEffect: CGFloat = 1.1
    @State private var opacity: Double = 0.7
    
    var body: some View {
        NavigationView {
            VStack(alignment: .leading, spacing: 20) {
                
                // Navigation Bar
                NavigationBarView()
                
                //Home Screen
                HomeScreenView()
                Spacer()
                
                // Tab Bar
                TabbarView()
            }
            .background(Color.white.ignoresSafeArea())
        }
        .scaleEffect(scaleEffect)
        .opacity(opacity)
        .onAppear {
            withAnimation(.easeInOut(duration: 0.5)) {
                self.scaleEffect = 1.0
                self.opacity = 1.0
            }
        }
    }
}

#Preview {
    HomeView()
}
