//  TableView.swift
//  SwiftUI-FeaturesDemo
//  Created by Holger Hinzberg on 03.01.21.

import SwiftUI

struct SimpleList: View {
    
    let cities = ["Berlin","Paris", "London","Tokio","Amsterdam","Madrid","Hong Kong","New York", "Bern", "Delhi", "Shanghai"]
    
    var body: some View {
        
        VStack (alignment: .leading) {
            List{
                ForEach(self.cities.sorted() , id: \.self)   { city in
                    Text(city)
                }
            }.listStyle(PlainListStyle())
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct TableView_Previews: PreviewProvider {
    static var previews: some View {
        SimpleList()
    }
}
