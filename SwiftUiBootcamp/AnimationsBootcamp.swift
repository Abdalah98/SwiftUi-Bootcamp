//
//  AnimationsBootcamp.swift
//  SwiftUiBootcamp
//
//  Created by Abdallah on 11/12/2022.
//

import SwiftUI

struct AnimationsBootcamp: View {
  @State var isAnimated : Bool = false
    var body: some View {
      VStack{
        Button(isAnimated ? "purple" : "blue") {
//          withAnimation(.default) {
//            isAnimated.toggle()
//
//          }
//          withAnimation(Animation.default.delay(3)) {
//            isAnimated.toggle()
//
//          }
//          withAnimation(Animation.default.repeatCount(7,autoreverses: true)) {
//            isAnimated.toggle()
//
//          }
         // withAnimation(Animation.default.repeatForever(autoreverses: true)) {
            isAnimated.toggle()

        //  }
        }
        Spacer()
        RoundedRectangle(cornerRadius: isAnimated ? 60 : 150)
          .fill(isAnimated ? .purple : .blue)
          .frame(
            width: isAnimated ? 120 : 200
            ,height: isAnimated ? 200 : 220)
          .rotationEffect(Angle(degrees: isAnimated ? 360 : 0))
          .offset(y: isAnimated ? 100 : 0)
        // that code  do  same withAnimation code but for RoundedRectangle
          .animation(Animation.default.repeatForever(autoreverses: true))
        Spacer()
      }
       
    }
}

struct AnimationsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AnimationsBootcamp()
    }
}
