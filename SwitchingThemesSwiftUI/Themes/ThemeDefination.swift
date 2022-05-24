//
//  ThemeDefination.swift
//  SwitchingThemesSwiftUI
//
//  Created by Lusine on 5/24/22.
//

import UIKit

struct Theme1: Theme {
    var primaryColor: UIColor = UIColor(named: "1-PrimaryColor")!
    var secondaryColor: UIColor = UIColor(named: "1-SecondaryColor")!
    var labelColor: UIColor = UIColor(named: "1-LabelColor")!
    var themeName: String = "Theme 1"
}

struct Theme2: Theme {
    var primaryColor: UIColor = UIColor(named: "2-PrimaryColor")!
    var secondaryColor: UIColor = UIColor(named: "2-SecondaryColor")!
    var labelColor: UIColor = UIColor(named: "2-LabelColor")!
    var themeName: String = "Theme 2"
}

struct Theme3: Theme {
    var primaryColor: UIColor = UIColor(named: "3-PrimaryColor")!
    var secondaryColor: UIColor = UIColor(named: "3-SecondaryColor")!
    var labelColor: UIColor = UIColor(named: "3-LabelColor")!
    var themeName: String = "Theme 3"
    
}
