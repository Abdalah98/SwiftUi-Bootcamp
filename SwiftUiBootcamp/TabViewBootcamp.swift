//
//  TabViewBootcamp.swift
//  SwiftUiBootcamp
//
//  Created by Abdallah on 15/12/2022.
//

import SwiftUI

struct TabViewBootcamp: View {
  @State var selectiuon = 2
  let icon = ["heart.fill", "globe","house.fill","person.fill"]
    var body: some View {
      TabView {
//        RoundedRectangle(cornerRadius: 24)
//        RoundedRectangle(cornerRadius: 24)
//        RoundedRectangle(cornerRadius: 24)
        ForEach(icon, id: \.self) { id in
          Image(systemName: id)
            .resizable()
            .scaledToFit()
            .padding(40)
            .frame(width: 70,height: 70)
            
        }
      }.foregroundColor(.purple)
        .frame(width: 200,height: 200)
        .padding()
        .tabViewStyle(PageTabViewStyle())
//      TabView(selection: $selectiuon) {
//        HomeView(selectiuon: $selectiuon)
//    //    Text("Hello, World!")
//          .tabItem {
//            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//            Image(systemName: "house.fill")
//          }.tag(0)
//        Text("globe")
//          .tabItem {
//            Text("globe")
//            Image(systemName: "globe")
//          }.tag(1)
//        Text("prson")
//          .tabItem {
//            Text("peploe")
//              .tabItem {
//                Text("peploe")
//                Image(systemName:"person.fill")
//              }
//          }.tag(2)
//      }.accentColor(.red)
    }
}

struct TabViewBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TabViewBootcamp()
    }
}

struct HomeView: View {
  @Binding var selectiuon : Int

  var body: some View {
    ZStack{
      Color.red
      Text("Hello, World!")
        .font(.largeTitle)
        .foregroundColor(.white)
      Button {
        selectiuon = 1
      } label: {
        Text("go to globle")
          .foregroundColor(.white)
          .padding()
          .background(Color.purple)
          .cornerRadius(28)
      }

    }
  }
}
