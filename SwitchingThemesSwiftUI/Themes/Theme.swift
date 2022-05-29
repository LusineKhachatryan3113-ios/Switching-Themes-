//
//  Theme.swift
//  SwitchingThemesSwiftUI
//
//  Created by Lusine on 5/24/22.
//

import UIKit

protocol Theme {
    
    var primaryColor: UIColor { get }
    var secondaryColor: UIColor { get }
    var labelColor: UIColor { get }
    var themeName: String { get }
}
