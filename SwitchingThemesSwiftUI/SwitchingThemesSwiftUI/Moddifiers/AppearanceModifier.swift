//
//  AppearanceModifier.swift
//  SwitchingThemesSwiftUI
//
//  Created by Lusine on 5/24/22.
//

import SwiftUI

struct AppearanceModifier: ViewModifier {
    let backgroundColor: UIColor
    let textColor: UIColor
    let backgroundImage: UIImage?
    init(backgroundColor: UIColor, textColor: UIColor, backgroundImage: UIImage? = nil) {
        self.backgroundColor = backgroundColor
        self.textColor = textColor
        self.backgroundImage = backgroundImage
        
        // Navigation Bar Appearance Styling
        let navBarAppearance = UINavigationBarAppearance()
        navBarAppearance.backgroundImage = backgroundImage
        navBarAppearance.backgroundImageContentMode = .scaleAspectFill
        
        if backgroundImage == nil {
            navBarAppearance.configureWithTransparentBackground()
        }
        navBarAppearance.backgroundColor = backgroundColor
        navBarAppearance.titleTextAttributes = [.foregroundColor: textColor]
        navBarAppearance.largeTitleTextAttributes = [.foregroundColor: textColor]
        UINavigationBar.appearance().standardAppearance = navBarAppearance
        UINavigationBar.appearance().scrollEdgeAppearance = navBarAppearance
        
    }
    
    func body(content: Content) -> some View {
        content
    }
}

extension View {
    func appearanceModifier(backgroundColor: UIColor, textColor: UIColor, backgroundImage: UIImage? = nil) ->  some View {
        self.modifier(AppearanceModifier(backgroundColor: backgroundColor, textColor: textColor))
        
    }
}
