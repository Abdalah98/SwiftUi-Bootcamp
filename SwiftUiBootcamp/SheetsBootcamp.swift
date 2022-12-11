//
//  SheetsBootcamp.swift
//  SwiftUiBootcamp
//
//  Created by Abdallah on 11/12/2022.
//

import SwiftUI

struct SheetsBootcamp: View {
  
  @State var showSheet:Bool = false
  
    var body: some View {
      VStack{
        Color.purple
          .ignoresSafeArea()
        
        Button {
          showSheet.toggle()
        } label: {
          Text("Show Sheet")
            .foregroundColor(.purple)
            .font(.largeTitle)
            .padding(20)
            .background(Color.white.cornerRadius(12))
        }
        .fullScreenCover(isPresented: $showSheet) {
          SeconScreen()

        }
        Button {
          showSheet.toggle()
        } label: {
          Text("Show Sheet")
            .foregroundColor(.purple)
            .font(.largeTitle)
            .padding(20)
            .background(Color.white.cornerRadius(12))
        }
      }.sheet(isPresented: $showSheet) {
        // do not add conditional  logic say not used or one sheetm
        //Text("Hello mather father !!")
        SeconScreen()
      }
      
    }
}
struct SeconScreen: View {
  @Environment(\.presentationMode) var presentationMode
  var body: some View {
    ZStack(alignment: .topLeading){
      Color.orange
        .ignoresSafeArea()
      
      Button {
        presentationMode.wrappedValue.dismiss()
      } label: {
//        Text("Show Sheet")
//          .foregroundColor(.brown)
//          .font(.largeTitle)
//          .padding(20)
//          .background(Color.white.cornerRadius(12))
        Image(systemName: "xmark")
                  .foregroundColor(.white)
                  .font(.largeTitle)
                  .padding(20)
      }
      
    }
    
  }
}
struct SheetsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SheetsBootcamp()
    }
}
