//
//  LaunchScreenView.swift
//  Imagica
//
//  Created by Pratik Kumar Singh on 11/25/24.
//

import SwiftUI

struct LaunchScreenView: View {

    @State private var scaleEffect: CGFloat = 1.2
    @State private var opacity: Double = 0.5
    @State private var isActive = false

    var body: some View {
        if isActive {
            HomeView()
            // Navigate to main app
        } else {
            ZStack {
                Image("ImagicaLaunchScreen") // Replace with your logo
                    .resizable()
                    .scaledToFill()
                    .frame(width: .infinity, height: .infinity)
                    .scaleEffect(scaleEffect)
                    .opacity(opacity)
                    .onAppear {
                        withAnimation(.easeInOut(duration: 1.0)) {
                            self.scaleEffect = 1.0
                            self.opacity = 1.0
                        }
                    }
            }
            .ignoresSafeArea()
            .onAppear {
                // Simulate a delay before moving to the main app
                DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
                    isActive = true
                }
            }
        }
    }
}

#Preview {
    LaunchScreenView()
}
