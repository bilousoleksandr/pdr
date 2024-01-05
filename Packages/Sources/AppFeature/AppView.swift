import SharedModels
import SharedViews
import SwiftUI
import Signs

public struct Country: Identifiable {
    public let id: UUID = .init()
    let name: String

    public static let all: [Country] = []
}

public struct AppView: View {
    public init() {}
    
    public var body: some View {
        TabView {
            Text("Тести")
                .tabItem {
                    Label("Тести", systemImage: "list.bullet.clipboard")
                }
            TheoryView()
                .tabItem {
                    Label("Теорія", systemImage: "book")
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
