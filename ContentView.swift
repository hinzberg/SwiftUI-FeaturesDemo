//  ContentView.swift
//  SwiftUI-FeaturesDemo
//  Created by Holger Hinzberg on 04.07.20.

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var repo = SubViewRepository()
    //  Text for the SearchBar
    @State private var searchQuery: String = ""

    var body: some View {
        
        NavigationView{
            VStack{
                
                TableSearchBar(text: self.$searchQuery)
               
                List {
                    ForEach(repo.Filter(searchQuery: searchQuery), id:\.self.id) { item in
                        NavigationLink(destination: AnyView(_fromValue: item.view))
                        {
                            Text(item.viewTitle)
                                .font(.body)
                                .foregroundColor(Color.primary)
                        }
                    }
                }
                .listStyle(PlainListStyle())

            }.navigationBarTitle("SwiftUI Features Demo", displayMode: .inline)
        }
    }
}

struct TableCell: View {
    @State var text : String
    
    var body: some View {
            VStack (alignment: .leading)
            {
                Text(self.text).font(.body).foregroundColor(Color.primary)
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
