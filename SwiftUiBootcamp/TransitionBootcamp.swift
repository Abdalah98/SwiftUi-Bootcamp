//
//  TransitionBootcamp.swift
//  SwiftUiBootcamp
//
//  Created by Abdallah on 11/12/2022.
//

import SwiftUI

struct TransitionBootcamp: View {
  
   @State var showView:Bool = false
  
    var body: some View {
      
      ZStack(alignment: .bottom){
        VStack{
          Button("Click !!!!") {
            showView.toggle()
          }
          .padding(.top,70)
          Spacer()
          if showView{
            RoundedRectangle(cornerRadius: 25)
              .fill(.purple)
              .frame(height: UIScreen.main.bounds.height * 0.5)
             // .opacity(showView ? 1.0 : 0.0)
            //  .transition(.slide)
             // .transition(.move(edge: .bottom))
             // .transition(AnyTransition.opacity.animation(.easeInOut))
              //.transition(AnyTransition.scale.animation(.easeInOut))
              //.transition(.asymmetric(insertion: .move(edge: .leading), removal: .move(edge: .bottom)))
              .transition(.asymmetric(insertion: .move(edge: .leading), removal: AnyTransition.scale.animation(.easeInOut)))
             .animation(.easeInOut)
          }
        }
      }.ignoresSafeArea()
    }
}

struct TransitionBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TransitionBootcamp()
    }
}
