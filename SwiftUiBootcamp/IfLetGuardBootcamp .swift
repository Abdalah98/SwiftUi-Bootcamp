//
//  IfLetGuardBootcamp .swift
//  SwiftUiBootcamp
//
//  Created by Abdallah on 15/12/2022.
//

import SwiftUI

struct IfLetGuardBootcamp_: View {
 // @State var name = "hi"
  @State var userId:String? = "1"
  @State var name:String? = nil
  @State var isLoading = false

    var body: some View {
      NavigationView{
        VStack{
          Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
          if let text = name {
            Text(text)
              .font(.title)
          }
          if isLoading {
            ProgressView()
          }
          Spacer()
        }.navigationTitle("Safe code ")
          .onAppear{
            loadData2()
            loadData()
          }
      }
    }
  func loadData(){
    if let user  = userId{
      isLoading = true
      DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
        name = "welcome % 88 user id : \(user)"
        isLoading = false
      }
    }else{
        name = "no found user id sorry check it"
      }
    }
  func loadData2(){
    guard let user = userId else {
      name = "no found user id sorry check it guard let "
      return
    }
    isLoading = true
    DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
      name = "welcome % 88 user id : \(user)"
      isLoading = false
    }
  }
  }

struct IfLetGuardBootcamp__Previews: PreviewProvider {
    static var previews: some View {
        IfLetGuardBootcamp_()
    }
}
