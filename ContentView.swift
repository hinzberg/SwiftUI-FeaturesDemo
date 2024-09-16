//  ContentView.swift
//  SwiftUI-FeaturesDemo
//  Created by Holger Hinzberg on 04.07.20.

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var repo = SubViewRepository()
    //  Text for the SearchBar
    @State private var searchText: String = ""
    
    init() {
        /*
         let customAppearance = UINavigationBarAppearance()
         let appTintColor = UIColor(red: 0.8, green: 0.8, blue: 1.0, alpha: 1)
         let appNavigationTextColor = UIColor(red: 82 / 255, green: 94 / 255, blue: 145 / 255, alpha: 1)
         UINavigationBar.appearance().tintColor = appNavigationTextColor
         
         // Backgroundcolor
         customAppearance.backgroundColor = appTintColor
         // Font color for navigationBarTitleDisplayMode large
         customAppearance.largeTitleTextAttributes = [.foregroundColor: appNavigationTextColor]
         // Font color for navigationBarTitleDisplayMode inline
         customAppearance.titleTextAttributes = [.foregroundColor: appNavigationTextColor]
         
         UINavigationBar.appearance().standardAppearance = customAppearance
         UINavigationBar.appearance().compactAppearance = customAppearance
         UINavigationBar.appearance().scrollEdgeAppearance = customAppearance
         */
    }
    
    var body: some View {
        
        // NestedObservablesView()
        
        NavigationView{
            VStack{
                List {
                    ForEach(repo.Filter(searchQuery: searchText), id:\.self.id) { item in
                        NavigationLink(destination: AnyView(_fromValue: item.view))
                        {
                            Text(item.viewTitle)
                                .font(.body)
                                .foregroundColor(Color.primary)
                        }
                    }
                }
                .listStyle(PlainListStyle())
                
                .searchable(
                    text: $searchText,
                    placement: .navigationBarDrawer(displayMode: .always),
                    prompt: "Search something...")
                
                .onChange(of: searchText) { oldState, newState in
                    print(searchText)
                }
                
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
