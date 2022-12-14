//
//  StepperBootcamp.swift
//  SwiftUiBootcamp
//
//  Created by Abdallah on 14/12/2022.
//

import SwiftUI

struct StepperBootcamp: View {
  
  @State var StepperValue = 10
  @State var Value = 0.0
  
    var body: some View {
      VStack {
        Stepper("steper: \(StepperValue)",value: $StepperValue)
       RoundedRectangle(cornerRadius: 10)
          .fill(.purple)
          .frame(width: 100 + Value ,height: 100)
        Stepper {
          Text("stper 2 ")
        } onIncrement: {
          withAnimation {
            Value += 34
          }
          
        } onDecrement: {
          Value -= 44

        }


      }
      .padding(50)


    }
}

struct StepperBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        StepperBootcamp()
    }
}
