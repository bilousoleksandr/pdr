//
//  SingleQuestionView.swift
//
//
//  Created by Oleksandr Bilous on 07.01.2024.
//

import SwiftUI

struct SingleQuestionView: View {
    let question: Question

    var body: some View {
        ScrollView {
            VStack {
                Text(question.question)
                    .font(.system(size: 18, weight: .medium))
                if let imageName = question.image {
                    Image(imageName, bundle: .module)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 300, height: 300)
                }
            }
            .frame(maxWidth: .infinity)
            .padding(18)
            .foregroundStyle(.primary)
            .background(.white)
            .cornerRadius(8)
            .padding(.bottom, 16)
            ForEach(question.answers, id: \.hashValue) { answer in
                Text(answer)
                    .frame(maxWidth: .infinity)
                    .font(.system(size: 14))
                    .padding(14)
                    .background(.white)
                    .cornerRadius(8)
            }.padding(.bottom, 6)
        }
        .padding()
        .background(.blue)
    }

    func foo() -> [Question] {
        let path = Bundle.module.path(forResource: "questions", ofType: "json")
        guard let path = path else { return [] }
        do {
            let data = try Data(contentsOf: URL(fileURLWithPath: path))
            let questions = try JSONDecoder().decode([Question].self, from: data)
            return questions
        } catch {
            return []
        }
    }
}

#Preview {
    SingleQuestionView(
        question: Question(
            id: 1,
            question: "Hello",
            answers: ["First", "Second", "Third"],
            rightAnswerIndex: 1,
            image: "1",
            sectionIndex: 3,
            tip: "Hello there",
            comment: nil
        )
    )
}



