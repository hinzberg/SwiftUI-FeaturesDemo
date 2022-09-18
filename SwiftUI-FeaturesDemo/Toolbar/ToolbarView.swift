//
//  ToolbarView.swift
//  SwiftUI-FeaturesDemo
//
//  Created by Holger Hinzberg on 18.09.22.
//

import SwiftUI

struct ToolbarView: View
{
    @State var isOn : Bool = false
    @State var inputText : String = ""
    
    var body: some View {
        NavigationView {
            VStack {
                Text("Hello, world!")
                    .padding()
                TextField("Enter Text here", text: $inputText)
                    .padding(EdgeInsets(top: 8, leading: 8, bottom: 8, trailing: 8))
                    .overlay(RoundedRectangle(cornerRadius: 10)
                        .stroke( Color(UIColor(red: 0.8, green: 0.8, blue: 1.0, alpha: 1)), lineWidth: 2))
                    .padding()
                Spacer()
            }.toolbar {
                ToolbarItemGroup(placement: .bottomBar)
                {
                    Button(action: {}, label: { Image(systemName: "square.and.pencil") } )
                    Spacer()
                    Button(action: {}, label: { Image(systemName: "trash.fill").tint(Color.red) } )
                    Spacer()
                    Button(action: {}, label: { Image(systemName: "tag") } )
                }
                ToolbarItem(placement: .navigationBarLeading) {
                    Toggle("Switch", isOn: $isOn)
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {}, label: { Image(systemName: "square.and.arrow.up") } )
                }
                ToolbarItemGroup(placement: .keyboard) {
                    Button(action: {}, label: { Image(systemName: "pencil") } )
                    Button(action: {}, label: { Image(systemName: "doc.text") } )
                    Spacer()
                }
            }
        }
    }
}

struct ToolbarView_Previews: PreviewProvider {
    static var previews: some View {
        ToolbarView()
    }
}
