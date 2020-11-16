//
//  ReuseStyleView.swift
//  SwiftUI-FeaturesDemo
//
//  Created by Holger Hinzberg on 16.11.20.
//

import SwiftUI



struct ReuseStyleView: View {
    
    var body: some View {
        
        VStack{
            
            Button("CustomButtonStyle") { /* Action */ }
                .buttonStyle(CustomButtonStyle())
            
            Button("CustomColorButtonStyle") { /* Action */ }
                .buttonStyle(CustomColorButtonStyle(backgroundColor: .yellow, foregroundColor: .black))
            
            Button("CustomColorButtonStyle") { /* Action */ }
                .buttonStyle(CustomColorButtonStyle(backgroundColor: .purple, foregroundColor: .yellow))
            
        }
    }
}

struct ReuseStyleView_Previews: PreviewProvider {
    static var previews: some View {
        ReuseStyleView()
    }
}
