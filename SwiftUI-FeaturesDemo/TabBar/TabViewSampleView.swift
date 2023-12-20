//  TabViewView.swift
//  SwiftUI-FeaturesDemo
//  Created by Holger Hinzberg on 18.10.22.

import SwiftUI

struct CounterView: View {
    @State var counter = 0
    var body: some View {
        VStack {
            Text("Counter: \(counter)")
            Button {
                counter = counter + 1
            } label: {
                Text("Add 1")
                    .frame(maxWidth: .infinity)
            }
            .buttonStyle(.bordered)
            
            Button {
                counter = 0
            } label: {
                Text("Reset")
                    .frame(maxWidth: .infinity)
            }
            .buttonStyle(.bordered)
        }.padding()
    }
}

struct TabViewSampleView: View {
    var body: some View {
        TabView {
            CounterView()
                .tabItem {
                    Label("Counter", systemImage: "number")
                }
            Text("View 2")
                .font(.title)
                .tabItem {
                    Label("View 2", systemImage: "pencil.and.outline")
                }
        }
    }
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabViewSampleView()
    }
}
