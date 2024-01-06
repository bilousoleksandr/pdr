//
//  TestSectionView.swift
//
//
//  Created by Oleksandr Bilous on 06.01.2024.
//

import SwiftUI

struct TestSectionView: View {
    let section: TestsKind

    var body: some View {
        HStack {
            Image(systemName: section.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 28, height: 28)
                .padding(5)
                .background {
                    RoundedRectangle(cornerRadius: 6)
                        .foregroundStyle(.gray)
                }
            VStack(spacing: 0) {
                Text(section.title)
                    .font(.system(size: 18, weight: .medium))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .multilineTextAlignment(.leading)
                Text(section.subtitle)
                    .font(.system(size: 14, weight: .light))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .multilineTextAlignment(.leading)
            }
        }
        .padding(8)
        .overlay(
            RoundedRectangle(cornerRadius: 6)
                .strokeBorder(lineWidth: 1)
                .foregroundStyle(.gray)
        )
        .frame(maxWidth: .infinity)
    }
}


#Preview {
    TestSectionView(section: .random)
}
