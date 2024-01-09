//
//  DriverLicense.swift
//  
//
//  Created by Oleksandr Bilous on 06.01.2024.
//

import Foundation

enum DriverLicense: String {
    case A, A1, B, B1, C, C1, D, D1, BE, CE, C1E, DE, D1E, T

    static let twoTiresTransport: [DriverLicense] = [.A, .A1]
    static let auto: [DriverLicense] = [.B, .B1]
    static let truck: [DriverLicense] = [.C, .C1]
    static let bus: [DriverLicense] = [.D, .D1]
    static let trailer: [DriverLicense] = [.BE, .CE, .C1E, .DE, .D1E]
    static let trolleybusAndTram: [DriverLicense] = [.T]

    var questions: CategoryQuestions {
        switch self {
        case .A, .A1:
            return .A
        case .B, .B1:
            return .B
        case .C, .C1:
            return .C
        case .D, .D1:
            return .D
        case .BE, .CE, .C1E, .DE, .D1E:
            return .E
        case .T:
            return .T
        }
    }

    var name: String {
        switch self {
        case .A, .A1:
            return "Мопеди, моторолери та мотоцикли"
        case .B, .B1:
            return "Авто до 3.5т, Квадро та трацикли"
        case .C, .C1:
            return "Грузові авто"
        case .D, .D1:
            return "Автобуси"
        case .BE, .CE, .C1E, .DE, .D1E:
            return "Зіставні транспортні засоби"
        case .T:
            return "Трамваї і тролейбуси"
        }
    }
}


struct CategoryQuestions {
    let ids: [String]

    static let A = CategoryQuestions(
        ids: [
            "2;4;5;6;7;21",
            "3;28;33",
            "84;85;86;87;88;89;90",
            "37",
            "9;22",
            "10;14",
            "15;16;17",
            "18;20",
            "8;74;75;19",
            "39",
            "23;29;30;31;32;35",
            "24;25;26;27",
            "39",
            "34;38;41;56",
            "84;85;86;87;88;89;90",
            "53",
            "1;54",
            "55",
            "57",
            "42"
        ]
    )

    static let B = CategoryQuestions(
        ids: [
            "2;4;5;6;7;21",
            "3;28;33",
            "84;85;86;87;88;89;90",
            "37",
            "9;22",
            "10;14",
            "15;16;17",
            "18;20",
            "8;74;75;19",
            "39",
            "23;29;30;31;32;35",
            "24;25;26;27",
            "39",
            "38;41;60",
            "84;85;86;87;88;89;90",
            "53",
            "1;58",
            "59;34",
            "61;42",
            "42;61"
        ]
    )

    static let C = CategoryQuestions(
        ids: [
            "2;4;5;6;7;21",
            "3;28;33",
            "84;85;86;87;88;89;90",
            "37",
            "9;22",
            "10;14",
            "15;16;17",
            "18;20",
            "8;74;75;19",
            "39",
            "23;29;30;31;32;35",
            "24;25;26;27",
            "39",
            "34;38;41;64",
            "84;85;86;87;88;89;90",
            "53",
            "1;62",
            "63",
            "65",
            "42"
        ]
    )

    static let D = CategoryQuestions(
        ids: [
            "2;4;5;6;7;21",
            "3;28;33",
            "84;85;86;87;88;89;90",
            "37",
            "9;22",
            "10;14",
            "15;16;17",
            "18;20",
            "8;74;75;19",
            "39",
            "23;29;30;31;32;35",
            "24;25;26;27",
            "39",
            "34;38;41;68",
            "84;85;86;87;88;89;90",
            "53",
            "1;66",
            "67",
            "69",
            "42"
        ]
    )

    static let T = CategoryQuestions(
        ids: [
            "2;4;5;6;7;21",
            "3;28;33",
            "84;85;86;87;88;89;90",
            "37",
            "9;22",
            "10;14",
            "15;16;17",
            "18;20",
            "8;74;75;19",
            "39",
            "23;29;30;31;32;35",
            "24;25;26;27",
            "39",
            "34;38;41;78",
            "84;85;86;87;88;89;90",
            "53",
            "1;76",
            "77",
            "79",
            "42"
        ]
    )

    static let E = CategoryQuestions(
        ids: [
            "2;4;5;6;7;21",
            "3;28;33",
            "84;85;86;87;88;89;90",
            "37",
            "9;22",
            "10;14",
            "15;16;17",
            "18;20",
            "8;74;75;19",
            "39",
            "23;29;30;31;32;35",
            "24;25;26;27",
            "39",
            "34;38;41;72",
            "84;85;86;87;88;89;90",
            "53",
            "1;70",
            "71",
            "73",
            "42"
        ]
    )
}
