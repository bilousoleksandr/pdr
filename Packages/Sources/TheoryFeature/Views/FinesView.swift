//
//  FinesView.swift
//  
//
//  Created by Oleksandr Bilous on 05.01.2024.
//

import Foundation
import SwiftUI

struct FinesView: View {
    var body: some View {
        ScrollView {
            ForEach(Fine.all, id: \.hashValue) { fine in
                VStack(alignment: .leading, spacing: 8) {
                    HStack {
                        Text(fine.article)
                            .font(.system(size: 16))
                        Spacer()

                    }
                    Text(fine.description)
                        .font(.system(size: 14))
                    Text(fine.amount)
                        .multilineTextAlignment(.trailing)
                        .font(.system(size: 18, weight: .semibold))
                        .frame(maxWidth: .infinity, alignment: .trailing)
                }
                .padding()
                .overlay(
                    RoundedRectangle(cornerRadius: 8)
                        .stroke(.gray, lineWidth: 1)
                )
            }
            .padding()
        }
        .navigationTitle("Штрафи")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    FinesView()
}
