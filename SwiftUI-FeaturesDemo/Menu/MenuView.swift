//  MenuView.swift
//  SwiftUI-FeaturesDemo
//  Created by Holger Hinzberg on 28.08.22.

import SwiftUI

struct MenuView: View {
    var body: some View {
        Text("Tab and hold the menu in the top right.")
            .navigationTitle("Menu")
            .navigationBarItems(
                trailing:
                    Menu() {
                        Button("Select", action: select)
                        Button("Remove", action: remove)
                        Button {
                            rotate()
                        } label: {
                            Label("Rotate", systemImage: "rotate.left")
                                .tint(Color(UIColor.systemBlue))
                        }
                        Button {
                            paint()
                        } label: {
                            Label("Paint", systemImage: "paintbrush")
                        }
                    } label: {
                        Image(systemName: "slider.horizontal.3")
                            .tint(Color(UIColor.systemBlue))
                    } primaryAction: {
                        primaryTap()
                    }
            )
    }
    
    func primaryTap() {
        print("primaryTap") }
    
    func select() {
        print("select") }
    
    func remove() {
        print("remove") }
    
    func rotate() {
        print("rotate") }
    
    func paint() {
        print("paint") }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}
