//
//  GridView.swift
//  SwiftUI-FeaturesDemo
//
//  Created by Holger Hinzberg on 20.07.20.
//

import SwiftUI

struct GridCell: View {
    public var index : Int
    
    var body: some View {
        VStack {
            Text("\(index)")
                .font(.title)
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 30, maxHeight: 30, alignment: .center)
        .background(Color.random)
    }
}

struct GridView: View {
    
    /*
     private var columns: [GridItem] = [
     GridItem(.fixed(120), spacing: 10),
     GridItem(.fixed(120), spacing: 10),
     GridItem(.fixed(120), spacing: 10)
     ]
     */
    
    /*
    private var columns: [GridItem] = [
        GridItem(.fixed(50), spacing: 10),
        GridItem(.flexible(), spacing: 10),
        GridItem(.fixed(50), spacing: 10)
    ]
    */
    
    
    private var columns: [GridItem] = [
        GridItem(.flexible(minimum: 10, maximum: 200), spacing: 10),
        GridItem(.flexible(minimum: 10, maximum: 200), spacing: 10),
        GridItem(.flexible(minimum: 10, maximum: 200), spacing: 10),
    ]
        
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns, alignment: .center, spacing: 16,
                      pinnedViews: [.sectionHeaders]
            ) {
                Section(header: Text("Headertext 1").font(.title)) {
                    ForEach(1...6, id: \.self) { index in
                        GridCell(index: index)
                    }
                }
                Section(header: Text("Headertext 2").font(.title)) {
                    ForEach(7...12, id: \.self) { index in
                        GridCell(index: index)
                    }
                }
            }.padding(5)
        }
    }
}

struct GridView_Previews: PreviewProvider {
    static var previews: some View {
        GridView()
    }
}
