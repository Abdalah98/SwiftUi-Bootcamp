//
//  BindingBootcamp.swift
//  SwiftUiBootcamp
//
//  Created by Abdallah on 08/12/2022.
//

import SwiftUI
// main view
// parent view
struct BindingBootcamp: View {
  @State var backGround: Color = .purple
  @State var name = "GG ff "
    var body: some View {
      ZStack{
          backGround
          .ignoresSafeArea()
        
        buttonView(backGround: $backGround,name: $name)
      }
    }
}

// supview
// child view
struct BindingBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        BindingBootcamp()
    }
}

struct buttonView: View {
  // the same segue when i change data other screen
  @Binding var backGround : Color
  @State var colortitleButton:Color = .black
  @Binding  var name : String
  var body: some View{
  
    Button {
      backGround = .blue
    } label: {
      Text(name)
        .font(.largeTitle)
        .foregroundColor(.white)
        .padding()
        .padding(.horizontal,22)
        .background(colortitleButton)
          .cornerRadius(12)
    }
  }
}
