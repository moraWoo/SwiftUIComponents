//
//  CardsShowcaseView.swift
//  common_swiftui_sdk
//
//  Created by Ildar Khabibullin on 08.04.2025.
//

import SwiftUI
import SwiftUI_Components

struct CardsShowcaseView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 24) {
                sectionTitle("Стили карточек")
                
                VStack(spacing: 20) {
                    CardView(style: .normal) {
                        VStack(alignment: .leading) {
                            Text("Обычная карточка")
                                .font(.headline)
                            Text("Этот стиль используется по умолчанию")
                                .font(.subheadline)
                                .foregroundColor(.secondary)
                        }
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding()
                    }
                    
                    CardView(style: .elevated) {
                        VStack(alignment: .leading) {
                            Text("Приподнятая карточка")
                                .font(.headline)
                            Text("Имеет более заметную тень")
                                .font(.subheadline)
                                .foregroundColor(.secondary)
                        }
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding()
                    }
                    
                    CardView(style: .flat) {
                        VStack(alignment: .leading) {
                            Text("Плоская карточка")
                                .font(.headline)
                            Text("Без тени, с минимальным фоном")
                                .font(.subheadline)
                                .foregroundColor(.secondary)
                        }
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding()
                    }
                }
                
                sectionTitle("Использование")
                
                codeExample("""
                CardView(style: .normal) {
                    Text("Содержимое карточки")
                        .padding()
                }
                """)
            }
            .padding()
        }
        .navigationTitle("Карточки")
        .background(Color.gray.opacity(0.05).ignoresSafeArea())
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

struct CardsShowcaseView_Previews: PreviewProvider {
    static var previews: some View {
        CardsShowcaseView()
    }
}
