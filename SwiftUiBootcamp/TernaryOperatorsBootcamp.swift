//
//  TernaryOperatorsBootcamp.swift
//  SwiftUiBootcamp
//
//  Created by Abdallah on 08/12/2022.
//

import SwiftUI

struct TernaryOperatorsBootcamp: View {
  @State var isStartState = false
    var body: some View {
      VStack{
        Button {
          isStartState.toggle()

        } label: {
          Text("Button: \(isStartState.description)")
        }
//        if isStartState {
//          RoundedRectangle(cornerRadius: 12)
//            .fill(.blue)
//            .frame(width: 140,height:140)
//        }else{
//          RoundedRectangle(cornerRadius: 12)
//            .fill(.red)
//            .frame(width: 140,height:140)
//        }
        // the same code but name ternary operators
        RoundedRectangle(cornerRadius: isStartState ?  12 :  50)
          .fill(isStartState ? .red : .blue)
          .frame(width: isStartState ? 140 : 400 ,height: isStartState ? 140 : 100)
        Spacer()
      }
    }
}

struct TernaryOperatorsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TernaryOperatorsBootcamp()
    }
}
