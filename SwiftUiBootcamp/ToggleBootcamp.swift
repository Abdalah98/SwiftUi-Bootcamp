//
//  ToggleBootcamp.swift
//  SwiftUiBootcamp
//
//  Created by Abdallah on 14/12/2022.
//

import SwiftUI

struct ToggleBootcamp: View {
  @State var toogle = false
  var body: some View {
    VStack {
      HStack{
        Text("Status:")
        Text(toogle ? "Online" : "Offline")
        
      }.font(.title)
    Toggle(
      isOn:  $toogle) {
        Text("Change status")
      }
      .toggleStyle(SwitchToggleStyle(tint: .red))
    Spacer()
  }
    .padding(.horizontal,20)
}
}

struct ToggleBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ToggleBootcamp()
    }
}

