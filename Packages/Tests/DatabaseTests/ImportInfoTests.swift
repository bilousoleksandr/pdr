//
//  ImportInfoTests.swift
//  
//
//  Created by Oleksandr Bilous on 05.01.2024.
//

import XCTest
@testable import Database
import RealmSwift

final class ImportInfoTests: XCTestCase {
    func testSigns() throws {
        struct Sign: Codable {
            let number: String
            let name: String
            let description: String
        }

        let url = Bundle.module.url(forResource: "default", withExtension: "realm")
        let realm = try Realm(fileURL: try XCTUnwrap(url))
        let result = realm.objects(SignItemDB.self)
        let ukrainian = result.filter { $0.primaryKey.contains("uk") }
        let grouped = Dictionary(grouping: ukrainian, by: \.categoryId)

        for group in grouped {
            print(group.key)
            print("---")
            let signs = group.value
            let result = signs.forEach { print("Sign(number: \"\($0.numberPrettyPrint)\", name: \"\($0.title)\", description: \"\($0.textNoHtml)\"),") }
            print(result)
        }
    }

    func testRoadSigns() throws {
        struct Sign: Codable {
            let number: String
            let name: String
            let description: String
        }

        let url = Bundle.module.url(forResource: "default", withExtension: "realm")
        let realm = try Realm(fileURL: try XCTUnwrap(url))
        let result = realm.objects(MarkItemDB.self)
        let ukrainian = result.filter { $0.primaryKey.contains("uk") }
        let grouped = Dictionary(grouping: ukrainian, by: \.categoryId)

        for group in grouped {
            print(group.key)
            print("---")
            let signs = group.value
            let result = signs.forEach { print("Sign(number: \"\($0.numberPrettyPrint)\", name: \"\($0.title)\", description: \"\($0.textNoHtml)\"),") }
            print(result)
        }
    }

    func testFines() throws {
        struct Sign: Codable {
            let number: String
            let name: String
            let description: String
        }

        let url = Bundle.module.url(forResource: "default", withExtension: "realm")
        let realm = try Realm(fileURL: try XCTUnwrap(url))
        let result = realm.objects(PenaltyTheoryDB.self)
        let ukrainian = result.filter { $0.primaryKey.contains("uk") }.sorted { $0.article < $1.article }
        print("Foo")
        for group in ukrainian {
            print("Fine(amount: \"\(group.amount)\", article: \"\(group.article)\", description: \"\(group.textNoHtml)\"),")
        }

    }
}
