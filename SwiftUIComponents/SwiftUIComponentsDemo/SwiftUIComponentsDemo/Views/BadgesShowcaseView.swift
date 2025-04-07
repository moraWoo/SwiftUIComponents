//
//  BadgesShowcaseView.swift
//  common_swiftui_sdk
//
//  Created by Ildar Khabibullin on 08.04.2025.
//

import SwiftUI
import SwiftUI_Components

struct BadgesShowcaseView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 24) {
                sectionTitle("Стили бейджей")
                
                VStack(alignment: .leading, spacing: 16) {
                    HStack {
                        Badge(text: "Информация", style: .info)
                        Spacer()
                        Text(".info")
                            .font(.system(.caption, design: .monospaced))
                            .foregroundColor(.secondary)
                    }
                    
                    HStack {
                        Badge(text: "Успех", style: .success)
                        Spacer()
                        Text(".success")
                            .font(.system(.caption, design: .monospaced))
                            .foregroundColor(.secondary)
                    }
                    
                    HStack {
                        Badge(text: "Предупреждение", style: .warning)
                        Spacer()
                        Text(".warning")
                            .font(.system(.caption, design: .monospaced))
                            .foregroundColor(.secondary)
                    }
                    
                    HStack {
                        Badge(text: "Ошибка", style: .error)
                        Spacer()
                        Text(".error")
                            .font(.system(.caption, design: .monospaced))
                            .foregroundColor(.secondary)
                    }
                }
                .padding()
                
                sectionTitle("Примеры использования")
                
                exampleCard("Статус заказа", badges: [
                    ("В обработке", Badge.BadgeStyle.info),
                    ("Отправлен", Badge.BadgeStyle.success),
                    ("Задержка", Badge.BadgeStyle.warning),
                    ("Отменен", Badge.BadgeStyle.error)
                ])
                
                sectionTitle("Использование")
                
                codeExample("""
                Badge(
                    text: "Текст бейджа", 
                    style: .info
                )
                """)
            }
            .padding()
        }
        .navigationTitle("Бейджи")
    }
    
    private func exampleCard(_ title: String, badges: [(String, Badge.BadgeStyle)]) -> some View {
        VStack(alignment: .leading, spacing: 12) {
            Text(title)
                .font(.headline)
            
            VStack(alignment: .leading, spacing: 8) {
                ForEach(0..<badges.count, id: \.self) { index in
                    HStack {
                        Text("Статус \(index + 1):")
                        Badge(text: badges[index].0, style: badges[index].1)
                    }
                }
            }
        }
        .padding()
        .background(Color.white)
        .cornerRadius(12)
        .shadow(color: Color.black.opacity(0.05), radius: 5, x: 0, y: 2)
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

struct BadgesShowcaseView_Previews: PreviewProvider {
    static var previews: some View {
        BadgesShowcaseView()
    }
}
