//
//  CustomButtonStyle.swift
//  SwiftUI-FeaturesDemo
//
//  Created by Holger Hinzberg on 16.11.20.
//

import SwiftUI

struct CustomButtonStyle : ButtonStyle {
    
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .font(Font.system(size: 20, weight: .bold))
            .frame(maxWidth: .infinity, maxHeight: 45)
            .foregroundColor(.white)
            .background(Color(.systemBlue))
            .cornerRadius(15)
            .padding(10)
    }
}

