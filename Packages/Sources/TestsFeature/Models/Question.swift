//
//  Question.swift
//
//
//  Created by Oleksandr Bilous on 07.01.2024.
//

import Foundation

struct Question: Codable, Identifiable {
    let id: Int
    let question: String
    let answers: [String]
    let rightAnswerIndex: Int
    let image: String?
    let sectionIndex: Int
    let tip: String?
    let comment: String?
}
