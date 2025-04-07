//
//  CustomButton.swift
//  swiftuiComponents
//
//  Created by Ildar Khabibullin on 08.04.2025.
//

import SwiftUI

public struct CustomButton: View {
    private let title: String
    private let action: () -> Void
    private let style: CustomButtonStyle
    
    public init(
        title: String,
        style: CustomButtonStyle = .primary,
        action: @escaping () -> Void
    ) {
        self.title = title
        self.action = action
        self.style = style
    }
    
    public var body: some View {
        Button(action: action) {
            Text(title)
                .font(.system(size: 16, weight: .semibold))
                .padding(.horizontal, 24)
                .padding(.vertical, 12)
                .foregroundColor(style.textColor)
                .background(style.backgroundColor)
                .cornerRadius(12)
        }
    }
    
    public enum CustomButtonStyle {
        case primary
        case secondary
        case danger
        
        var backgroundColor: Color {
            switch self {
            case .primary:
                return Color.blue
            case .secondary:
                return Color.gray.opacity(0.2)
            case .danger:
                return Color.red
            }
        }
        
        var textColor: Color {
            switch self {
            case .primary, .danger:
                return .white
            case .secondary:
                return .black
            }
        }
    }
}

struct CustomButton_Previews: PreviewProvider {
    static var previews: some View {
        VStack(spacing: 20) {
            CustomButton(title: "Основная", style: .primary) {}
            CustomButton(title: "Вторичная", style: .secondary) {}
            CustomButton(title: "Опасность", style: .danger) {}
        }
        .padding()
        .previewLayout(.sizeThatFits)
    }
}
