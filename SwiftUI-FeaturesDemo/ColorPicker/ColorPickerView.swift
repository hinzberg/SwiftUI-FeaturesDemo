//
//  ColorPickerView.swift
//  SwiftUI-FeaturesDemo
//
//  Created by Holger Hinzberg on 18.10.20.
//

import SwiftUI

struct ColorPickerView: View {
    
    @State private var selectedColor = Color.green
    
    var body: some View {
        VStack {
            ColorPicker("Select a color", selection: $selectedColor, supportsOpacity: true)
            
            Rectangle()
                .fill(selectedColor)
                .frame(width: 100, height: 100, alignment: .center)
        }.padding()
    }
}

struct ColorPickerView_Previews: PreviewProvider {
    static var previews: some View {
        ColorPickerView()
    }
}
