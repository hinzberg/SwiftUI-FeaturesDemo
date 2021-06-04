//  BlurView.swift
//  SwiftUI-FeaturesDemo
//  Created by Holger Hinzberg on 04.06.21.
// Tutorial by iOS Academy
// https://www.youtube.com/watch?v=Ik8WmcERros&list=WL&index=41

import SwiftUI

struct BlurView: UIViewRepresentable {
    
    let style : UIBlurEffect.Style

    func makeUIView(context: Context) -> UIVisualEffectView {
        let view = UIVisualEffectView(effect: UIBlurEffect(style: style))
        return view
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
        // Nothing to do here
    }
}


