//
//  IntroView.swift
//  SwiftUiBootcamp
//
//  Created by Abdallah on 18/12/2022.
//

import SwiftUI

struct IntroView: View {
  @AppStorage("SignIn") var currentUserSignedIn:Bool = false
    var body: some View {
      ZStack{
        RadialGradient(
          gradient: Gradient(colors: [Color.purple,Color.blue]),
          center: .top,
          startRadius: 5,
          endRadius: UIScreen.main.bounds.height
        
        )
        .ignoresSafeArea()
        if currentUserSignedIn {
          ProfileView()
            .transition(.asymmetric(insertion: .move(edge: .bottom), removal: .move(edge: .top)))
        }else{
          //Text("onboarding")
          OnboardingView()
            .transition(.asymmetric(insertion: .move(edge: .top), removal: .move(edge: .bottom)))
        }
        //if user sign in
        // profile view
        //else
        // onboarding view
      }
    }
}

struct IntroView_Previews: PreviewProvider {
    static var previews: some View {
        IntroView()
    }
}
