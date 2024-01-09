import SharedModels
import SwiftUI
import TheoryFeature
import TestsFeature

public struct Country: Identifiable {
    public let id: UUID = .init()
    let name: String

    public static let all: [Country] = []
}

public struct AppView: View {
    public init() {}
    
    public var body: some View {
        TabView {
            TheoryView()
                .tabItem {
                    Label("Теорія", systemImage: "book")
                }
            TestView()
                .tabItem {
                    Label("Тести", systemImage: "list.bullet.clipboard")
                }
            Text("Профіль")
                .tabItem {
                    Label("Профіль", systemImage: "person")
                }
        }
    }
}

#Preview {
    AppView()
}
