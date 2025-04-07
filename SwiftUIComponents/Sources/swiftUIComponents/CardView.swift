//
//  CardView.swift
//  swiftuiComponents
//
//  Created by Ildar Khabibullin on 08.04.2025.
//

import SwiftUI

public struct CardView<Content: View>: View {
    private let content: Content
    private let style: CardStyle
    
    public init(style: CardStyle = .normal, @ViewBuilder content: () -> Content) {
        self.content = content()
        self.style = style
    }
    
    public var body: some View {
        content
            .padding()
            .background(style.backgroundColor)
            .cornerRadius(style.cornerRadius)
            .shadow(color: Color.black.opacity(0.1), radius: style.shadowRadius, x: 0, y: 2)
    }
    
    public enum CardStyle {
        case normal
        case elevated
        case flat
        
        var backgroundColor: Color {
            switch self {
            case .normal, .elevated:
                return .white
            case .flat:
                return Color.gray.opacity(0.05)
            }
        }
        
        var cornerRadius: CGFloat {
            switch self {
            case .normal, .elevated:
                return 12
            case .flat:
                return 8
            }
        }
        
        var shadowRadius: CGFloat {
            switch self {
            case .normal:
                return 4
            case .elevated:
                return 8
            case .flat:
                return 0
            }
        }
    }
}

// Расширение для предварительного просмотра
struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        VStack(spacing: 20) {
            CardView(style: .normal) {
                Text("Обычная карточка")
                    .padding()
            }
            
            CardView(style: .elevated) {
                Text("Приподнятая карточка")
                    .padding()
            }
            
            CardView(style: .flat) {
                Text("Плоская карточка")
                    .padding()
            }
        }
        .padding()
        .background(Color.gray.opacity(0.1))
        .previewLayout(.sizeThatFits)
    }
}
