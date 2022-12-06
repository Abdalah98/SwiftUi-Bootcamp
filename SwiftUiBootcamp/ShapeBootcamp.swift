//
//  ShapeBootcamp.swift
//  SwiftUiBootcamp
//
//  Created by Abdallah on 06/12/2022.
//

import SwiftUI

struct ShapeBootcamp: View {
    var body: some View {
//        Circle()
//       Ellipse()
     //  Capsule(style: .circular)
     //  Rectangle()
         RoundedRectangle(cornerRadius: 33)
      // .fill(.yellow)
      // .frame(width: 122,height: 111)
//        //.fill(.purple)
//       // .foregroundColor(.red)
//       // .stroke()
//       // .stroke(.red,lineWidth: 23)
//        //.stroke(.purple,style: StrokeStyle(lineWidth: 22,lineCap: .butt,dash: [22]))
          .trim(from: 0.78,to: 1)
//        .stroke(.purple,lineWidth: 22)
//        .foregroundColor(.red)
          .frame(width: 122,height: 111)

      }
}

struct ShapeBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ShapeBootcamp()
    }
}
