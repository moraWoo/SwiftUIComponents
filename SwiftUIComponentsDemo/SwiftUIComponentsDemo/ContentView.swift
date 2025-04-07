//
//  ContentView.swift
//  SwiftUIComponentsDemo
//
//  Created by Ildar Khabibullin on 08.04.2025.
//

import SwiftUI
import SwiftUI_Components

struct ContentView: View {
    var body: some View {
        NavigationView {
            List {
                NavigationLink("Кнопки") {
                    ButtonsShowcaseView()
                }
                
                NavigationLink("Карточки") {
                    CardsShowcaseView()
                }
                
                NavigationLink("Бейджи") {
                    BadgesShowcaseView()
                }
            }
            .navigationTitle("UI Компоненты")
        }
    }
}

#Preview {
    ContentView()
}
