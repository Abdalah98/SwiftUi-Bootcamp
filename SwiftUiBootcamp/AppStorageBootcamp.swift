//
//  AppStorageBootcamp.swift
//  SwiftUiBootcamp
//
//  Created by Abdallah on 18/12/2022.
//

import SwiftUI

struct AppStorageBootcamp: View {
  
  //@State var currentName:String?
  // used to in swift ui
  @AppStorage("name") var currentName:String?
    var body: some View {
      VStack(spacing : 20){
        
        Text(currentName ?? "dd")
        if let name = currentName{
          Text(name)
        }
        Button("Saved".uppercased()) {
          let na = "bedo"
          currentName = na
         // UserDefaults.standard.set(na, forKey: "n")
        }
          
      }
//      \.onAppear{
//       // currentName = UserDefaults.standard.string(forKey: "n")
//      }
   
    }
}

struct AppStorageBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AppStorageBootcamp()
    }
}
