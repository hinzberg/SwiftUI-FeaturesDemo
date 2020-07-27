//  GradientView.swift
//  SwiftUI-FeaturesDemo
//  Created by Holger Hinzberg on 25.07.20.

import SwiftUI

extension View {
    public func gradientForeground<Overlay: View>(_ overlay: Overlay) -> some View {
        self.overlay(overlay).mask(self)
    }
}

struct GradientView: View {
    
    var body: some View {
        
        ScrollView (.vertical, showsIndicators: false) {
            VStack {
                
                Text("LinearGradient").font(.title)
                    .padding(5)
                
                Text("Hello SwiftUI")
                    .font(.title)
                    .padding(.all, 20)
                    .foregroundColor(.white)
                    .background(self.createSimpleLinearGradient())
                    .padding(.all, 10)
                
                Text("Hello SwiftUI")
                    .font(.title)
                    .padding(.all, 20)
                    .foregroundColor(.white)
                    .background(self.createComplexLinearGradient())
                    .padding(.all, 10)
                
                Text("Hello SwiftUI")
                    .font(.title)
                    .padding(.all, 20)
                    .gradientForeground(self.createSimpleLinearGradient())
                    .padding(.all, 10)
                
                Text("RadialGradient").font(.title)
                    .padding(5)
                
                Rectangle()
                    .fill(self.createSimpleRadialGradient())
                    .frame(width: 200, height: 200, alignment: .center)
                    .cornerRadius(15)
                    .padding(.all, 10)
                
                Rectangle()
                    .fill(self.createComplexRadialGradient())
                    .frame(width: 200, height: 200, alignment: .center)
                    .cornerRadius(15)
                    .padding(.all, 10)
                
                Text("AngularGradient").font(.title)
                    .padding(5)
                
                Rectangle()
                    .fill(self.createSimpleAngularGradient())
                    .frame(width: 200, height: 200, alignment: .center)
                    .cornerRadius(15)
                    .padding(.all, 10)
                
                Rectangle()
                    .fill(self.createComplexAngularGradient())
                    .frame(width: 200, height: 200, alignment: .center)
                    .cornerRadius(15)
                    .padding(.all, 10)
                
            }
        }
    }
    
    func createSimpleLinearGradient() -> LinearGradient {
        LinearGradient(
            gradient: .init(colors: [.red, .blue]),
            startPoint: .leading,
            endPoint: .trailing
        )
    }
    
    func createComplexLinearGradient() -> LinearGradient {
        
        let gradient = Gradient(stops: [.init(color: .red, location: 0)
                                        , .init(color: .orange, location: 0.1)
                                        , .init(color: .yellow, location: 0.5)
                                        , .init(color: .green, location: 0.9)
                                        , .init(color: .blue, location: 1.0)])
        
        return LinearGradient(
            gradient: gradient,
            startPoint: .top,
            endPoint: .bottom
        )
    }
    
    func createSimpleRadialGradient() -> RadialGradient {
        let colors = Gradient(colors: [.red, .orange, .yellow, .green, .blue])
        return RadialGradient(gradient: colors, center: .center, startRadius: 0, endRadius: 100)
    }
    
    func createComplexRadialGradient() -> RadialGradient {
        
        let gradient = Gradient(stops: [.init(color: .red, location: 0)
                                        , .init(color: .orange, location: 0.7)
                                        , .init(color: .yellow, location: 0.8)
                                        , .init(color: .green, location: 0.9)
                                        , .init(color: .blue, location: 1.0)])
        
        return RadialGradient(
            gradient: gradient,
            center: .center,
            startRadius: 70,
            endRadius: 95
        )
    }
    
    func createSimpleAngularGradient() -> AngularGradient {
        let colors = Gradient(colors: [.red, .orange, .yellow, .green, .blue])
        return AngularGradient(gradient: colors, center: .center)
    }
    
    func createComplexAngularGradient() -> AngularGradient {
        
        let gradient = Gradient(stops: [.init(color: .red, location: 0)
                                        , .init(color: .orange, location: 0.1)
                                        , .init(color: .yellow, location: 0.5)
                                        , .init(color: .green, location: 0.9)
                                        , .init(color: .blue, location: 1.0)])
        
        return AngularGradient(gradient: gradient, center: .topTrailing, startAngle: .degrees(90), endAngle: .degrees(180))
    }
    
    
}

struct LinearGradientView_Previews: PreviewProvider {
    static var previews: some View {
        GradientView()
    }
}
