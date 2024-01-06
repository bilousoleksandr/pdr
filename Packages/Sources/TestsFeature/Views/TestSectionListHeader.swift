//
//  TestSectionListHeader.swift
//
//
//  Created by Oleksandr Bilous on 06.01.2024.
//

import SwiftUI


struct TestSectionListHeader: View {
    var body: some View {
        HStack {
            Text("Всі запитання і іллюстрації, як на екзамені в сервісних центрах МВС.")
                .frame(maxWidth: .infinity, alignment: .leading)
                .font(.system(size: 16, weight: .light))
        }
        .padding(8)
        .background(.blue.opacity(0.3))
        .cornerRadius(8)
    }
}
#Preview {
    TestSectionListHeader()
}
