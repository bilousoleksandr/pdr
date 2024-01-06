//
//  TestsKind.swift
//  
//
//  Created by Oleksandr Bilous on 06.01.2024.
//

import Foundation

enum TestsKind: Hashable {
    case random
    case theme
    case hardest
    case mistakes
    case saved
    case exam

    var title: String {
        switch self {
        case .random:
            "Випадкові"
        case .theme:
            "По темі"
        case .hardest:
            "Найскладніші"
        case .mistakes:
            "Робота над помилками"
        case .saved:
            "Збережені"
        case .exam:
            "Екзамен"
        }
    }

    var subtitle: String {
        switch self {
        case .random:
            "20 питань для водійскої категорії"
        case .theme:
            "Питання, згруповані по розділам"
        case .hardest:
            "Топ-100 складних питань"
        case .mistakes:
            "Індивідуальний план навчання"
        case .saved:
            "Повторити відмічені питання"
        case .exam:
            ""
        }
    }

    var image: String {
        switch self {
        case .random:
            "shuffle"
        case .theme:
            "book.pages"
        case .hardest:
            "chart.bar.xaxis"
        case .mistakes:
            "exclamationmark.triangle"
        case .saved:
            "bookmark.fill"
        case .exam:
            ""
        }
    }
}
