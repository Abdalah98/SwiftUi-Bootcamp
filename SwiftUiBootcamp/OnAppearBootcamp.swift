//
//  OnAppearBootcamp.swift
//  SwiftUiBootcamp
//
//  Created by Abdallah on 15/12/2022.
//

import SwiftUI

struct OnAppearBootcamp: View {
  @State var name = "hi"
  @State var count = 0

    var body: some View {
      NavigationView{
        ScrollView{
          Text(name)
          LazyVStack{
            ForEach(0..<66) { row in
              RoundedRectangle(cornerRadius: 24)
                .fill(.purple)
                .frame(height: 200)
                .padding()
                .onAppear{
                  count += 1
                 
                }
               
            }
          }
        }
        .onAppear(perform: {
          DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
            name = "hello"

          }
        })
        .onDisappear(perform: {
         // DispatchQueue.main.asyncafter(deadline: .now() + 5) {
            name = "hello dis"

        //  }
        })
        .navigationTitle("OnAppearBootcamp: \(count)")
      }
    }
}

struct OnAppearBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        OnAppearBootcamp()
    }
}
