//
//  Employees.swift
//  SwiftUI-FeaturesDemo
//
//  Created by Holger Hinzberg on 16.09.24.
//

import Foundation
import Observation

@Observable
class Employees {
    
    var list : [Person]
    
    init() {
        list = [
            Person(firstName: "John", lastName: "Doe"),
            Person(firstName: "Jennifer", lastName: "Green"),
            Person(firstName: "Zoe", lastName: "Miller"),
        ]
    }
}
