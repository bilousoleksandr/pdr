//
//  SignView.swift
//
//
//  Created by Oleksandr Bilous on 04.01.2024.
//

import SwiftUI

struct SignView: View {
    let categories: [SignCategory]
    let isRoadSign: Bool

    var body: some View {
        List(categories, id: \.name) { category in
            NavigationLink {
                SignCategoryView(category: category, isRoadSign: isRoadSign)
            } label: {
                HStack {
                    Text(String(category.id))
                        .fontWeight(.medium)
                    Text(category.name)
                }
            }.padding(.vertical)
        }
        .navigationTitle(isRoadSign ? "Розмітка" : "Знаки")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    SignView(categories: SignCategory.all, isRoadSign: false)
}
