//
//  SubViewData.swift
//  SwiftUI-FeaturesDemo
//
//  Created by Holger Hinzberg on 29.12.20.
//

import Foundation
import SwiftUI

struct SubViewData : Identifiable {
    var view : Any
    var viewTitle : String = ""
    var id = UUID()
}

class  SubViewRepository : ObservableObject  {

    private var list = [SubViewData]()
    
    init() {
        
        var data = SubViewData(view: AppStorageView(), viewTitle: "@AppStorage")
        list.append(data)
        
        data = SubViewData(view: AnimatedGridView(), viewTitle: "Animated Grid (matchedGeometryEffect)")
        list.append(data)
        
        data = SubViewData(view: DisclosureGroupView(), viewTitle: "DisclosureGroup")
        list.append(data)
        
        data = SubViewData(view: GridView(), viewTitle: "Grid with ScrollView and Section")
        list.append(data)
        
        data = SubViewData(view: OutlineGroupView(), viewTitle: "OutlineGroup")
        list.append(data)
        
        data = SubViewData(view: GradientView(), viewTitle: "Color Gradients")
        list.append(data)
        
        data = SubViewData(view: RedactedView(), viewTitle: "Redacted")
        list.append(data)
        
        data = SubViewData(view: DatePickerView(), viewTitle: "DatePicker")
        list.append(data)
        
        data = SubViewData(view: ColorPickerView(), viewTitle: "ColorPicker")
        list.append(data)
        
        data = SubViewData(view: HapticView(), viewTitle: "Haptic Feedback")
        list.append(data)
        
        data = SubViewData(view: AppStorageView(), viewTitle: "AppStorage")
        list.append(data)
        
        data = SubViewData(view: ReuseStyleView(), viewTitle: "Reuseable Styles")
        list.append(data)
        
        data = SubViewData(view: SimpleList(), viewTitle: "List (Simple)")
        list.append(data)
        
        data = SubViewData(view: AuroraView(), viewTitle: "AuroraView")
        list.append(data)
        
        data = SubViewData(view: BlurViewSample(), viewTitle: "BlurView")
        list.append(data)
        
        data = SubViewData(view: HeroAnimationView(), viewTitle: "Hero Animation")
        list.append(data)
        
        data = SubViewData(view: MaterialsView(), viewTitle: "Materials")
        list.append(data)
        
        data = SubViewData(view: MenuView(), viewTitle: "Menu")
        list.append(data)
        
        data = SubViewData(view: ToolbarView(), viewTitle: "Toolbar")
        list.append(data)
    }
    
    func Filter(searchQuery:String) -> [SubViewData]
    {
        var filteredItems = [SubViewData]()

        if searchQuery.isEmpty {
            filteredItems = self.list.sorted(by: { $0.viewTitle < $1.viewTitle})
        } else {
            for singleItem in self.list.sorted(by: { $0.viewTitle < $1.viewTitle}) {
                if singleItem.viewTitle.lowercased().contains(searchQuery.lowercased())
                {
                    filteredItems.append(singleItem)
                }
            }
        }
        return filteredItems
    }
}
