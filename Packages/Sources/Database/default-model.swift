import Foundation
import RealmSwift

class AutoInsuranceFAQChapterDB: Object {
    @objc dynamic var id: Int = 0
    @objc dynamic var numberSort: Int = 0
    @objc dynamic var title: String = ""
    @objc dynamic var languageCode: String = ""

    override static func indexedProperties() -> [String] {
        return ["id", "numberSort", "title", "languageCode"]
    }
}

class AutoInsuranceFAQItemDB: Object {
    @objc dynamic var id: Int = 0
    @objc dynamic var chapterId: Int = 0
    @objc dynamic var question: String = ""
    @objc dynamic var answer: String = ""
    @objc dynamic var answerNoHtml: String = ""
    @objc dynamic var languageCode: String = ""
    @objc dynamic var numberSort: Int = 0
    @objc dynamic var isFavorite: Bool = false
    @objc dynamic var webViewHeightForDeviceHorizontal: Float = 0
    @objc dynamic var webViewHeightForDeviceVertical: Float = 0

    override static func indexedProperties() -> [String] {
        return ["id", "chapterId", "languageCode", "numberSort", "isFavorite"]
    }
}

class CrossroadParticipantTypeDB: Object {
    @objc dynamic var primaryKey: String = ""
    @objc dynamic var id: Int = 0
    @objc dynamic var title: String = ""
    @objc dynamic var languageCode: String = ""
    @objc dynamic var orderNumber: Int = 0

    override static func primaryKey() -> String? {
        return "primaryKey"
    }

    override static func indexedProperties() -> [String] {
        return ["id", "title", "languageCode", "orderNumber"]
    }
}

class CrossroadSituationDB: Object {
    @objc dynamic var primaryKey: String = ""
    @objc dynamic var id: Int = 0
    @objc dynamic var orderNumber: Int = 0
    @objc dynamic var crossroadType: String = ""
    @objc dynamic var languageCode: String = ""
    @objc dynamic var situationDescription: String = ""
    @objc dynamic var imageName: String = ""
    @objc dynamic var participantsNumber: Int = 0
    @objc dynamic var direction: String = ""
    let participantTypeIds = List<Int>()
    @objc dynamic var isPremiumOnly: Bool = false
    @objc dynamic var videoExternalUrl: String = ""
    @objc dynamic var videoFileName: String = ""

    override static func primaryKey() -> String? {
        return "primaryKey"
    }

    override static func indexedProperties() -> [String] {
        return ["id", "orderNumber", "crossroadType", "languageCode", "imageName", "participantsNumber", "direction", "isPremiumOnly", "videoExternalUrl", "videoFileName"]
    }
}

class DatabaseUpdateDB: Object {
    @objc dynamic var date: Date = Date()
}

class DefensiveAboutDB: Object {
    @objc dynamic var text: String = ""
    @objc dynamic var languageCode: String = ""
}

class DefensiveCategoryDB: Object {
    @objc dynamic var primaryKey: String = ""
    @objc dynamic var id: Int = 0
    @objc dynamic var number: Int = 0
    @objc dynamic var title: String = ""
    @objc dynamic var languageCode: String = ""
    @objc dynamic var text: String = ""
    @objc dynamic var textNoHtml: String = ""
    @objc dynamic var webViewHeightForDeviceVertical: Float = 0
    @objc dynamic var webViewHeightForDeviceHorizontal: Float = 0

    override static func primaryKey() -> String? {
        return "primaryKey"
    }

    override static func indexedProperties() -> [String] {
        return ["id", "number", "title", "languageCode"]
    }
}

class ExamAnswerDB: Object {
    @objc dynamic var primaryKey: String = ""
    @objc dynamic var id: Int = 0
    @objc dynamic var questionId: Int = 0
    @objc dynamic var title: String = ""
    @objc dynamic var sortNumber: Int = 0
    @objc dynamic var isRight: Bool = false
    @objc dynamic var languageCode: String = ""
    @objc dynamic var isSelectedInLastTest: Bool = false

    override static func primaryKey() -> String? {
        return "primaryKey"
    }

    override static func indexedProperties() -> [String] {
        return ["id", "title", "isRight", "languageCode", "isSelectedInLastTest"]
    }
}
//
//class ExamKitDB: Object {
//    @objc dynamic var id: Int = 0
//    @objc dynamic var title: String = ""
//    @objc dynamic var languageCode: String = ""
//}
//
//class ExamOfficialInfoDB: Object {
//    @objc dynamic var languageCode: String = ""
//    @objc dynamic var text: String = ""
//
//    override static func indexedProperties() -> [String] {
//        return ["languageCode"]
//    }
//}
//
//class ExamQuestionDB: Object {
//    @objc dynamic var primaryKey: String = ""
//    @objc dynamic var id: Int = 0
//    @objc dynamic var number: Int = 0
//    @objc dynamic var title: String = ""
//    @objc dynamic var image: String? = nil
//    @objc dynamic var help: String = ""
//    @objc dynamic var isShow: Bool = false
//    @objc dynamic var sortNumber: Int = 0
//    let ticketIds = List<Int>()
//    let themeIds = List<Int>()
//    let answerIds = List<Int>()
//    @objc dynamic var languageCode: String = ""
//    @objc dynamic var isFavorite: Bool = false
//    @objc dynamic var webViewHeightForDeviceHorizontal: Float = 0
//    @objc dynamic var webViewHeightForDeviceVertical: Float = 0
//    @objc dynamic var percentOfIncorrectAnswers: Int = 0
//    @objc dynamic var percentOfCorrectAnswers: Int = 0
//    @objc dynamic var type: Int = 0
//    @objc dynamic var availableToMixAnswers: Bool = false
//    @objc dynamic var isAdditional: Bool = false
//    @objc dynamic var answeredState: Int = 0
//    @objc dynamic var isPro: Bool = false
//
//    override static func primaryKey() -> String? {
//        return "primaryKey"
//    }
//
//    override static func indexedProperties() -> [String] {
//        return ["id", "number", "title", "isShow", "languageCode", "isFavorite", "percentOfIncorrectAnswers", "percentOfCorrectAnswers", "type", "isAdditional", "answeredState", "isPro"]
//    }
//}

//class ExamThemeDB: Object {
//    @objc dynamic var primaryKey: String = ""
//    @objc dynamic var id: Int = 0
//    @objc dynamic var title: String = ""
//    @objc dynamic var number: String = ""
//    @objc dynamic var numberSorting: String = ""
//    @objc dynamic var parentNumber: String? = nil
//    @objc dynamic var languageCode: String = ""
//    @objc dynamic var numberOfQuestions: Int = 0
//    @objc dynamic var numberOfProQuestions: Int = 0
//
//    override static func primaryKey() -> String? {
//        return "primaryKey"
//    }
//
//    override static func indexedProperties() -> [String] {
//        return ["id", "title", "number", "numberSorting", "parentNumber", "languageCode", "numberOfQuestions", "numberOfProQuestions"]
//    }
//}
//
//class ExamTicketDB: Object {
//    @objc dynamic var primaryKey: String = ""
//    @objc dynamic var id: Int = 0
//    @objc dynamic var number: Int = 0
//    @objc dynamic var languageCode: String = ""
//    @objc dynamic var numberOfQuestions: Int = 0
//
//    override static func primaryKey() -> String? {
//        return "primaryKey"
//    }
//
//    override static func indexedProperties() -> [String] {
//        return ["id", "number", "languageCode", "numberOfQuestions"]
//    }
//}
//
//class ExamTotalUsersDB: Object {
//    @objc dynamic var totalUsers: Int = 0
//}
//
//class ExpertCommentDB: Object {
//    @objc dynamic var id: String = ""
//    @objc dynamic var pdrId: Int = 0
//    @objc dynamic var title: String? = nil
//    @objc dynamic var text: String = ""
//    @objc dynamic var textNoHtml: String = ""
//    @objc dynamic var languageCode: String = ""
//    @objc dynamic var webViewHeightForDeviceHorizontal: Float = 0
//    @objc dynamic var webViewHeightForDeviceVertical: Float = 0
//
//    override static func indexedProperties() -> [String] {
//        return ["id", "pdrId", "languageCode"]
//    }
//}

class HTMLSizeDB: Object {
    @objc dynamic var htmlObjectType: Int = 0
    @objc dynamic var htmlObjectId: String = ""
    @objc dynamic var cssStyleType: Int = 0
    @objc dynamic var width: Int = 0
    @objc dynamic var height: Int = 0

    override static func indexedProperties() -> [String] {
        return ["htmlObjectType", "htmlObjectId", "cssStyleType", "width", "height"]
    }
}

class JusticeLevel1DB: Object {
    @objc dynamic var primaryKey: String = ""
    @objc dynamic var id: Int = 0
    @objc dynamic var title: String = ""
    @objc dynamic var languageCode: String = ""
    @objc dynamic var number: Int = 0

    override static func primaryKey() -> String? {
        return "primaryKey"
    }

    override static func indexedProperties() -> [String] {
        return ["id", "title", "languageCode", "number"]
    }
}

class JusticeLevel2DB: Object {
    @objc dynamic var primaryKey: String = ""
    @objc dynamic var id: Int = 0
    @objc dynamic var chapterLevel1Id: Int = 0
    @objc dynamic var title: String = ""
    @objc dynamic var text: String = ""
    @objc dynamic var textNoHtml: String = ""
    @objc dynamic var languageCode: String = ""
    @objc dynamic var number: Int = 0
    @objc dynamic var isFavorite: Bool = false
    @objc dynamic var webViewHeightForDeviceHorizontal: Float = 0
    @objc dynamic var webViewHeightForDeviceVertical: Float = 0

    override static func primaryKey() -> String? {
        return "primaryKey"
    }

    override static func indexedProperties() -> [String] {
        return ["id", "chapterLevel1Id", "title", "languageCode", "number", "isFavorite"]
    }
}

class JusticeLevel3DB: Object {
    @objc dynamic var primaryKey: String = ""
    @objc dynamic var id: Int = 0
    @objc dynamic var chapterLevel1Id: Int = 0
    @objc dynamic var chapterLevel2Id: Int = 0
    @objc dynamic var title: String = ""
    @objc dynamic var text: String = ""
    @objc dynamic var textNoHtml: String = ""
    @objc dynamic var languageCode: String = ""
    @objc dynamic var number: Int = 0
    @objc dynamic var isFavorite: Bool = false
    @objc dynamic var webViewHeightForDeviceHorizontal: Float = 0
    @objc dynamic var webViewHeightForDeviceVertical: Float = 0

    override static func primaryKey() -> String? {
        return "primaryKey"
    }

    override static func indexedProperties() -> [String] {
        return ["id", "chapterLevel1Id", "chapterLevel2Id", "title", "languageCode", "number", "isFavorite"]
    }
}

class MarkCategoryDB: Object {
    @objc dynamic var primaryKey: String = ""
    @objc dynamic var id: Int = 0
    @objc dynamic var number: Int = 0
    @objc dynamic var title: String = ""
    @objc dynamic var languageCode: String = ""

    override static func primaryKey() -> String? {
        return "primaryKey"
    }

    override static func indexedProperties() -> [String] {
        return ["id", "number", "title", "languageCode"]
    }
}

class MarkItemDB: Object {
    @objc dynamic var primaryKey: String = ""
    @objc dynamic var id: Int = 0
    @objc dynamic var categoryId: Int = 0
    @objc dynamic var secondNumber: Int = 0
    @objc dynamic var thirdNumber: Int = 0
    @objc dynamic var numberPrettyPrint: String = ""
    @objc dynamic var title: String = ""
    @objc dynamic var languageCode: String = ""
    @objc dynamic var text: String = ""
    @objc dynamic var textNoHtml: String = ""
    @objc dynamic var imageName: String = ""
    @objc dynamic var isFavorite: Bool = false
    @objc dynamic var webViewHeightForDeviceHorizontal: Float = 0
    @objc dynamic var webViewHeightForDeviceVertical: Float = 0

    override static func primaryKey() -> String? {
        return "primaryKey"
    }

    override static func indexedProperties() -> [String] {
        return ["id", "categoryId", "title", "languageCode", "imageName", "isFavorite"]
    }
}

class NewsDB: Object {
    @objc dynamic var id: Int = 0
    @objc dynamic var date: Date? = nil
    @objc dynamic var title: String = ""
    @objc dynamic var languageCode: String = ""
    @objc dynamic var text: String = ""
    @objc dynamic var textNoHtml: String = ""
    @objc dynamic var webViewHeightForDeviceHorizontal: Float = 0
    @objc dynamic var webViewHeightForDeviceVertical: Float = 0

    override static func indexedProperties() -> [String] {
        return ["id", "date", "title", "languageCode"]
    }
}

class PDRCategoryDB: Object {
    @objc dynamic var primaryKey: String = ""
    @objc dynamic var id: Int = 0
    @objc dynamic var number: Int = 0
    @objc dynamic var title: String = ""
    @objc dynamic var languageCode: String = ""

    override static func primaryKey() -> String? {
        return "primaryKey"
    }

    override static func indexedProperties() -> [String] {
        return ["id", "number", "title", "languageCode"]
    }
}

class PDRItemDB: Object {
    @objc dynamic var primaryKey: String = ""
    @objc dynamic var id: Int = 0
    @objc dynamic var categoryId: Int = 0
    @objc dynamic var categoryNumber: Int = 0
    @objc dynamic var number: Int = 0
    @objc dynamic var numberPrettyPrint: String = ""
    @objc dynamic var languageCode: String = ""
    @objc dynamic var text: String = ""
    @objc dynamic var textNoHtml: String = ""
    @objc dynamic var isFavorite: Bool = false
    @objc dynamic var webViewHeightForDeviceHorizontal: Float = 0
    @objc dynamic var webViewHeightForDeviceVertical: Float = 0
    let expertCommentIds = List<String>()

    override static func primaryKey() -> String? {
        return "primaryKey"
    }

    override static func indexedProperties() -> [String] {
        return ["id", "categoryId", "categoryNumber", "number", "numberPrettyPrint", "languageCode", "isFavorite"]
    }
}

class PenaltyTheoryDB: Object {
    @objc dynamic var primaryKey: String = ""
    @objc dynamic var id: Int = 0
    @objc dynamic var amount: String = ""
    @objc dynamic var article: String = ""
    @objc dynamic var articleNoTags: String = ""
    @objc dynamic var languageCode: String = ""
    @objc dynamic var text: String = ""
    @objc dynamic var textNoHtml: String = ""
    @objc dynamic var isFavorite: Bool = false
    @objc dynamic var webViewHeightForDeviceHorizontal: Float = 0
    @objc dynamic var webViewHeightForDeviceVertical: Float = 0

    override static func primaryKey() -> String? {
        return "primaryKey"
    }

    override static func indexedProperties() -> [String] {
        return ["id", "amount", "article", "articleNoTags", "languageCode", "isFavorite"]
    }
}

class PenaltyTheoryHeaderDB: Object {
    @objc dynamic var text: String = ""
    @objc dynamic var languageCode: String = ""
    @objc dynamic var webViewHeightForDeviceHorizontal: Float = 0
    @objc dynamic var webViewHeightForDeviceVertical: Float = 0

    override static func indexedProperties() -> [String] {
        return ["languageCode"]
    }
}

class SignCategoryDB: Object {
    @objc dynamic var primaryKey: String = ""
    @objc dynamic var id: Int = 0
    @objc dynamic var number: Int = 0
    @objc dynamic var title: String = ""
    @objc dynamic var languageCode: String = ""

    override static func primaryKey() -> String? {
        return "primaryKey"
    }

    override static func indexedProperties() -> [String] {
        return ["id", "number", "title", "languageCode"]
    }
}

class SignItemDB: Object {
    @objc dynamic var primaryKey: String = ""
    @objc dynamic var id: Int = 0
    @objc dynamic var categoryId: Int = 0
    @objc dynamic var secondNumber: Int = 0
    @objc dynamic var thirdNumber: Int = 0
    @objc dynamic var numberPrettyPrint: String = ""
    @objc dynamic var title: String = ""
    @objc dynamic var languageCode: String = ""
    @objc dynamic var text: String = ""
    @objc dynamic var textNoHtml: String = ""
    @objc dynamic var imageName: String = ""
    @objc dynamic var isFavorite: Bool = false
    @objc dynamic var webViewHeightForDeviceHorizontal: Float = 0
    @objc dynamic var webViewHeightForDeviceVertical: Float = 0

    override static func primaryKey() -> String? {
        return "primaryKey"
    }

    override static func indexedProperties() -> [String] {
        return ["id", "categoryId", "title", "languageCode", "imageName", "isFavorite"]
    }
}

class TrafficControllerPositionDB: Object {
    @objc dynamic var primaryKey: String = ""
    @objc dynamic var id: Int = 0
    @objc dynamic var title: String = ""
    @objc dynamic var imageName: String = ""
    @objc dynamic var languageCode: String = ""
    @objc dynamic var orderNumber: Int = 0

    override static func primaryKey() -> String? {
        return "primaryKey"
    }

    override static func indexedProperties() -> [String] {
        return ["id", "title", "imageName", "languageCode", "orderNumber"]
    }
}

class TrafficControllerSideViewDB: Object {
    @objc dynamic var primaryKey: String = ""
    @objc dynamic var id: Int = 0
    @objc dynamic var title: String = ""
    @objc dynamic var languageCode: String = ""
    @objc dynamic var orderNumber: Int = 0

    override static func primaryKey() -> String? {
        return "primaryKey"
    }

    override static func indexedProperties() -> [String] {
        return ["id", "title", "languageCode", "orderNumber"]
    }
}

class TrafficMemberTypeDB: Object {
    @objc dynamic var primaryKey: String = ""
    @objc dynamic var id: Int = 0
    @objc dynamic var title: String = ""
    @objc dynamic var languageCode: String = ""
    @objc dynamic var orderNumber: Int = 0

    override static func primaryKey() -> String? {
        return "primaryKey"
    }

    override static func indexedProperties() -> [String] {
        return ["id", "title", "languageCode", "orderNumber"]
    }
}

class TrafficRuleOfPassageDB: Object {
    @objc dynamic var primaryKey: String = ""
    @objc dynamic var id: Int = 0
    @objc dynamic var title: String = ""
    @objc dynamic var languageCode: String = ""
    @objc dynamic var imageName: String = ""
    @objc dynamic var text: String = ""
    @objc dynamic var textNoHtml: String = ""
    @objc dynamic var memberTypeId: Int = 0
    @objc dynamic var positionId: Int = 0
    @objc dynamic var sideViewId: Int = 0
    @objc dynamic var orderNumber: Int = 0

    override static func primaryKey() -> String? {
        return "primaryKey"
    }

    override static func indexedProperties() -> [String] {
        return ["id", "title", "languageCode", "imageName", "memberTypeId", "positionId", "sideViewId", "orderNumber"]
    }
}

class ZakonCategoryDB: Object {
    @objc dynamic var primaryKey: String = ""
    @objc dynamic var id: Int = 0
    @objc dynamic var title: String = ""
    @objc dynamic var languageCode: String = ""

    override static func primaryKey() -> String? {
        return "primaryKey"
    }

    override static func indexedProperties() -> [String] {
        return ["id", "title", "languageCode"]
    }
}

class ZakonItemDB: Object {
    @objc dynamic var primaryKey: String = ""
    @objc dynamic var id: Int = 0
    @objc dynamic var categoryId: Int = 0
    @objc dynamic var text: String = ""
    @objc dynamic var textNoHtml: String = ""
    @objc dynamic var languageCode: String = ""
    @objc dynamic var webViewHeightForDeviceHorizontal: Float = 0
    @objc dynamic var webViewHeightForDeviceVertical: Float = 0

    override static func primaryKey() -> String? {
        return "primaryKey"
    }

    override static func indexedProperties() -> [String] {
        return ["id", "categoryId", "languageCode"]
    }
}

