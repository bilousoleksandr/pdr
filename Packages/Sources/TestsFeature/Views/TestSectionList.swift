//
//  TestSectionList.swift
//
//
//  Created by Oleksandr Bilous on 06.01.2024.
//

import SwiftUI

struct TestSectionList: View {
    let sections: [TestsKind] = [.random, .theme, .hardest, .mistakes, .saved]

    var body: some View {
        ScrollView {
            TestSectionListHeader()
            ForEach(sections, id: \.hashValue) { section in
                TestSectionView(section: section)
            }
            StartExamView()
        }
        .padding()
        .navigationTitle("Тести")
    }
}

#Preview {
    TestSectionList()
}
