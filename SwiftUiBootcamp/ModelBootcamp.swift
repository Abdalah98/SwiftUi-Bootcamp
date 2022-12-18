//
//  ModelBootcamp.swift
//  SwiftUiBootcamp
//
//  Created by Abdallah on 18/12/2022.
//

import SwiftUI
struct UserModel:Identifiable{
  var id = UUID().uuidString
  var displayName:String
  var userName :String
  var followerCount:Int
  var isVerified : Bool
}
struct ModelBootcamp: View {
  @State var users:[UserModel] = [
 //   "ahmed", "omar", "bedo", "body", "hima"
    UserModel(displayName: "Ahmed", userName: "@hmed11", followerCount: 4554, isVerified: false),
    UserModel( displayName: "ss", userName: "@hmed11", followerCount:494, isVerified: true),
    UserModel(  displayName: "Ahmed", userName: "@hmed11", followerCount:484, isVerified: true),
    UserModel(  displayName: "Ahmed", userName: "@hmed11", followerCount:404, isVerified: false),
    UserModel(  displayName: "Ahmed", userName: "@hmed11", followerCount:474, isVerified: true),
    UserModel(displayName: "Ahmed", userName: "@hmed11", followerCount:441, isVerified: true),
    UserModel(displayName: "Ahmed", userName: "@hmed11", followerCount:442, isVerified: false),
    UserModel(displayName: "Ahmed", userName: "@hmed11", followerCount:443, isVerified: true),
    UserModel(displayName: "Ahmed", userName: "@hmed11", followerCount:444, isVerified: false),
    UserModel(displayName: "Ahmed", userName: "@hmed11", followerCount:454, isVerified: false),
    UserModel(displayName: "Ahmed", userName: "@hmed11", followerCount:424, isVerified: true),
    UserModel(displayName: "Ahmed", userName: "@hmed11", followerCount:414, isVerified: true),
    UserModel(displayName: "Ahmed", userName: "@hmed11", followerCount:464, isVerified: false)
  ]
  
  var body: some View {
    NavigationView{
      List{
        ForEach(users) { id in
          HStack(spacing:15) {
            Circle()
              .fill(.purple)
              .frame(width: 35,height: 35)
            VStack(alignment: .leading){
              Text(id.displayName)
                .foregroundColor(Color.red)

              Text(id.userName)
                .foregroundColor(Color.purple)
            }
            Spacer()
            if id.isVerified{
              Image(systemName: "checkmark.seal.fill")
                .foregroundColor(Color.blue)
            }
            VStack{
              Text("\(id.followerCount)")
            }
          }
          .padding(.vertical,12)
        }
//        ForEach(name, id: \.self) { id in
//          HStack(spacing:15) {
//            Circle()
//              .fill(.purple)
//              .frame(width: 35,height: 35)
//            Text(id)
//          }
//          .padding(.vertical,12)
//        }
      }
      .listStyle(InsetGroupedListStyle())
      .navigationTitle("NAmes")
    }
  }
}

struct ModelBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ModelBootcamp()
    }
}
