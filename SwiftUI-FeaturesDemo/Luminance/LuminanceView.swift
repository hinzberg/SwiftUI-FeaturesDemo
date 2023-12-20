//
//  LuminanceView.swift
//  SwiftUI-FeaturesDemo
//
//  Created by Holger Hinzberg on 20.12.23.
//

import SwiftUI

struct LuminanceView: View {
    
    @State var redSliderValue : Double = 0.7
    @State var greenSliderValue : Double = 0.7
    @State var blueSliderValue : Double = 0.7

    private func backgroundColor() -> Color {
        return Color(red: redSliderValue, green: greenSliderValue, blue: blueSliderValue)
    }
        
    var body: some View {
        
        VStack {
                        
            Slider(value: $redSliderValue, in: 0...1)
                .tint(.black)
                .padding()
            
            Slider(value: $greenSliderValue, in: 0...1)
                .tint(.black)
                .padding()
            
            Slider(value: $blueSliderValue, in: 0...1)
                .tint(.black)
                .padding()
            
            Text("Hello Luminance")
                .font(.largeTitle)
                .foregroundStyle(backgroundColor().adaptedTextColor())
            
            Spacer()
        }
        .background(backgroundColor())
    }
}

#Preview {
    LuminanceView()
}
