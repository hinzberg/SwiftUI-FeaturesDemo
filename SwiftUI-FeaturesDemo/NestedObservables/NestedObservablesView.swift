//
//  NestedObservablesView.swift
//  SwiftUI-FeaturesDemo
//
//  Created by Holger Hinzberg on 16.09.24.
//

import SwiftUI

struct NestedObservablesView: View {
    
    @State var humanResources = HumanResouces()
    
    var body: some View {
        
        VStack{
            List(humanResources.employees.list) { employee in
                Text("\( employee.firstName) \(employee.lastName)" )
            }
            // EmployeesListView(employees: humanResources.employees)
            Button("Add Employee") {
                humanResources.employees.list.append(  Person(firstName: "Ted", lastName: "Tester") )
                print(humanResources.employees.list.count)
            }
        }
    }
}

#Preview {
    NestedObservablesView()
}
