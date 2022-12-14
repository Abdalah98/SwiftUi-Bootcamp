//
//  DatePickerBootcamp.swift
//  SwiftUiBootcamp
//
//  Created by Abdallah on 14/12/2022.
//

import SwiftUI

struct DatePickerBootcamp: View {
  
  @State var selectionDate:Date = Date()
  let startDat :Date = Calendar.current.date(from: DateComponents(year: 2021)) ?? Date()
  let endDate = Date()
  var dataFormat : DateFormatter{
    let format = DateFormatter()
    format.dateStyle = .short
    format.timeStyle = .medium
    return format
    
  }
  var body: some  View {
    VStack{
      Text("selection  data is :")
      Text(dataFormat.string(from: selectionDate))
        .font(.title)
      //        DatePicker("select date" ,selection: $selectionDate)
      //  DatePicker("select date" ,selection: $selectionDate,displayedComponents: [.date,.hourAndMinute])
      DatePicker("select date" ,selection: $selectionDate,in: startDat...endDate)
      
        .accentColor(.purple)
        .datePickerStyle(
          CompactDatePickerStyle()
          //GraphicalDatePickerStyle()
          //WheelDatePickerStyle()
        )
    }
  }
}

struct DatePickerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        DatePickerBootcamp()
    }
}
