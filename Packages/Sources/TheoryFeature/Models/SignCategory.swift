//
//  SignCategory.swift
//
//
//  Created by Oleksandr Bilous on 05.01.2024.
//

import Foundation

struct SignCategory: Hashable {
    let id: Int
    let name: String
    let signs: [Sign]
}

extension SignCategory {
    static let all: [SignCategory] = [
        .init(id: 1, name: "Попереджувальні знаки", signs: Sign.warning),
        .init(id: 2, name: "Знаки пріоритету", signs: Sign.priority),
        .init(id: 3, name: "Заборонні знаки", signs: Sign.prohibition),
        .init(id: 4, name: "Наказові знаки", signs: Sign.command),
        .init(id: 5, name: "Інформаційно-вказівні знаки", signs: Sign.information),
        .init(id: 6, name: "Знаки сервісу", signs: Sign.service),
        .init(id: 7, name: "Таблички до дорожніх знаків", signs: Sign.tables)
    ]

}
