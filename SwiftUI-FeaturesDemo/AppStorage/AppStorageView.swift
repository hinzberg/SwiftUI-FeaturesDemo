//
//  AppStorageView.swift
//  SwiftUI-FeaturesDemo
//
//  Created by Holger Hinzberg on 29.12.20.
//

import SwiftUI

struct AppStorageView: View {
    
    @AppStorage("isOn") var isOn : Bool = true
    @AppStorage("firstName") var firstName : String = ""
    @AppStorage("lastName") var lastName : String = ""
    
    var body: some View {
        VStack {
            Toggle("Is on", isOn: $isOn).font(.body)
                .toggleStyle(SwitchToggleStyle(tint: Color(UIColor.systemBlue)))
            Text("First Name").font(.body)
                .frame(maxWidth: .infinity, alignment: .leading)
            TextField("", text: $firstName)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            Text("Last Name")
                .frame(maxWidth: .infinity, alignment: .leading)
            TextField("", text: $lastName)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            Spacer()
        }.padding()
    }
}

struct AppStorageView_Previews: PreviewProvider {
    static var previews: some View {
        AppStorageView()
    }
}
