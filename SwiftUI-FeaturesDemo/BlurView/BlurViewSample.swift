//  BlurViewSample.swift
//  SwiftUI-FeaturesDemo
//  Created by Holger Hinzberg on 04.06.21.

import SwiftUI

struct BlurViewSample: View {
    
    @State var isBlured = false
    
    var body: some View {
        VStack{
            ZStack {
                Image("ProfilImage")
                    .frame(width: 300, height: 300, alignment: .center)
                    .cornerRadius(10)
                if isBlured {
                    BlurView(style: .systemThinMaterialLight)
                }
            }.frame(height: 500, alignment: .center)
            
            Toggle("Blur", isOn: $isBlured)
                .toggleStyle(SwitchToggleStyle(tint: Color(UIColor.systemBlue)))
            .padding()
            
        }
    }
}

struct BlurViewSample_Previews: PreviewProvider {
    static var previews: some View {
        BlurViewSample()
    }
}
