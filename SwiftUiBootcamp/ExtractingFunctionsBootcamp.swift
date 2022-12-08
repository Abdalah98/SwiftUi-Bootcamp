//
//  ExtractingFunctionsBootcamp.swift
//  SwiftUiBootcamp
//
//  Created by Abdallah on 08/12/2022.
//

import SwiftUI

struct ExtractingFunctionsBootcamp: View {
    var body: some View {
      ZStack{
         Color.blue
        .cornerRadius(22)
        .ignoresSafeArea()
       
        mainBody
      }
     
    }
  
  var mainBody : some View{
    VStack {
      Text("Hello, World!")
      Rectangle()
      .frame(width: 100, height:100)
      .foregroundColor(.red)
      .cornerRadius(22)
    Circle()
      .frame(width: 100, height:100)
      .foregroundColor(.green)
    }
    
  }
}

struct ExtractingFunctionsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ExtractingFunctionsBootcamp()
    }
}
