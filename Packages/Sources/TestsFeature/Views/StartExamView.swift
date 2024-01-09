//
//  StartExamView.swift
//
//
//  Created by Oleksandr Bilous on 06.01.2024.
//

import SwiftUI
import SharedViews

struct StartExamView: View {
    var body: some View {
        VStack {
            HStack {
                Image("exam", bundle: .module)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 50, height: 50)
                VStack(spacing: 0) {
                    Text("Іспит, як в центрі МВС")
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .font(.system(size: 22, weight: .medium))
                    Text("20 питань, 20 хвилин, до 3 помилок")
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .font(.system(size: 16, weight: .light))
                }
            }
            ActionButton(label: "Почати тест", backgroundColor: .blue) { print("Тест") }
        }
        .frame(maxWidth: .infinity)
        .padding(10)
        .overlay(
            RoundedRectangle(cornerRadius: 6)
                .strokeBorder(lineWidth: 1)
                .foregroundStyle(.gray)
        )
    }
}

#Preview {
    StartExamView()
}
