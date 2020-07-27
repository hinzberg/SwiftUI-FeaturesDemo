//
//  OutlineGroupView.swift
//  SwiftUI-FeaturesDemo
//
//  Created by Holger Hinzberg on 04.07.20.
//

import SwiftUI

struct Task : Identifiable {
    var id = UUID()
    var taskDescription: String = ""
    var subTasks : [Task]?
}

struct OutlineGroupView: View {
    
    func getTasks() -> [Task] {
        
        var tasks = [Task]()
        
        let gardenSubtasks  =
            [Task(taskDescription: "Cut grass"),
             Task(taskDescription: "Water flowers"),
             Task(taskDescription: "Remove weeds"),
             Task(taskDescription: "Gather fruit")]
        let gardenTask = Task( taskDescription: "Work in the garden", subTasks: gardenSubtasks)
        tasks.append(gardenTask)
        
        let garageSubtasks  =
            [Task(taskDescription: "Sweep"),
             Task(taskDescription: "Clean the lawn mower"),
             Task(taskDescription: "Sort tools")]
        let garageTask = Task( taskDescription: "Tidy the garage", subTasks: garageSubtasks)
        tasks.append(garageTask)
        
        return tasks
    }
    
    var body: some View {
        
        List {
            ForEach(self.getTasks()) { task in
                OutlineGroup(task, children: \.subTasks) { task in
                    Text(task.taskDescription)
                }
            }
        }.navigationTitle("OutlineGroup")
    }
}

struct OutlineGroupView_Previews: PreviewProvider {
    static var previews: some View {
        OutlineGroupView()
    }
}
