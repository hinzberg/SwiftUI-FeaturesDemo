//
//  DatePickerView.swift
//  SwiftUI-FeaturesDemo
//
//  Created by Holger Hinzberg on 18.10.20.
//

import SwiftUI

struct DatePickerView: View {
    
    @State private var selectedDate = Date()
    
    var dateFormatter: DateFormatter {
            let formatter = DateFormatter()
            formatter.dateStyle = .medium
            formatter.timeStyle = .medium
            return formatter
        }
        
    var body: some View {
        VStack {
            Text("DatePicker for date")
                .font(.title2)
            DatePicker(selection: $selectedDate, displayedComponents: .date) {
                Text("Select a date")
            }.padding()
            
            Text("DatePicker for time")
                .font(.title2)
            DatePicker(selection: $selectedDate, displayedComponents: .hourAndMinute) {
                Text("Select a time")
            }.padding()
            
            Text("Date is \(selectedDate, formatter: dateFormatter)")
                .padding()
        }
    }
}

struct DatePickerView_Previews: PreviewProvider {
    static var previews: some View {
        DatePickerView()
    }
}
