//
//  UIColor+Extensions.swift
//  MVVM-practice
//
//  Created by Shawn on 7/5/19.
//  Copyright © 2019 Shawn Hong. All rights reserved.
//

import Foundation
import UIKit

extension UIColor {
    static let mainTextBlue = UIColor.rgb(r: 7, g: 71, b: 89)
    static let highlightColor = UIColor.rgb(r: 50, g: 199, b: 242)
    
    static func rgb(r: CGFloat, g: CGFloat, b: CGFloat) -> UIColor {
        return UIColor(red: r/255, green: g/255, blue: b/255, alpha: 1)
    }
}
