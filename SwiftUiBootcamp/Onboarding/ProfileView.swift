//
//  ProfileView.swift
//  SwiftUiBootcamp
//
//  Created by Abdallah on 19/12/2022.
//

import SwiftUI

struct ProfileView: View {
  
  @AppStorage("name") var currentUserName : String?
  @AppStorage("age") var currentUserage: Int?
  @AppStorage("gender") var currentUserGender :String?
  @AppStorage("SignIn") var currentUserSignedIn:Bool = false
  
    var body: some View {
      VStack(spacing:20){
        Image(systemName: "person.circle.fill")
          .resizable()
          .scaledToFit()
          .frame(width: 150,height: 150)
        Text(currentUserName ?? "Your name here")
        Text("this user is \(currentUserage ?? 0) years old!")
        Text("their gender is \(currentUserGender ?? "")")
        
        Text("SIGN OUT")
          .font(.headline)
          .foregroundColor(.white)
          .frame(height : 55)
          .frame(maxWidth: .infinity)
          .background(Color.purple)
          .cornerRadius(12)
          .onTapGesture {
            signout()
          }
      }
      .font(.title)
      .foregroundColor(.purple)
      .padding()
      .padding(.vertical,40)
      .background(Color.white)
      .cornerRadius(12)
      .shadow(radius: 12)
      
    }
  
  func signout(){
    currentUserGender = nil
    currentUserName = nil
    currentUserage = nil
    withAnimation(.spring()){
      currentUserSignedIn = false

    }
  }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
