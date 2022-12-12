//
//  ActionSheetBootcamp.swift
//  SwiftUiBootcamp
//
//  Created by Abdallah on 12/12/2022.
//

import SwiftUI

struct ActionSheetBootcamp: View {
  
  @State var  showActionSheet  = false

    var body: some View {
//      Button {
//        showActionSheet.toggle()
//      } label: {
//        Text("Click here")
//      }.actionSheet(isPresented: $showActionSheet,content: getActionSheet)
      
      VStack{
        HStack{
          Circle()
            .frame(width: 30,height: 30)
            .foregroundColor(.purple)
          Text("Abdallah")
          Spacer()
          Button {
            showActionSheet.toggle()
          } label: {
            Image(systemName: "ellipsis")
          }.accentColor(.purple)

        }
        .padding(.horizontal)
        Rectangle()
        aspectRatio(1.0, contentMode: .fit)
      }
     .actionSheet(isPresented: $showActionSheet,content: getActionSheet)
    }
  
  func getActionSheet() -> ActionSheet {
   // return ActionSheet(title: Text("ddd"))
    let button1: ActionSheet.Button = .cancel()
    let button2: ActionSheet.Button = .default(Text ("ok"))
    let button3: ActionSheet.Button = .destructive(Text ("ddd"))

    return ActionSheet(title: Text ("All sheet "),
                       message: Text("This is message )"),
                       buttons: [button1,button2,button3]
    
    )
    
  }
}

struct ActionSheetBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ActionSheetBootcamp()
    }
}
