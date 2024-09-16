//  HeroAnimationView.swift
//  SwiftUI-FeaturesDemo
//  Created by Holger Hinzberg on 04.09.21.
// Based on a tutorial by  Mohammad Azam
// https://www.youtube.com/watch?v=cbnjUm11aIk

import SwiftUI

struct HeroAnimationView: View {
    
    @Namespace var namespace
    @State private var selectedSymbol : String?
        
    let symbols = ["keyboard", "hifispeaker.fill", "printer.fill", "tv.fill",
                            "desktopcomputer", "headphones", "tv.music.note","mic", "plus.bubble", "video"]
    
    var body: some View {
        
        VStack {
            if self.selectedSymbol == nil {
                LazyVGrid (columns:
                            [GridItem(.flexible()),GridItem(.flexible()),GridItem(.flexible())], content: {
                                ForEach(symbols, id: \.self) { symbol in
                                    Image(systemName: symbol)
                                        .font(.system(size: 40))
                                        .padding()
                                        .matchedGeometryEffect(id: symbol, in: namespace)
                                        .onTapGesture {
                                            withAnimation {
                                                self.selectedSymbol = symbol
                                            }
                                        }
                                }
                            })
            }
            else {
                Image(systemName: self.selectedSymbol!)
                    .matchedGeometryEffect(id: self.selectedSymbol!, in: namespace)
                    .font(.system(size: 70))
                    .onTapGesture {
                        withAnimation {
                            self.selectedSymbol = nil
                        }
                    }
                Spacer()
            }
        }.padding()
    }
}

struct HeroAnimationView_Previews: PreviewProvider {
    static var previews: some View {
        HeroAnimationView()
    }
}
