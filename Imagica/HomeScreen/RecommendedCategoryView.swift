//
//  RecommendedCategoryView.swift
//  Imagica
//
//  Created by Pratik Kumar Singh on 11/25/24.
//

import SwiftUI

struct RecommendedCategoryView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text("Recommended Categories")
                .font(.title3)
                .fontWeight(.bold)
                .foregroundColor(.black)
            
            ScrollView(.horizontal) {
                HStack(spacing: 20){
                    // First Card
                    VStack(alignment: .leading) {
                        Image("Myself") // Replace with your image name
                            .resizable()
                            .scaledToFill()
                            .frame(width: 180, height: 150)
                            .clipped()
                            .cornerRadius(10)
                        
                        Text("Nature")
                            .font(.headline)
                            .foregroundColor(.black)
                        
                        Text("Explore the beauty of nature")
                            .font(.subheadline)
                            .foregroundColor(.gray)
                            .multilineTextAlignment(.leading)
                    }
                    .frame(width: 180, height: 180)
                    
                    // Second Card
                    VStack(alignment: .leading) {
                        Image("Myself") // Replace with your image name
                            .resizable()
                            .scaledToFill()
                            .frame(width: 180, height: 150)
                            .clipped()
                            .cornerRadius(10)
                        
                        Text("Animals")
                            .font(.headline)
                            .foregroundColor(.black)
                        
                        Text("Discover various animals")
                            .font(.subheadline)
                            .foregroundColor(.gray)
                    }
                    
                    // Third Card
                    VStack(alignment: .leading) {
                        Image("Myself") // Replace with your image name
                            .resizable()
                            .scaledToFill()
                            .frame(width: 180, height: 150)
                            .clipped()
                            .cornerRadius(10)
                        
                        Text("Animals")
                            .font(.headline)
                            .foregroundColor(.black)
                        
                        Text("Discover various animals")
                            .font(.subheadline)
                            .foregroundColor(.gray)
                    }
                }
            }
        }
        .padding(.horizontal)
    }
}

#Preview {
    RecommendedCategoryView()
}
