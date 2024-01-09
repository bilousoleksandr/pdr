//
//  TestView.swift
//
//
//  Created by Oleksandr Bilous on 06.01.2024.
//

import SwiftUI

public struct TestView: View {
    public init(){}

    public var body: some View {
        NavigationView {
            TestSectionList()
        }
    }
}

#Preview {
    TestView()
}
