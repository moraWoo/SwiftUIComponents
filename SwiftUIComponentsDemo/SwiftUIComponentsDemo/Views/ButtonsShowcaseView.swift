//
//  ButtonsShowcaseView.swift
//  common_swiftui_sdk
//
//  Created by Ildar Khabibullin on 08.04.2025.
//

import SwiftUI
import SwiftUI_Components

struct ButtonsShowcaseView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 24) {
                sectionTitle("Стили кнопок")
                
                VStack(alignment: .leading, spacing: 12) {
                    CustomButton(title: "Основная кнопка", style: .primary) {
                        print("Нажата основная кнопка")
                    }
                    
                    CustomButton(title: "Вторичная кнопка", style: .secondary) {
                        print("Нажата вторичная кнопка")
                    }
                    
                    CustomButton(title: "Кнопка опасности", style: .danger) {
                        print("Нажата кнопка опасности")
                    }
                }
                .padding()
                
                sectionTitle("Использование")
                
                codeExample("""
                CustomButton(
                    title: "Текст кнопки", 
                    style: .primary
                ) {
                    // Действие при нажатии
                }
                """)
            }
            .padding()
        }
        .navigationTitle("Кнопки")
    }
    
    private func sectionTitle(_ title: String) -> some View {
        Text(title)
            .font(.headline)
            .padding(.top, 8)
    }
    
    private func codeExample(_ code: String) -> some View {
        Text(code)
            .font(.system(.footnote, design: .monospaced))
            .padding()
            .background(Color.gray.opacity(0.1))
            .cornerRadius(8)
    }
}

struct ButtonsShowcaseView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonsShowcaseView()
    }
}
