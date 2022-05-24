//
//  ThemeChanger.swift
//  SwitchingThemesSwiftUI
//
//  Created by Lusine on 5/24/22.
//

import SwiftUI

@main
struct  ThemeChanger: App {
    var body: some Scene {
        WindowGroup {
            WrapperView()
                .environmentObject(DataSource())
        }
    }
}
