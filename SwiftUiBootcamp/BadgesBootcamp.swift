//
//  BadgesBootcamp.swift
//  SwiftUiBootcamp
//
//  Created by Abdallah on 20/12/2022.
//

import SwiftUI

struct BadgesBootcamp: View {
    var body: some View {
      List{
        Text("Hello, World!").badge(80000)
        Text("Hello, World!").badge("ffff")
        Text("Hello, World!")
        
      }
//      TabView{
//        Color.purple
//          .tabItem {
//            Text("Hello, World!")
//            Image(systemName: "heart.fill")
//          }
//          .badge(80000)
//
//        Color.red
//          .tabItem {
//            Text("Hello, World!")
//            Image(systemName: "heart.fill")
//          }
//
//        Color.orange
//          .tabItem {
//            Text("Hello, World!")
//            Image(systemName: "heart.fill")
//          }
//      }
    }
}

struct BadgesBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        BadgesBootcamp()
    }
}
