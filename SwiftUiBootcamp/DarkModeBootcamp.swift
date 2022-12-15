//
//  DarkModeBootcamp.swift
//  SwiftUiBootcamp
//
//  Created by Abdallah on 15/12/2022.
//

import SwiftUI

struct DarkModeBootcamp: View {
    var body: some View {
      NavigationView(){
        ScrollView{
          VStack(spacing:20){
            Text("color purple")
              .foregroundColor(.purple)
            Text("color red")
              .foregroundColor(.red)
            Text("color green")
              .foregroundColor(.green)
            Text("color primary")
              .foregroundColor(.primary)
            Text("color balck")
              .foregroundColor(.black)
            Text("color white")
              .foregroundColor(.white)
            Text("color secondary")
              .foregroundColor(.secondary)
            Text("color CusomColor")
              .foregroundColor(Color("CusomColor"))
            
          }
        }.navigationTitle("Dark mode")
      }
    }
}

struct DarkModeBootcamp_Previews: PreviewProvider {
    static var previews: some View {
      Group{
        DarkModeBootcamp()
        .preferredColorScheme(.light)
        
        DarkModeBootcamp()
        .preferredColorScheme(.dark)
      }
    }
}
