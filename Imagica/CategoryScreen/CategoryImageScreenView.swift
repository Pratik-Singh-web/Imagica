//
//  CategoryImageScreenView.swift
//  Imagica
//
//  Created by Pratik Kumar Singh on 4/20/25.
//

import SwiftUI

public struct ImageGridView: View {
    let category: Category
    let images = Array(1...12).map { "nature\($0)" } // Replace with actual URLs or image names
    
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    @State private var isSelected: Bool = false
    
    public var body: some View {
        ZStack(alignment: .bottom) {
            ScrollView {
                LazyVGrid(columns: columns, spacing: 10) {
                    ForEach(images, id: \.self) { imageName in
                        Image(imageName)
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: UIScreen.main.bounds.width / 2 - 20, height: 300)
                            .cornerRadius(15)
                            .clipped()
                    }
                }
                .padding()
            }
            
            Button(action: {
                selectedCategory = category
                isSelected = true
            }) {
                Text("Select Category")
                    .foregroundColor(.white)
                    .bold()
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(isSelected ? Color.gray : Color.blue)
                    .cornerRadius(12)
                    .padding(.horizontal)
            }
            .disabled(isSelected)
            .padding(.bottom, 20)
        }
        .background(Color.green.opacity(0.1))
        .navigationTitle(category.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    ImageGridView(category: Category(name: "Fantasy", imageName: "fantasy"))
}
