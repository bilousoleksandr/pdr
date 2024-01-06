//
//  ThemeQuestionsList.swift
//
//
//  Created by Oleksandr Bilous on 06.01.2024.
//

import SwiftUI

struct ThemeQuestionsList: View {
    var body: some View {
        List {
            ForEach(QuestionSection.all, id: \.hashValue) { section in
                NavigationLink {
                    EmptyView()
                } label: {
                    Text(section.text)
                }
            }
        }
    }
}

#Preview {
    ThemeQuestionsList()
}
