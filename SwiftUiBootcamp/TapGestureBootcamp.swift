//
//  TapGestureBootcamp.swift
//  SwiftUiBootcamp
//
//  Created by Abdallah on 15/12/2022.
//

import SwiftUI

struct TapGestureBootcamp: View {
  @State var inSelected = false
    var body: some View {
      VStack(spacing: 20){
        RoundedRectangle(cornerRadius: 25)
          .fill(inSelected ? .red : .purple)
          .frame(height: 200)
        Button {
          inSelected.toggle()
        } label: {
          Text("Done")
            .foregroundColor(.white)
            .font(.headline)
            .frame(height: 50)
            .frame(maxWidth: .infinity)
            .background(Color.purple)
            .cornerRadius(25)
        }
        Text("Done")
          .foregroundColor(.white)
          .font(.headline)
          .frame(height: 50)
          .frame(maxWidth: .infinity)
          .background(Color.purple)
          .cornerRadius(25)
//          .onTapGesture {
//            inSelected.toggle()
//          }
          .onTapGesture(count: 3) {
            inSelected.toggle()
          }
Spacer()
      }
      .padding(40)
    }
}

struct TapGestureBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TapGestureBootcamp()
    }
}
