//
//  RedactedView.swift
//  SwiftUI-FeaturesDemo
//
//  Created by Holger Hinzberg on 03.08.20.
//

import SwiftUI

struct RedactedView: View {
    
    @State var isRedacted = false
    
    var body: some View {
        
        VStack{
            VStack {
                Image("ProfilImage")
                    .frame(width: 300, height: 300, alignment: .center)
                    .cornerRadius(10)
                
                Text("Firstname, Name")
                    .unredacted()
                Text("Street")
                Text("ZIP Code and City")
            }.redacted(reason:  isRedacted ? .placeholder : .init())
            
            Toggle("Redacted", isOn: $isRedacted)
                .toggleStyle(SwitchToggleStyle(tint: Color(UIColor.systemBlue)))
            .padding()
        }
    }
}

struct RedactedView_Previews: PreviewProvider {
    static var previews: some View {
        RedactedView()
    }
}
