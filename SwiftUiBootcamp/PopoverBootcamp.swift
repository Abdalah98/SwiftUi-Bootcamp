//
//  PopoverBootcamp.swift
//  SwiftUiBootcamp
//
//  Created by Abdallah on 11/12/2022.
//

import SwiftUI

struct PopoverBootcamp: View {
  
  @State var showNewScreen = false
  
  var body: some View {
    ZStack{
      Color.purple
        .ignoresSafeArea()
      
      VStack{
        Button(/*@START_MENU_TOKEN@*/"Button"/*@END_MENU_TOKEN@*/) {
          showNewScreen.toggle()
        }.font(.largeTitle)
        Spacer()
      }
      // Method 1 Sheet
//      .sheet(isPresented: $showNewScreen) {
//        NewScreen()
//      }
      // method 2 Transitions
//      ZStack{
//        if showNewScreen{
//          NewScreen(showNewScreens: $showNewScreen)
//            .padding(.top,80 )
//            .transition(.move(edge: .bottom))
//            .animation(.spring())
//        }
//
//      }.zIndex(2.0)
      
      // method 2 animation // method 2
      NewScreen(showNewScreens: $showNewScreen)
        .padding(.top,100
        )
        .offset(y:showNewScreen ? 0 : UIScreen.main.bounds.height)
        .animation(.spring())
    }
  }
}

struct NewScreen:View{
  // to dimiss sheet
  @Environment(\.presentationMode) var presentationMode
   // to dismiss Transitions
  @Binding var showNewScreens : Bool
  
  var body : some View {
    ZStack(alignment: .topLeading){
      Color.red
        .ignoresSafeArea()
      
      VStack{
        Button {
         // presentationMode.wrappedValue.dismiss()
          showNewScreens.toggle()
          
        } label: {
          Image(systemName: "xmark")
            .foregroundColor(.white)
            .font(.largeTitle)
            .padding(20)
        }
        
      }
    }
  }
}

struct PopoverBootcamp_Previews: PreviewProvider {
  static var previews: some View {
    PopoverBootcamp()
  }
}
