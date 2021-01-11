//  TableView.swift
//  SwiftUI-FeaturesDemo
//  Created by Holger Hinzberg on 03.01.21.

import SwiftUI

struct SimpleList: View {
    
    @State var searchQuery = ""
    let cities = ["Berlin","Paris", "London","Tokio","Amsterdam","Madrid","Hong Kong","New York", "Bern", "Delhi", "Shanghai"]
    
    var body: some View {
        VStack {
            
            TextField("This is not a Searchbar", text: $searchQuery)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding(EdgeInsets(top: 10, leading: 10, bottom: 2, trailing: 10))
            
            List{
                ForEach(self.cities.sorted() , id: \.self)   { city in
                    Text(city)
                }
            }.listStyle(PlainListStyle())
        }.navigationBarTitle("SwiftUI List Demo", displayMode: .inline)
        //.navigationViewStyle(StackNavigationViewStyle())
    }
}

struct TableView_Previews: PreviewProvider {
    static var previews: some View {
        SimpleList()
    }
}
