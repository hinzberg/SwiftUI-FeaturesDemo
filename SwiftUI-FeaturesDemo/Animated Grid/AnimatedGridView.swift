//
//  AnimatedGridView.swift
//  SwiftUI-FeaturesDemo
//
//  Created by Holger Hinzberg on 04.07.20.

// Based on a tutorial by Kavsoft
// https://www.youtube.com/watch?v=kF4yFSiOee0

import SwiftUI

struct Language : Identifiable {
    var id : Int
    var lang : String
}

struct SectionHeaderView : View {
    
    @State var headerText : String
    
    var body: some View {
        
        HStack {
            Text(headerText)
                .font(.title)
                .fontWeight(.bold)
            Spacer()
        }
    }
}

struct AnimatedGridView: View {
    
    @State var languages : [Language] = [
        Language(id: 0, lang: "Banana"),
        Language(id: 1, lang: "Coffee"),
        Language(id: 2, lang: "Apple"),
        Language(id: 3, lang: "Cheese"),
        Language(id: 4, lang: "Milk"),
        Language(id: 5, lang: "Bread"),
        Language(id: 6, lang: "Tea")
    ]
    
    @Namespace var namespace
    @State var selected : [Language] = []
    
    var columns = Array(repeating: GridItem(.flexible(), spacing: 15), count: 3)
    
    var body: some View {
        
        ScrollView {
            
            if !self.languages.isEmpty {

                LazyVGrid(columns:columns, spacing: 15)
                {
                    Section(header: SectionHeaderView(headerText: "Shopping List")) {}
                    
                    ForEach(self.languages) { language in
                        Text(language.lang)
                            .foregroundColor(.white)
                            .fontWeight(.bold)
                            .frame(width: 100, height: 100)
                            .background(Color.blue)
                            .cornerRadius(20)
                            .matchedGeometryEffect(id: language.id, in: self.namespace)
                            .onTapGesture {
                                self.selected.append(language)
                                self.languages.removeAll() { (lang) -> Bool in
                                    if lang.id == language.id {
                                        return true
                                    } else {
                                        return false
                                    }
                                }
                            }
                    }
                }
                .padding(.all)
            }
            
            if !self.selected.isEmpty {
                
                LazyVGrid(columns:columns, spacing: 15) {
                    
                    Section(header: SectionHeaderView(headerText: "In Cart")) {}
                    
                    ForEach(self.selected) { language in
                        Text(language.lang)
                            .foregroundColor(.white)
                            .fontWeight(.bold)
                            .frame(width: 100, height: 100)
                            .background(Color.green)
                            .cornerRadius(15)
                            .matchedGeometryEffect(id: language.id, in: self.namespace)
                            .onTapGesture {
                                self.languages.append(language)
                                self.selected.removeAll() { (lang) -> Bool in
                                    if lang.id == language.id {
                                        return true
                                    } else {
                                        return false
                                    }
                                }
                            }
                    }
                }
                .padding(.all)
                .animation(.easeOut)
            }
        }
        .navigationTitle("Animated Grid")
        
    }
}

struct AnimatedGridView_Previews: PreviewProvider {
    static var previews: some View {
        AnimatedGridView()
    }
}
