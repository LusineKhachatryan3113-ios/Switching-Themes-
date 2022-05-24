//
//  ThemeManager.swift
//  SwitchingThemesSwiftUI
//
//  Created by Lusine on 5/24/22.
//

import Foundation

enum ThemeManager {
    static let themes: [Theme] = [Theme1(), Theme2(), Theme3()]
    
    static func getTheme(_ theme: Int) -> Theme {
        Self.themes[theme]
    }
}
