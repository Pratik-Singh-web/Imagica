//
//  NavigationBarView.swift
//  Imagica
//
//  Created by Pratik Kumar Singh on 11/25/24.
//

import SwiftUI

struct NavigationBarView: View {
    var body: some View {
        
        HStack {
            Button(action: {
                // Add action for menu button
            }) {
                Image(systemName: "line.horizontal.3")
                    .font(.system(size: 20))
                    .foregroundColor(.black)
            }
            
            Spacer()
            
            Text("Imagica")
                .font(.title2)
                .fontWeight(.bold)
                .foregroundColor(.black)
            
            Spacer()
            
//            Button(action: {
//                // Add action for profile button
//            }) {
//                Image(systemName: "person.crop.circle")
//                    .font(.system(size: 20))
//                    .foregroundColor(.black)
//            }
        }
        .padding(.horizontal)
        .padding(.top, 10)
    }
}

#Preview {
    NavigationBarView()
}
