//  ContentView.swift
//  SwiftUI-FeaturesDemo
//  Created by Holger Hinzberg on 04.07.20.

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var repo = SubViewRepository()
    //  Text for the SearchBar
    @State private var searchText: String = ""

    init() {
        let customAppearance = UINavigationBarAppearance()
        // Backgroundcolor
        customAppearance.backgroundColor = UIColor(red: 0.8, green: 0.8, blue: 1.0, alpha: 1)
        // Font color for navigationBarTitleDisplayMode large
        customAppearance.largeTitleTextAttributes = [.foregroundColor: UIColor.systemBlue]
        // Font color for navigationBarTitleDisplayMode inline
        customAppearance.titleTextAttributes = [.foregroundColor: UIColor.systemBlue]
        
        UINavigationBar.appearance().standardAppearance = customAppearance
        UINavigationBar.appearance().compactAppearance = customAppearance
        UINavigationBar.appearance().scrollEdgeAppearance = customAppearance
    }

    var body: some View {
        
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
                    .onChange(of: searchText) { searchText in
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
