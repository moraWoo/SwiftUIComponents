//
//  Badge.swift
//  swiftuiComponents
//
//  Created by Ildar Khabibullin on 08.04.2025.
//

import SwiftUI

public struct Badge: View {
    private let text: String
    private let style: BadgeStyle
    
    public init(text: String, style: BadgeStyle = .info) {
        self.text = text
        self.style = style
    }
    
    public var body: some View {
        Text(text)
            .font(.system(size: 12, weight: .medium))
            .padding(.horizontal, 10)
            .padding(.vertical, 4)
            .background(style.backgroundColor)
            .foregroundColor(style.textColor)
            .cornerRadius(12)
    }
    
    public enum BadgeStyle {
        case info
        case success
        case warning
        case error
        
        var backgroundColor: Color {
            switch self {
            case .info:
                return Color.blue.opacity(0.2)
            case .success:
                return Color.green.opacity(0.2)
            case .warning:
                return Color.yellow.opacity(0.3)
            case .error:
                return Color.red.opacity(0.2)
            }
        }
        
        var textColor: Color {
            switch self {
            case .info:
                return Color.blue
            case .success:
                return Color.green
            case .warning:
                return Color.orange
            case .error:
                return Color.red
            }
        }
    }
}

// Расширение для предварительного просмотра
struct Badge_Previews: PreviewProvider {
    static var previews: some View {
        VStack(spacing: 10) {
            Badge(text: "Информация", style: .info)
            Badge(text: "Успех", style: .success)
            Badge(text: "Предупреждение", style: .warning)
            Badge(text: "Ошибка", style: .error)
        }
        .padding()
        .previewLayout(.sizeThatFits)
    }
}
