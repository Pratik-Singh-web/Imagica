//
//  HomeScreenView.swift
//  Imagica
//
//  Created by Pratik Kumar Singh on 11/25/24.
//

import SwiftUI

struct HomeScreenView: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 20){
                // Preferred Category Section
                PreferredCategoryView()
                
                // Recommended Categories Section
                RecommendedCategoryView()
            }
        }
    }
}

#Preview {
    HomeScreenView()
}
