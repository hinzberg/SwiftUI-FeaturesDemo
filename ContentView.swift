//  ContentView.swift
//  SwiftUI-FeaturesDemo
//  Created by Holger Hinzberg on 04.07.20.

import SwiftUI

struct ContentView: View {
    
    init() {
    }
        
    var body: some View {
        
        NavigationView{
        List {

            NavigationLink(
                destination: AnimatedGridView(),
                label: {Text("Animated Grid (matchedGeometryEffect)").font(.title2)})
                .listRowInsets(EdgeInsets(top: 15, leading: 20, bottom: 15, trailing: 10))

            NavigationLink(
                destination: DisclosureGroupView(),
                label: {Text("DisclosureGroup").font(.title2)})
                .listRowInsets(EdgeInsets(top: 15, leading: 20, bottom: 15, trailing: 10))
            
            NavigationLink(
                destination: GridView(),
                label: {Text("Grid with ScrollView and Section").font(.title2)})
                .listRowInsets(EdgeInsets(top: 15, leading: 20, bottom: 15, trailing: 10))
            
            NavigationLink(
                destination: OutlineGroupView(),
                label: {Text("OutlineGroup").font(.title2)})
                .listRowInsets(EdgeInsets(top: 15, leading: 20, bottom: 15, trailing: 10))
            
            NavigationLink(
                destination: GradientView(),
                label: {Text("Color Gradients").font(.title2)})
                .listRowInsets(EdgeInsets(top: 15, leading: 20, bottom: 15, trailing: 10))
            
            NavigationLink(
                destination: RedactedView(),
                label: {Text("Redacted").font(.title2)})
                .listRowInsets(EdgeInsets(top: 15, leading: 20, bottom: 15, trailing: 10))
            
            NavigationLink(
                destination: DatePickerView(),
                label: {Text("DatePicker").font(.title2)})
                .listRowInsets(EdgeInsets(top: 15, leading: 20, bottom: 15, trailing: 10))
            
            NavigationLink(
                destination: ColorPickerView(),
                label: {Text("ColorPicker").font(.title2)})
                .listRowInsets(EdgeInsets(top: 15, leading: 20, bottom: 15, trailing: 10))
            
            NavigationLink(
                destination: HapticView(),
                label: {Text("Haptic Feedback").font(.title2)})
                .listRowInsets(EdgeInsets(top: 15, leading: 20, bottom: 15, trailing: 10))
            
            NavigationLink(
                destination: ReuseStyleView(),
                label: {Text("Reuseable Styles").font(.title2)})
                .listRowInsets(EdgeInsets(top: 15, leading: 20, bottom: 15, trailing: 10))
            
        }.navigationBarTitle("SwiftUI Features Demo", displayMode: .inline)
        }.edgesIgnoringSafeArea(.top)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
