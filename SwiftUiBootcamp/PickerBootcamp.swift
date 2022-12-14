//
//  PickerBootcamp.swift
//  SwiftUiBootcamp
//
//  Created by Abdallah on 14/12/2022.
//

import SwiftUI

struct PickerBootcamp: View {
  @State var selection = "1"
    var body: some View {
      VStack{
        HStack{
          Text("Age:")
          Text(selection)
        }
        Picker(selection: $selection, label: Text("data")) {
//          Text("data").tag("1")
//          Text("data").tag("2")
//          Text("data").tag("3")
//          Text("data").tag("4")
          ForEach(18 ..< 60) { age in
            Text("age\(age)")
              .font(.headline)
              .foregroundColor(.purple)
              .tag("\(age)")
          }
        }
        .pickerStyle(WheelPickerStyle())
        //.background(Color.purple)
        
      }
     
    }
}

struct PickerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        PickerBootcamp()
    }
}
