import SharedModels
import SharedViews
import SwiftUI

public struct Country: Identifiable {
    public let id: UUID = .init()
    let name: String

    public static let all: [Country] = []
}

public struct AppView: View {
    public init() {}
    
    public var body: some View {
        TabView {
            Text("Hello")
        }
    }
}

#Preview {
    AppView()
}
