//
//  TabbarView.swift
//  Imagica
//
//  Created by Pratik Kumar Singh on 11/25/24.
//

import SwiftUI

struct TabbarView: View {
    var body: some View {
        HStack {
            Spacer()
            VStack {
                Image(systemName: "house.fill")
                    .font(.system(size: 20))
                Text("Home")
                    .font(.caption)
            }
            .tint(.gray)
            Spacer()
            Spacer()
            Spacer()
            
            VStack {
                Image(systemName: "square.grid.2x2.fill")
                    .font(.system(size: 20))
                Text("Categories")
                    .font(.caption)
            }
            .tint(.gray)
            Spacer()
            Spacer()
            Spacer()
            
            VStack {
                Image(systemName: "person.crop.circle")
                    .font(.system(size: 20))
                Text("Profile")
                    .font(.caption)
            }
            .tint(.gray)
            Spacer()
        }
        .padding()
        .background(Color.white)
        .shadow(color: .gray.opacity(0.3), radius: 10, x: 0, y: -2)
    }
}

#Preview {
    TabbarView()
}
