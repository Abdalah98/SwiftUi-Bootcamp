//
//  ConditionalStatementsBootcamp.swift
//  SwiftUiBootcamp
//
//  Created by Abdallah on 08/12/2022.
//

import SwiftUI

struct ConditionalStatementsBootcamp: View {
  @State var shape = false
  var body: some View {
    VStack(spacing: 20 ){
      Button {
        // toggle main switch to true or false
        shape.toggle()
      } label: {
        Text("gg").font(.largeTitle)
      }
     // if shape == true {
      // the same code  swift khown outmatic
    //  if shape  {
 // if not show !
     // if !shape  {
      if shape  {
        Circle()
          .fill(.purple)
          .frame(width: 140,height:140)
      }
      else{
        RoundedRectangle(cornerRadius: 12)
          .fill(.red)
          .frame(width: 140,height:140)
      }
    }
  }
}

struct ConditionalStatementsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ConditionalStatementsBootcamp()
    }
}
