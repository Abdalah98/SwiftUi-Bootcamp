//
//  StacksBootcamp.swift
//  SwiftUiBootcamp
//
//  Created by Abdallah on 07/12/2022.
//

import SwiftUI

struct StacksBootcamp: View {
  
  // Vstacks -> Vertical
  // stacks -> Horizontal
  // Zstacks -> zIndex (back to front)
  
    var body: some View {
      VStack(spacing: 100){
        
        
        ZStack{
          Circle()
            .fill(.purple)
            .frame(width: 120,height: 120)
          Text("!")
            .font(.system(.headline))
            .fontWeight(.bold)
            .foregroundColor(.white)
        }
       
        Text("!")
          .font(.system(.headline))
          .fontWeight(.bold)
          .background(
            Circle()
              .fill(.purple)
              .frame(width: 120,height: 120)
              .overlay(
                Circle()
                  .fill(.red)
                  .frame(width: 50,height: 55)
                  .overlay(
                    Text("!")
                      .font(.system(.headline))
                      .fontWeight(.bold)
                      .foregroundColor(.white)
                  )
                ,alignment: .bottomLeading
              )
          )
      }
//      HStack(alignment: .center, spacing: 20){
//        Rectangle()
//          .fill(.pink)
//          .frame(width: 120,height: 120)
//          .cornerRadius(12)
//
//        Rectangle()
//          .fill(.purple)
//          .frame(width: 120,height: 120)
//          .cornerRadius(12)
//
//        Rectangle()
//          .fill(.blue)
//          .frame(width: 120,height: 120)
//          .cornerRadius(12)
//
//        Rectangle()
//          .fill(.orange)
//          .frame(width: 120,height: 120)
//          .cornerRadius(12)
//      }
      
//      HStack{
//        Rectangle()
//          .fill(.pink)
//          .frame(width: 120,height: 120)
//          .cornerRadius(12)
//
//        Rectangle()
//          .fill(.purple)
//          .frame(width: 120,height: 120)
//          .cornerRadius(12)
//
//        Rectangle()
//          .fill(.blue)
//          .frame(width: 120,height: 120)
//          .cornerRadius(12)
//
//        Rectangle()
//          .fill(.orange)
//          .frame(width: 120,height: 120)
//          .cornerRadius(12)
//      }
    }
}

struct StacksBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        StacksBootcamp()
    }
}
