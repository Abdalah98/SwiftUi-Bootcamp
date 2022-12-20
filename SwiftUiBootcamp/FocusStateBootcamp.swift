//
//  FocusStateBootcamp.swift
//  SwiftUiBootcamp
//
//  Created by Abdallah on 20/12/2022.
//

import SwiftUI

struct FocusStateBootcamp: View {
  @State var text = ""
  @FocusState private var usrname:Bool
  @State var pass = ""
  @FocusState private var usrpass:Bool
  var body: some View {
      VStack {
        TextField("type here....", text: $text)
          .focused($usrname)
          .padding(.leading)
          .frame(height:55)
          .frame(maxWidth: .infinity)
          .background(Color.gray.brightness(0.3))
          .cornerRadius(12)
        
        
        SecureField("type here....pass", text: $pass)
          .focused($usrpass)
          .padding(.leading)
          .frame(height:55)
          .frame(maxWidth: .infinity)
          .background(Color.gray.brightness(0.3))
          .cornerRadius(12)
        
        Button("GO") {
         
            let userName = !text.isEmpty
            let userps = !pass.isEmpty
         
          if userName && userps{
            print("sucss")
          }else if userName {
            usrname = false
            usrpass = true

         }else {
           usrname = true
           usrpass = false
         }

        
//        Button("GO") {
//          usrname.toggle()
//        }
      }
      .padding(40)
//      .onAppear{
//        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5){
//          self.usrname = true
//        }
      }
    }
  }


struct FocusStateBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        FocusStateBootcamp()
    }
}
