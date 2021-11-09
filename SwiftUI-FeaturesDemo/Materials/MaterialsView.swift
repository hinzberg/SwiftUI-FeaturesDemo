//
//  MaterialsView.swift
//  SwiftUI-FeaturesDemo
//
//  Created by Holger Hinzberg on 09.11.21.
//

import SwiftUI

struct MaterialsView: View {
    
    var repo = MaterialContainerRepository()
    
    var body: some View {
        ZStack {
            Color.blue
            List{
                ForEach(repo.getAllMaterialContainer(), id:\.id) { container in
                    
                    HStack {
                        Label(container.materialName ,systemImage: "bolt.heart.fill")
                            .font(.largeTitle)
                            .padding()
                            .tint(.yellow)
                        
                        Spacer()
                    }.background(container.material)
                    
                }.listRowBackground(Color.blue)
                    .listRowSeparator(.hidden)
            }.listStyle(.plain )
        }
    }
}

struct MaterialsView_Previews: PreviewProvider {
    static var previews: some View {
        MaterialsView()
    }
}
