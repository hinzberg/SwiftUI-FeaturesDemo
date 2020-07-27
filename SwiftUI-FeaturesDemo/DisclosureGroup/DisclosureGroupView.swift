//  DisclosureGroupView.swift
//  SwiftUI-FeaturesDemo
//
//  Created by Holger Hinzberg on 04.07.20.

import SwiftUI

struct DisclosureGroupView: View {
    
    @State var username: String = ""
    @State var password: String = ""
    @State var isAutoSignIn: Bool = false
    @State var isOption1: Bool = false
    @State var isOption2: Bool = false
    @State var isOption3: Bool = true
    
    @State var disclosureIsExpanded = false
    
    var body: some View {
        
        Form {
            
            Section(header: Text("Login")) {
                TextField("Username", text: $username)
                TextField("Password", text: $password)
                Toggle(isOn: $isAutoSignIn) {Text("Save Login")}
                
                DisclosureGroup("Optionen" , isExpanded: self.$disclosureIsExpanded) {
                    Toggle(isOn: $isOption1) {Text("Log off automatically if inactive")}
                        .padding(EdgeInsets(top: 15, leading: 15, bottom: 5, trailing: 5))
                    Toggle(isOn: $isOption2) {Text("Allow unsecured connection")}
                        .padding(EdgeInsets(top: 5, leading: 15, bottom: 5, trailing: 5))
                    Toggle(isOn: $isOption3) {Text("Log connections")}
                        .padding(EdgeInsets(top: 5, leading: 15, bottom: 5, trailing: 5))
                }
            }
            
            Section {
                Button(action: {
                    disclosureIsExpanded = false
                    print("Login")
                }) {
                    Text("Login now")
                }
            }
        }.navigationBarTitle("DisclosureGroup")
    }
}

struct DisclosureGroupView_Previews: PreviewProvider {
    static var previews: some View {
        DisclosureGroupView()
    }
}
