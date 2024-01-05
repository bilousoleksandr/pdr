//
//  TheoryView.swift
//
//
//  Created by Oleksandr Bilous on 05.01.2024.
//

import SwiftUI

public struct TheoryView: View {
    public init() {}

    public var body: some View {
        NavigationView {
            VStack(spacing: 16) {
                TheoryItemView(
                    destination: EmptyView(),
                    image: "book",
                    title: "Правила дорожнього руху"
                )
                HStack(spacing: 16) {
                    TheoryItemView(
                        destination: SignView(categories: SignCategory.all, isRoadSign: false),
                        image: "road-sign",
                        title: "Знаки"
                    )
                    TheoryItemView(
                        destination: SignView(categories: SignCategory.road, isRoadSign: true),
                        image: "road",
                        title: "Розмітка"
                    )
                }
                TheoryItemView(
                    destination: EmptyView(),
                    image: "saved",
                    title: "Збережені"
                )
                Spacer()
            }.padding()
            .navigationTitle("Теорія")
        }
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    TheoryView()
}

struct TheoryItemView<Destination: View>: View {
    let destination: Destination
    let image: String
    let title: String


    var body: some View {
        NavigationLink {
            destination
        } label: {
            VStack {
                Spacer()
                Image(image, bundle: .module)
                    .renderingMode(.template)
                    .foregroundColor(.primary)
                Spacer()
                Text(title)
                    .font(.title2)
                    .fontWeight(.medium)
            }
            .foregroundColor(.primary)
            .frame(maxWidth: .infinity)
            .frame(height: 100)
            .padding()
            .overlay(
                RoundedRectangle(cornerRadius: 8)
                    .stroke(.gray, lineWidth: 2)
            )
        }

    }
}
