//
//  PreferredCategoryView.swift
//  Imagica
//
//  Created by Pratik Kumar Singh on 11/25/24.
//

import SwiftUI

struct PreferredCategoryView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text("Preferred Category: Nature")
                .font(.title3)
                .fontWeight(.bold)
                .foregroundColor(.black)
            
            Image("Myself") // Replace with your image name
                .resizable()
                .scaledToFill()
                .frame(height: 250)
                .clipped()
                .cornerRadius(10)
        }
        .padding(.horizontal)
    }
}

#Preview {
    PreferredCategoryView()
}
