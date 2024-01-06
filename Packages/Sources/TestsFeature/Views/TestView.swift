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

struct ActionButton: View {
    let label: LocalizedStringKey
    let cornerRadius: CGFloat
    let foregroundColor: Color
    let backgroundColor: Color
    let action: (() -> Void)

    var body: some View {
        Button(action: action) {
            Text(label)
                .font(.system(size: 18, weight: .medium))
                .padding()

        }
        .frame(maxWidth: .infinity)
        .foregroundColor(foregroundColor)
        .background(backgroundColor)
        .cornerRadius(cornerRadius)
    }

    internal init(
        label: LocalizedStringKey = "Test",
        cornerRadius: CGFloat = 10,
        foregroundColor: Color = .white,
        backgroundColor: Color = .pink,
        action: @escaping () -> Void
    ) {
        self.label = label
        self.cornerRadius = cornerRadius
        self.foregroundColor = foregroundColor
        self.backgroundColor = backgroundColor
        self.action = action
    }
}
