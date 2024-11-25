//
//  ContentView.swift
//  Imagica
//
//  Created by Pratik Kumar Singh on 11/11/24.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            VStack(alignment: .leading, spacing: 20) {
                // Navigation Bar
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
                        .font(.headline)
                        .foregroundColor(.black)
                    
                    Spacer()
                    
                    Button(action: {
                        // Add action for profile button
                    }) {
                        Image(systemName: "person.crop.circle")
                            .font(.system(size: 20))
                            .foregroundColor(.black)
                    }
                }
                .padding(.horizontal)
                .padding(.top, 10)
                
                ScrollView {
                    // Preferred Category Section
                    VStack(alignment: .leading, spacing: 10) {
                        Text("Preferred Category: Nature")
                            .font(.title2)
                            .fontWeight(.bold)
                        
                        Image("nature_image") // Replace with your image name
                            .resizable()
                            .scaledToFill()
                            .frame(height: 200)
                            .clipped()
                            .cornerRadius(10)
                    }
                    .padding(.horizontal)
                    
                    // Recommended Categories Section
                    VStack(alignment: .leading, spacing: 10) {
                        Text("Recommended Categories")
                            .font(.title2)
                            .fontWeight(.bold)
                        
                        HStack(spacing: 15) {
                            // First Card
                            VStack(alignment: .leading) {
                                Image("waterfall_image") // Replace with your image name
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 150, height: 100)
                                    .clipped()
                                    .cornerRadius(10)
                                
                                Text("Nature")
                                    .font(.headline)
                                
                                Text("Explore the beauty of nature")
                                    .font(.subheadline)
                                    .foregroundColor(.gray)
                            }
                            
                            // Second Card
                            VStack(alignment: .leading) {
                                Image("lion_image") // Replace with your image name
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 150, height: 100)
                                    .clipped()
                                    .cornerRadius(10)
                                
                                Text("Animals")
                                    .font(.headline)
                                
                                Text("Discover various animals")
                                    .font(.subheadline)
                                    .foregroundColor(.gray)
                            }
                        }
                    }
                    .padding(.horizontal)
                }
                
                Spacer()
                
                // Tab Bar
                HStack {
                    VStack {
                        Image(systemName: "house.fill")
                            .font(.system(size: 20))
                        Text("Home")
                            .font(.caption)
                    }
                    Spacer()
                    
                    VStack {
                        Image(systemName: "square.grid.2x2.fill")
                            .font(.system(size: 20))
                        Text("Categories")
                            .font(.caption)
                    }
                    Spacer()
                    
                    VStack {
                        Image(systemName: "person.crop.circle")
                            .font(.system(size: 20))
                        Text("Profile")
                            .font(.caption)
                    }
                }
                .padding()
                .background(Color.white)
                .shadow(color: .gray.opacity(0.3), radius: 10, x: 0, y: -2)
            }
            .background(Color.white.ignoresSafeArea())
        }
    }
}

#Preview {
    HomeView()
}
