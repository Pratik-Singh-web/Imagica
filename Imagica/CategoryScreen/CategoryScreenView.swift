//
//  CategoryScreenView.swift
//  Imagica
//
//  Created by Pratik Kumar Singh on 4/20/25.
//

import SwiftUI

public struct Category: Identifiable {
    public let id = UUID()
    let name: String
    let imageName: String
}

let sampleCategories = [
    Category(name: "Nature", imageName: "nature"),
    Category(name: "Space", imageName: "space"),
    Category(name: "Artistic", imageName: "artistic"),
    Category(name: "Quotes", imageName: "quotes"),
    Category(name: "Fantasy", imageName: "fantasy"),
    Category(name: "Patterns", imageName: "patterns"),
    Category(name: "Vehicles", imageName: "vehicles"),
    Category(name: "Sports", imageName: "sports")
]

public var selectedCategory: Category? = nil

public struct CategoryScreenView: View {
    public var body: some View {
        NavigationView {
            VStack(spacing: 10) {
                VStack(spacing: 12) {
                    HStack {
                        Text("Categories")
                            .font(.title).bold()
//                        Spacer()
                    }.padding(.horizontal)
                    
                    HStack {
                        TextField("Search Category....", text: .constant(""))
                            .padding()
                            .background(Color(.systemGray6))
                            .cornerRadius(10)
                        Button(action: {}) {
                            Image(systemName: "slider.horizontal.3")
                                .padding()
                                .background(Color.blue.opacity(0.2))
                                .cornerRadius(10)
                        }
                    }
                    .padding(.horizontal)
                }
                .background(Color.white)
                .zIndex(1)
                
                
                ScrollView {
                    LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], spacing: 10) {
                        ForEach(sampleCategories) { category in
                            NavigationLink(destination: ImageGridView(category: category)) {
                                ZStack(alignment: .center) {
                                    Image(category.imageName)
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
                                        .frame(height: 120)
                                        .cornerRadius(10)
                                        .clipped()
                                    
                                    Rectangle()
                                        .foregroundColor(.black.opacity(0.4))
                                        .cornerRadius(15)
                                    
                                    Text(category.name)
                                        .foregroundColor(.white)
                                        .bold()
                                        .font(.title2)
                                }
                            }
                        }
                    }.padding()
                }
            }
        }
    }
}

#Preview {
    CategoryScreenView()
}
