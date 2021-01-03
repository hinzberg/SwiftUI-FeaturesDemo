//  TableSearchBar.swift
//  Created by Holger Hinzberg on 02.06.20.
//  Copyright © 2020 Holger Hinzberg. All rights reserved.

import SwiftUI

struct TableSearchBar: UIViewRepresentable {
    
    @Binding var text: String
    
    class Coordinator: NSObject, UISearchBarDelegate {
        
        @Binding var text: String
        
        init(text: Binding<String>) {
            _text = text
        }
        
        func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
            text = searchText
        }
        
        func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
            text = ""
            searchBar.resignFirstResponder()
        }
    }
    
    func makeCoordinator() -> Coordinator {
        return Coordinator(text: $text)
    }
    
    func makeUIView(context: UIViewRepresentableContext<TableSearchBar>) -> UISearchBar {
        let searchBar = UISearchBar(frame: .zero)
        searchBar.placeholder = "Search"
        searchBar.showsCancelButton = true
        searchBar.searchBarStyle = UISearchBar.Style.minimal
        searchBar.delegate = context.coordinator
        return searchBar
    }
    
    func updateUIView(_ uiView: UISearchBar,  context: UIViewRepresentableContext<TableSearchBar>) {
        uiView.text = text
    }
}

struct TableSearchBar_Previews: PreviewProvider {
    static var previews: some View {
        TableSearchBar(text: .constant(""))
    }
}
