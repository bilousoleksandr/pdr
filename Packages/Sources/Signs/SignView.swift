//
//  SignView.swift
//
//
//  Created by Oleksandr Bilous on 04.01.2024.
//

import SwiftUI

public struct SignView: View {
    private var data  = Array(1...20)

    private let adaptiveColumn = [
        GridItem(.adaptive(minimum: 160))
    ]

    public var body: some View {
        NavigationView {
            ScrollView(.vertical) {
                LazyVGrid(columns: adaptiveColumn) {
                    ForEach(data, id: \.self) { item in
                        VStack {
                            HStack {
                                Text(String(item))
                                Spacer()
                                Image(systemName: "bookmark")
                            }
                            Image("traffic_light_revers")
                            Spacer()
                            Text("Небезпечний поворот праворуч")
                                .font(.system(size: 16))
                                .multilineTextAlignment(.center)
                                .lineLimit(2)
                        }
                        .padding()
                        .overlay(
                            RoundedRectangle(cornerRadius: 8)
                                .stroke(.blue, lineWidth: 2)
                        )
                    }
                }
                .padding()
            }
            .navigationTitle("Знаки")
            .navigationBarTitleDisplayMode(.inline)
        }
    }

    public init() {}
}

#Preview {
    SignView()
}

struct SignModel {
    let number: String
    let name: String
    let description: String
}
