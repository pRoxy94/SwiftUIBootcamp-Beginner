//
//  DatePickerBootcamp.swift
//  SwiftUIBootcamp (iOS)
//
//  Created by Rossana Laricchia on 18/05/22.
//

import SwiftUI

struct DatePickerBootcamp: View {
    
    @State var selectedDate: Date = Date()
    
    var body: some View {
	   VStack {
		  FirstDatePicker()
		  SecondDatePicker()
		  ThirdDatePicker()
	   }
    }
}

struct FirstDatePicker: View {
    @State var selectedDate: Date = Date()

    var body: some View {
	   DatePicker(
		  "Select a date",
		  selection: $selectedDate
	   )
	   .accentColor(Color.orange)
	   .padding()
//	   .datePickerStyle(CompactDatePickerStyle())
//	   .datePickerStyle(
//		  GraphicalDatePickerStyle()
//	   )
//	   .datePickerStyle(
//		  WheelDatePickerStyle()
//	   )
    }
}

struct SecondDatePicker: View {
    @State var selectedDate: Date = Date()

    var body: some View {
	   DatePicker(
		  "Select a date",
		  selection: $selectedDate,
		  displayedComponents: [.hourAndMinute]
	   )
	   .accentColor(Color.orange)
	   .padding()
    }
}

struct ThirdDatePicker: View {
    @State var selectedDate: Date = Date()
    let startingDate: Date = Calendar.current.date(from: DateComponents(year: 2018)) ?? Date()
    
    let endingDate: Date = Date()
    
    var dateFormatter: DateFormatter {
	   let formatter = DateFormatter()
	   formatter.dateStyle = .medium
	   formatter.timeStyle = .short
	   return formatter
    }

    var body: some View {
	   VStack {
		  Text("Selected date is:")
		  Text(dateFormatter.string(from: selectedDate))
			 .font(.title)
		  DatePicker(
			 "Select a date",
			 selection: $selectedDate, in: startingDate...endingDate
		  )
		  .accentColor(Color.orange)
		  .padding()
	   }
    }
}

struct DatePickerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        DatePickerBootcamp()
    }
}
