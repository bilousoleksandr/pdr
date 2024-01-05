//
//  SignCategoryView.swift
//
//
//  Created by Oleksandr Bilous on 05.01.2024.
//

import SwiftUI

struct SignCategoryView: View {
    let category: SignCategory
    let isRoadSign: Bool
    private let adaptiveColumn = [GridItem(.adaptive(minimum: 160))]
    
    var body: some View {
        ScrollView(.vertical) {
            LazyVGrid(columns: adaptiveColumn) {
                ForEach(category.signs, id: \.number) { sign in
                    VStack(spacing: 0) {
                        HStack {
                            Text(sign.number)
                                .font(.system(size: 14))
                            Spacer()
                            Image(systemName: "bookmark")
                        }
                        Image(isRoadSign ? sign.number + "road" : sign.number, bundle: .module)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 80, height: 80, alignment: .center)
                        Spacer()
                        Text(sign.name)
                            .lineLimit(2)
                            .font(.system(size: 14))
                            .multilineTextAlignment(.center)

                    }
                    .padding(8)
                    .frame(height: 160)
                    .overlay(
                        RoundedRectangle(cornerRadius: 8)
                            .stroke(.blue, lineWidth: 2)
                    )
                }.padding(2)
            }
            .padding()
        }
        .navigationTitle(category.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    SignCategoryView(
        category: .init(id: 1, name: "New", signs: Sign.horizontal),
        isRoadSign: true
    )
}
