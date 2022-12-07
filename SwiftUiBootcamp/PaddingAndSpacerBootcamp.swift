//
//  PaddingAndSpacerBootcamp.swift
//  SwiftUiBootcamp
//
//  Created by Abdallah on 07/12/2022.
//

import SwiftUI

struct PaddingAndSpacerBootcamp: View {
    var body: some View {
//        Text("Hello, World! abdallah ")
//        .background(Color.brown)
//        //.frame(width: 120,height: 120)
//        //.padding()
//        .padding(.bottom,22)
//        .padding(.leading,22)
//        .background(Color.red)
      
      VStack(alignment: .leading) {
        Text("Hello, World! abdallah ")
          .font(.title)
          .fontWeight(.bold)
          .padding(.bottom,22)
        //        .background(Color.blue)
        //        .padding(.leading , 22)
        //.frame(width: .infinity ,alignment: .leading)
        Text("Hello, World! abdallah Hello, World! abdallahHello, World! abdallahHello, World! abdallahHello, World! abdallahHello, World! abdallahHello, World! abdallahHello, World! abdallahHello, World! abdallahHello, World! abdallah").multilineTextAlignment(.leading)

      }
      //.background(Color.purple)
      .padding()
      .padding(.vertical,22)
      .background(Color.white
        .cornerRadius(12)
        .shadow(color: .orange, radius: 40,x: 1,y: 1
               )
      )
      .padding(.horizontal,12)
      //.background(Color.red)
      

    }
}

struct PaddingAndSpacerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        PaddingAndSpacerBootcamp()
    }
}
