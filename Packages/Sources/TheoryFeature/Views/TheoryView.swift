//
//  TheoryView.swift
//
//
//  Created by Oleksandr Bilous on 05.01.2024.
//

import SwiftUI
import SharedViews

public struct TheoryView: View {
    public init() {}

    public var body: some View {
        NavigationView {
            ScrollView {
                VStack(spacing: 16) {
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
                    HStack(spacing: 16) {
                        TheoryItemView(
                            destination: FinesView(),
                            image: "fines",
                            title: "Штрафи"
                        )
                        TheoryItemView(
                            destination: EmptyView(),
                            image: "saved",
                            title: "Збережені"
                        )
                    }
                    PDRView()
                }
            }.padding()
            .navigationTitle("Теорія")
        }
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    TheoryView()
}

struct PDRView: View {
    var body: some View {
        VStack {
            Image("book", bundle: .module)
                .renderingMode(.template)
                .foregroundColor(.primary)
            Text("Правила дорожнього руху")
                .font(.title2)
            ActionButton(label: "Читати правила") {}
        }
        .foregroundColor(.primary)
        .frame(maxWidth: .infinity)
        .padding()
        .overlay(
            RoundedRectangle(cornerRadius: 8)
                .strokeBorder(lineWidth: 1)
                .foregroundStyle(.gray)
        )
    }
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
            }
            .foregroundColor(.primary)
            .frame(maxWidth: .infinity)
            .frame(height: 90)
            .padding()
            .overlay(
                RoundedRectangle(cornerRadius: 8)
                    .strokeBorder(lineWidth: 1)
                    .foregroundStyle(.gray)
            )
        }
    }
}
