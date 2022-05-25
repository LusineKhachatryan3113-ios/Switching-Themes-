//
//  DataSource.swift
//  SwitchingThemesSwiftUI
//
//  Created by Lusine on 5/24/22.
//

import SwiftUI

class DataSource: ObservableObject {
    
    @Published var selectedTheme: Theme = Theme3()
    
    @AppStorage("selectedTheme") var selectedThemeAS = 1 {
        
    didSet {
        updateTheme()
    }
    }
    
    init() {
        updateTheme()
    }
    
    func updateTheme() {
        selectedTheme = ThemeManager.getTheme(selectedThemeAS)
    }
}
