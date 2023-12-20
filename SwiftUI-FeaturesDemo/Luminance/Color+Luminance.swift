//  Color+Luminance.swift
//  SwiftUI-FeaturesDemo
//  Created by Holger Hinzberg on 20.12.23.

// Based on a Tutorial by Pedro Rojas (Pit)
// https://www.youtube.com/@swiftandtips

import SwiftUI

extension Color {
        
    func luminance() -> Double {
        
        var red : CGFloat = 0
        var green : CGFloat = 0
        var blue : CGFloat = 0
        
        let uiColor = UIColor(self)
        uiColor.getRed(&red, green: &green, blue: &blue, alpha: nil)
                
        return    0.2126 * Double(red ) + 0.7152 * Double(green) + 0.0722 * Double(blue)
    }
    
    func isLight() -> Bool {
        return luminance() > 0.5
    }
    
    func adaptedTextColor() -> Color {
        return isLight() ? Color.black : Color.white
    }
}
