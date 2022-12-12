//
//  AlertBootcamp.swift
//  SwiftUiBootcamp
//
//  Created by Abdallah on 12/12/2022.
//

import SwiftUI

struct AlertBootcamp: View {
  @State var  showAlert = false
  @State var  alertType : MyAlert? = nil

//  @State var  titleAlert = ""
//  @State var  mesAlert = ""
  @State var  changeColor = Color.red
  
  enum MyAlert {
     case success
    case error
  }

    var body: some View {
      ZStack {
        changeColor.ignoresSafeArea()
        VStack {
          Button {
            alertType = .error
//            titleAlert = "sss"
//            mesAlert = "dddd"
            showAlert.toggle()
          } label: {
            Text("Click here")
          }
          Button {
            alertType = .success

//            titleAlert = "ewew"
//            mesAlert = "ewewe"
            showAlert.toggle()
          } label: {
            Text("Click here2")
          }
          .alert(isPresented: $showAlert) {
           // Alert(title: Text("hi"))
  //          Alert(
  //            title: Text("hi"),
  //            message: Text("user"),
  //            primaryButton: .destructive(Text("fk world"),action: {
  //              changeColor = .purple
  //            }),
  //            secondaryButton: .cancel())
            getAlert()
        }
        }
      }
    }
  // refactor code
  func getAlert() -> Alert{
    switch alertType{
    case .success:
      return Alert(title: Text("sucess"))
    case .error :
      return Alert(title: Text("err"))

    case .none:
      return Alert(title: Text("wwww"))
    }
//   return  Alert(
//      title: Text(titleAlert),
//      message: Text(mesAlert),
//      primaryButton: .destructive(Text("fk world"),action: {
//        changeColor = .purple
//      }),
//      secondaryButton: .cancel())
  }
}

struct AlertBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AlertBootcamp()
    }
}
