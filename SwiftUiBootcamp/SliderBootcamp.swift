//
//  SliderBootcamp.swift
//  SwiftUiBootcamp
//
//  Created by Abdallah on 14/12/2022.
//

import SwiftUI

struct SliderBootcamp: View {
  @State var SliderValue:Double = 10

  var body: some View {
    // Slider(value: $SliderValue)
    VStack{
      Text(String(format: "%,0f", SliderValue))
      Slider(value: $SliderValue,in: 1...7)
    //  Slider(value: $SliderValue,in: 1...7)
      
    }
  }
}

struct SliderBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SliderBootcamp()
    }
}
