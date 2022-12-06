//
//  TextBootcamp.swift
//  SwiftUiBootcamp
//
//  Created by Abdallah on 06/12/2022.
//

import SwiftUI

struct TextBootcamp: View {
    var body: some View {
   
      Text("Hello, World!, the first day in swiftui boot cam let keep going to learn it ".uppercased())
//        .underline(true,color: .red)
//        .strikethrough()
//        .font(.footnote)
//        .fontWeight(.heavy)
       .foregroundColor(Color.purple)
        .font(.system(size: 40,weight: .heavy,design: .rounded))
      // space line
      //  .baselineOffset(90)
      // space between char
       // .kerning(30)
        .multilineTextAlignment(.center)
        .frame(width: .infinity,height: 300,alignment: .leading)
        .minimumScaleFactor(0.2)
    }
}

struct TextBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TextBootcamp()
    }
}
