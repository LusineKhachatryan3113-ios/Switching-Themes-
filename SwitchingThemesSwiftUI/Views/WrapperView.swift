//
//  WrapperView.swift
//  SwitchingThemesSwiftUI
//
//  Created by Lusine on 5/24/22.
//


import SwiftUI

struct WrapperView: View {
    @EnvironmentObject var dataSource: DataSource
    var body: some View {
        ForEach(0..<ThemeManager.themes.count, id: \.self) { theme in
            if ThemeManager.themes[theme].themeName == dataSource.selectedTheme.themeName {
                ContentView()
            }
    }
}
}
struct WrapperView_Previews: PreviewProvider {
    static var previews: some View {
        WrapperView()
            .environmentObject(DataSource())
    }
}
