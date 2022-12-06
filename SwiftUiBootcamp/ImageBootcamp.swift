//
//  ImageBootcamp.swift
//  SwiftUiBootcamp
//
//  Created by Abdallah on 06/12/2022.
//

import SwiftUI

struct ImageBootcamp: View {
    var body: some View {
        Image("1")
        .resizable()
      // used that if i dont have back ground same any icon can i change to any color
       // .renderingMode(.template)
        //.aspectRatio(contentMode: .fill)
        .scaledToFill()
        .frame(width: 300,height: 300,alignment: .center)
//        .clipped()
//        .cornerRadius(12)
//        .clipShape(
//         // Circle()
//          //Rectangle()
//         // Ellipse()
//          RoundedRectangle(cornerRadius: 22.0)
//        )
        //.foregroundColor(.purple)
    }
}

struct ImageBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ImageBootcamp()
    }
}
