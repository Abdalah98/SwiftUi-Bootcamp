//
//  NavigationViewBootcamp.swift
//  SwiftUiBootcamp
//
//  Created by Abdallah on 11/12/2022.
//

import SwiftUI
//NavigationViewBootcamp , SheetsBootcamp ,PopoverBootcamp ,TransitionBootcamp
struct NavigationViewBootcamp: View {
    var body: some View {
      NavigationView {
        ScrollView{
          NavigationLink ("Hello, World!",
                          destination:Second()
                            //Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
          )
          Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
          Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
          Text("Hello, World!")
          Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
          Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
          Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        }.navigationTitle("hello!@")
        //  .navigationBarTitleDisplayMode(.automatic)
        //  .navigationBarHidden(true)

//          .navigationBarItems(leading:  Image(systemName: "xmark")
//           , trailing:  Image(systemName: "gear"))
          .navigationBarItems(leading: HStack{
            Image(systemName: "person")
            Image(systemName: "person.fill")
            Image(systemName: "heart.fill")
          }
                              , trailing:  NavigationLink(destination: {
            Second()
          }, label: {
            Image(systemName: "gear")
          })).accentColor(.red)
      }
    }
}
struct Second: View {
  @Environment(\.presentationMode) var presentationMode

  var body: some View {
    ZStack{
      Color.green
        .ignoresSafeArea()
        .navigationTitle("hello")
      //  .navigationBarHidden(true)
      VStack{
        
        Button(/*@START_MENU_TOKEN@*/"Button"/*@END_MENU_TOKEN@*/) {
          presentationMode.wrappedValue.dismiss()
        }
        NavigationLink ("Hello, World!",
                        destination:
                          Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
          
        )
      }
    }
  }
}
struct NavigationViewBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        NavigationViewBootcamp()
    }
}
