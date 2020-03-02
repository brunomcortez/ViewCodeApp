//
//  CSS.swift
//  ViewCodeApp
//
//  Created by Bruno Cortez on 2/28/20.
//  Copyright © 2020 Bruno Cortez. All rights reserved.
//

import Foundation
import UIKit

enum Margin {
    static let horizontal: CGFloat = 24
    static let verticalSmall: CGFloat = 8
    static let verticalNormal: CGFloat = 14
    static let verticalLarge: CGFloat = 20
    static let verticalVeryLarge: CGFloat = 34
}

extension UIColor {
    static let mainBlack = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
    static let mediumGray = #colorLiteral(red: 0.4862745098, green: 0.4862745098, blue: 0.4862745098, alpha: 1)
    static let baseBlue = #colorLiteral(red: 0.1294117647, green: 0.3490196078, blue: 0.7137254902, alpha: 1)
    static let superLightGray = #colorLiteral(red: 0.9843137255, green: 0.9843137255, blue: 0.9843137255, alpha: 1)
    
    static let title = UIColor.mainBlack
    static let body = UIColor.mediumGray
    static let mainButton = UIColor.baseBlue
    static let mainButtonText = UIColor.white
    static let secondaryButton = UIColor.white
    static let secondaryButtonText = UIColor.mainBlack
    static let secondaryButtonBorder = UIColor.mainBlack
    static let background = UIColor.superLightGray
}

extension UIFont {
    static let title = UIFont.boldSystemFont(ofSize: 28)
    static let body = UIFont.systemFont(ofSize: 15)
    static let button = UIFont.boldSystemFont(ofSize: 15)
}
