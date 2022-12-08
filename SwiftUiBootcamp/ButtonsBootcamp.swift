//
//  ButtonsBootcamp.swift
//  SwiftUiBootcamp
//
//  Created by Abdallah on 08/12/2022.
//

import SwiftUI

struct ButtonsBootcamp: View {
  
  @State var title = "call me pls"
  
  var body: some View {
    VStack(spacing:20){
      Text(title)
      Button("click me ") {
        self.title = "txh sir!"
      }
      .accentColor(.yellow)
      Button {
        self.title = "gg"
      } label: {
        //Text("done")
        Image(systemName:"heart")
          .font(.largeTitle)
          .foregroundColor(.cyan)
          .padding()
          .padding(.horizontal,30)
          .background(
            Color.red
              .cornerRadius(12)
              .shadow(radius: 22)
          )
      }
      .accentColor(.green)
      
      Button {
        self.title = "ff"
      } label: {
        //Text("done")
        Circle()
          .fill(.purple)
          .frame(width: 120,height: 120)
          .overlay(
        Image(systemName:"heart.fill")
          .font(.largeTitle)
          .foregroundColor(.cyan)
          .cornerRadius(12)
          .shadow(radius: 22)
        )
          
      }
    }
  }
}

struct ButtonsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ButtonsBootcamp()
    }
}
