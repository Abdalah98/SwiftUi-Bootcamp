//
//  OnboardingView.swift
//  SwiftUiBootcamp
//
//  Created by Abdallah on 18/12/2022.
//

import SwiftUI

struct OnboardingView: View {
  
  // Onboarding status:
  /*
   0 - welcom screen
   1 - add name
   2 - add age
   3 - add gender

   */
  // Onboarding
  @State var OnboardingState = 0
  let transition:AnyTransition = .asymmetric(insertion: .move(edge: .trailing), removal: .move(edge: .leading))
  
  // Onboarding inputs
  @State var name:String = ""
  @State var age:Double = 50
  @State var gender:String = ""
  
  // for alert
  @State var alertTitle:String = ""
  @State var showAlert:Bool = false

  // appstorge
  
  @AppStorage("name") var currentUserName : String?
  @AppStorage("age") var currentUserage: Int?
  @AppStorage("gender") var currentUserGender :String?
  @AppStorage("SignIn") var currentUserSignedIn:Bool = false

  var body: some View {
    ZStack{
      //content
      ZStack{
        switch OnboardingState {
          case 0 :
           wlcomeSection
            .transition(transition)
        case 1 :
          addNameSection
            .transition(transition)
        case 2 :
          addAgeSection
            .transition(transition)
        case 3 :
          addGenderSection
            .transition(transition)
        default:
          Text(" in")
        }
      }
      //button
      VStack{
        Spacer()
        bottomButton
      }
      .padding(30)
    }
    .alert(isPresented: $showAlert) {
      return Alert(title: Text(alertTitle))
    }
  }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
        .background(Color.purple)
    }
}

// MARK: COMPONENTS
extension OnboardingView{
  private var  bottomButton: some View {
    Text(OnboardingState == 0 ? "SIGN UP" :
          OnboardingState == 3 ? "FINISH" :  "NEXT")
      .font(.headline)
      .foregroundColor(.purple)
      .frame(height:55)
      .frame(maxWidth: .infinity)
      .background(Color.white)
      .cornerRadius(10)
      .animation(nil)
      .onTapGesture {
        hendelNextButtonPressed()
      }
  }
  
  private var wlcomeSection:some View{
    VStack{
      Spacer()
      Image(systemName: "heart.text.square.fill"  )
        .resizable()
        .scaledToFit()
        .frame(width: 200,height: 200)
        .foregroundColor(.white)
        .padding(.bottom)

      Text("Find your match.")
        .font(.headline)
        .fontWeight(.semibold)
        .foregroundColor(.white)
        .overlay (
            Capsule(
              style: .continuous)
              .frame(height: 3)
              .offset(y:5)
              .foregroundColor(.white),
              alignment:.bottom
        )
        .padding(.bottom)
      
      Text("This is  the #1 app for finding your match online! In this tutorial we are practicing using AppStorage and  other SwiftUI techniques.")
        .foregroundColor(.white)
        .fontWeight(.medium)
        Spacer()
        Spacer()

    }
    .multilineTextAlignment(.center)
    .padding(30)
  }
  
  
  private var addNameSection:some View{
    VStack(spacing: 20){
      Spacer()
      Text("What`s your name?.")
        .font(.largeTitle)
        .fontWeight(.semibold)
        .foregroundColor(.white)
      
      TextField("Your name here...",text: $name )
        .font(.headline)
        .frame(height:55)
        .padding(.horizontal)
        .background(Color.white)
        .cornerRadius(12)
      Spacer()
      Spacer()
    }
    .padding(30)
  }
  
  
  private var addAgeSection:some View{
    VStack(spacing: 20){
      Spacer()
      Text("What`s your age?.")
        .font(.largeTitle)
        .fontWeight(.semibold)
        .foregroundColor(.white)
     
      Text("\(String(format: "%0.f",age))")
        .font(.largeTitle)
        .fontWeight(.semibold)
        .foregroundColor(.white)
      Slider(value: $age, in: 18...100,step: 1)
        .accentColor(.white)
      Spacer()
      Spacer()
    }
    .padding(30)
  }
  
  private var addGenderSection:some View{
    VStack(spacing: 20){
      Spacer()
      Text("What`s your gender?")
        .font(.largeTitle)
        .fontWeight(.semibold)
        .foregroundColor(.white)
     
      Picker(selection: $gender) {
        Text("Male").tag("Male")
        Text("Female").tag("Female")
      } label: {
        Text(gender.count > 1  ? gender : "Select a gender")
          .font(.headline)
          .foregroundColor(.purple)
          .frame(height:55)
          .frame(maxWidth: .infinity)
          .background(Color.white)
          .cornerRadius(10)
      }
      .pickerStyle(MenuPickerStyle())
      .frame(height:55)
      .frame(maxWidth: .infinity)
      .accentColor(.purple)
      .background(Color.white)
      .cornerRadius(10)

      Spacer()
      Spacer()
    }
    .padding(30)
  }
}

// MARK: FUN
extension OnboardingView{
  
  func hendelNextButtonPressed(){
    // chack inputs
    switch OnboardingState{
    case 1:
      guard name.count >= 3 else{
        showAlert(title: "Your name must be at least 3 characters long! 🙄")
        return
      }
    case 3:
        guard gender.count > 1 else{
          showAlert(title: "Please select a gender befor moving forward! ")
        return
      }
    default:
      break
    }
      
    if OnboardingState == 3{
      signIn()
    }else {
      withAnimation(.spring()){
        OnboardingState +=  1
      }
    }
  }
  
  func signIn(){
    currentUserage = Int(age)
    currentUserName = name
    currentUserGender = gender
    withAnimation(.spring()){
      currentUserSignedIn = true
    }
  }
  
  func showAlert(title:String){
    alertTitle = title
    showAlert.toggle()
  }
}
