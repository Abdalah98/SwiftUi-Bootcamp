//
//   SpacerBootcamp.swift
//  SwiftUiBootcamp
//
//  Created by Abdallah on 07/12/2022.
//

import SwiftUI

struct _SpacerBootcamp: View {
  var body: some View {
    VStack{
      HStack(spacing:0){
        Image(systemName: "xmark")
        Spacer()
          .frame(height: 10)
          .background(Color.red)
        Image(systemName: "gear")

        //        Text("Hello, World!")
        //      Spacer(minLength: 0)
        //        .frame(height: 33)
        //        .background(Color.purple)
        //      Rectangle()
        //        .fill(.primary)
        //        .frame(width: 100,height: 100)
        //      Spacer()
        //        .frame(height: 33)
        //        .background(Color.purple)
        //      Rectangle()
        //        .fill(.yellow)
        //        .frame(width: 100,height: 100)
        //      Spacer()
        //        .frame(height: 33)
        //        .background(Color.purple)
        //      Rectangle()
        //        .fill(.pink)
        //        .frame(width: 100,height: 100)
        //      Spacer(minLength: 0)
        //        .frame(height: 33)
        //        .background(Color.purple)
        
        
      }
      .font(.title)
      .background(Color.green)
        .padding(.horizontal)
        .background(Color.blue)
      Spacer()
        .frame(width: 10)
        .background(Color.yellow)
            Rectangle()
              .fill(.yellow)
              .frame(width: .infinity,height: 100)
    }
  }
}

struct _SpacerBootcamp_Previews: PreviewProvider {
  static var previews: some View {
    _SpacerBootcamp()
  }
}
