//  HapticView.swift
//  SwiftUI-FeaturesDemo
//  Created by Holger Hinzberg on 16.11.20.

import SwiftUI

struct HapticView: View {
    
    let haptic = HapticController.shared
    
    var body: some View {
        
        VStack {
            Button(action: { haptic.selectionVibrate() }) {
                Text("Selection Changed")
                    .font(.system(size: 15))
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .frame(minWidth: 100, maxWidth: .infinity, minHeight: 20)
                    .padding(10)
                    .background(Color.blue)
                    .cornerRadius(10)
            }
            .padding(20)
            .buttonStyle(PlainButtonStyle())
            
            Button(action: { haptic.vibrate(with: .success) }) {
                Text("Success")
                    .font(.system(size: 15))
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .frame(minWidth: 100, maxWidth: .infinity, minHeight: 20)
                    .padding(10)
                    .background(Color.green)
                    .cornerRadius(10)
            }
            .padding(20)
            .buttonStyle(PlainButtonStyle())
            
            Button(action: { haptic.vibrate(with: .warning)}) {
                Text("Warning")
                    .font(.system(size: 15))
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .frame(minWidth: 100, maxWidth: .infinity, minHeight: 20)
                    .padding(10)
                    .background(Color.yellow)
                    .cornerRadius(10)
            }
            .padding(20)
            .buttonStyle(PlainButtonStyle())
            
            Button(action: { haptic.vibrate(with: .error)}) {
                Text("Error")
                    .font(.system(size: 15))
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .frame(minWidth: 100, maxWidth: .infinity, minHeight: 20)
                    .padding(10)
                    .background(Color.red)
                    .cornerRadius(10)
            }
            .padding(20)
            .buttonStyle(PlainButtonStyle())
            
            Button(action: { haptic.vibrateImpact() }) {
                Text("Impact")
                    .font(.system(size: 15))
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .frame(minWidth: 100, maxWidth: .infinity, minHeight: 20)
                    .padding(10)
                    .background(Color.gray)
                    .cornerRadius(10)
            }
            .padding(20)
            .buttonStyle(PlainButtonStyle())
            
        }
    }
}


struct HapticView_Previews: PreviewProvider {
    static var previews: some View {
        HapticView()
    }
}
