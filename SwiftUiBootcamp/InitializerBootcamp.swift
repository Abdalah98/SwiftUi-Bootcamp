//
//  InitializerBootcamp.swift
//  SwiftUiBootcamp
//
//  Created by Abdallah on 07/12/2022.
//

import SwiftUI

struct InitializerBootcamp: View {
  let backGroundColor  :Color
  let title : String
  let name : String
  var body: some View {
    VStack(spacing: 12){
      Text("\(title)!")
        .font(.largeTitle)
        .underline()
      
      Text("\(name)")
        .font(.headline)

    }
      .foregroundColor(.white)
      .frame(width: 200,height: 200)
      .background(backGroundColor)
      .cornerRadius(12)
  }
}

struct InitializerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
      InitializerBootcamp(backGroundColor: .purple, title: "Hello", name: "Bedoo")
    }
}
