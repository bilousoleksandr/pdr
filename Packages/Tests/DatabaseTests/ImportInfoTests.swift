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

    func testQuestions() throws {
        struct Sign: Codable {
            let number: String
            let name: String
            let description: String
        }

        let url = Bundle.module.url(forResource: "questions_ua", withExtension: "json")
        let data = try Data(contentsOf: try XCTUnwrap(url))
        let result = try JSONDecoder().decode([ExamQuestion].self, from: data)
        let questions = result.map {
            let section = $0.stTe.flatMap { " \($0)" } ?? ""
            let tip = $0.pst.flatMap { value in value + section }
            return Question(id: $0.i, question: $0.q, answers: $0.a, rightAnswerIndex: $0.rai, image: nil, sectionIndex: $0.si, tip: tip, comment: nil)
        }
        let eData = try JSONEncoder().encode(questions)
        try eData.write(to: URL(fileURLWithPath: FileManager.default.currentDirectoryPath.appending("value.json")))
        print(URL(fileURLWithPath: FileManager.default.currentDirectoryPath.appending("value.json")))
    }
}

struct ExamQuestion: Decodable {
    let i: Int
    let q: String
    let a: [String]
    let rai: Int
    let si: Int
    let pst: String?
    let stTe: String?
}

struct Question: Codable {
    let id: Int
    let question: String
    let answers: [String]
    let rightAnswerIndex: Int
    let image: String?
    let sectionIndex: Int
    let tip: String?
    let comment: String?
}


extension FileManager {
    func writeToLogFile(_ information: String, filePath: String) {
        // Convert the information string to Data
        if let dataToWrite = information.data(using: .utf8) {
            // Use FileManager to append the data to the file
            if let fileHandle = FileHandle(forWritingAtPath: filePath) {
                // Seek to the end of the file
                fileHandle.seekToEndOfFile()

                // Write the data to the end of the file
                fileHandle.write(dataToWrite)

                // Close the file handle
                fileHandle.closeFile()

                print("Information written to file: \(filePath)")
            } else {
                // If the file doesn't exist, create it and write the data
                do {
                    try dataToWrite.write(to: URL(fileURLWithPath: filePath), options: .atomic)
                    print("File created and information written: \(filePath)")
                } catch {
                    print("Error creating or writing to file: \(error.localizedDescription)")
                }
            }
        } else {
            print("Error converting information to data.")
        }
    }

}
