//
//  Training.swift
//  SwiftUiBootcamp
//
//  Created by Abdallah on 11/12/2022.
//

import SwiftUI

struct Training: View {
    var body: some View {
     
//
      VStack{
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        .font(.largeTitle)
        .fontWeight(.black)
        .padding()
        .foregroundColor(.red)
        .background(
          Color.green
            .cornerRadius(12)
        )
      Circle()
        .fill(.green)
        .frame(width: 200,height: 200)
        .overlay {
          Image(systemName: "heart")
            .font(.largeTitle)
            .foregroundColor(.purple)
            .frame(width: 80,height: 80)
            .background(
              Color.white
                .cornerRadius(12)
                .shadow(radius: 22)
            )
        }
        RoundedRectangle(cornerRadius: 20)
          .fill(.purple)
          .frame(width: 140,height: 140)
          .overlay {
            Circle()
              .fill(.green)
              .frame(width: 80,height: 80)
            
          }
        }
    }
}

struct Training_Previews: PreviewProvider {
    static var previews: some View {
        Training()
    }
}
