//
//  AnimationTimingBootcamp.swift
//  SwiftUiBootcamp
//
//  Created by Abdallah on 11/12/2022.
//

import SwiftUI

struct AnimationTimingBootcamp: View {
  @State var isAnimated : Bool = false
  var  timing = 10.0
    var body: some View {
      VStack{
        Button(/*@START_MENU_TOKEN@*/"Button"/*@END_MENU_TOKEN@*/) {
          isAnimated.toggle()
        }
        RoundedRectangle(cornerRadius: 55)
          .fill(.purple)
          .frame(width: isAnimated ? 300 : 160,height: 100)
          //.animation(.spring())
          .animation(.spring(response: 0.5,
                             dampingFraction: 0.7
                             ,blendDuration: 1.0))
//        RoundedRectangle(cornerRadius: 55)
//          .fill(.purple)
//          .frame(width: isAnimated ? 300 : 160,height: 100)
//          .animation(.default)
//        RoundedRectangle(cornerRadius: 55)
//          .fill(.purple)
//          .frame(width: isAnimated ? 300 : 160,height: 100)
//          .animation(.linear.delay(timing))
//        RoundedRectangle(cornerRadius: 55)
//          .fill(.purple)
//          .frame(width: isAnimated ? 300 : 160,height: 100)
//          .animation(.easeIn)
//        RoundedRectangle(cornerRadius: 55)
//          .fill(.purple)
//          .frame(width: isAnimated ? 300 : 160,height: 100)
//          .animation(.easeOut)
//        RoundedRectangle(cornerRadius: 55)
//          .fill(.purple)
//          .frame(width: isAnimated ? 300 : 160,height: 100)
//          .animation(.easeInOut)
      }
    }
}

struct AnimationTimingBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AnimationTimingBootcamp()
    }
}
