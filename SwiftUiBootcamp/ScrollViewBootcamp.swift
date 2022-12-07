//
//  ScrollViewBootcamp.swift
//  SwiftUiBootcamp
//
//  Created by Abdallah on 07/12/2022.
//

import SwiftUI

struct ScrollViewBootcamp: View {
  var body: some View {

    ScrollView{
      VStack{
        ForEach(0..<55){ index in
          ScrollView(.horizontal,showsIndicators: false){
            HStack{
              ForEach(0..<55){ index in
                Rectangle()
                  .frame(width: 200,height:200)
                  .foregroundColor(.red)
                  .shadow(color: .blue,radius: 20)
                  .cornerRadius(12)
                  .padding()
              }
            }
          }
        }
      }
//
//        ScrollView{
//          VStack{
//            ForEach(0..<55){ index in
//              Rectangle()
//                .frame(height:100)
//                .foregroundColor(.red)
//
//            }
//        Rectangle()
//          .frame(width: 100,height:100)
//          .foregroundColor(.red)
//        Rectangle()
//          .frame(width: 100,height:100)
//          .foregroundColor(.black)
//        Rectangle()
//          .frame(width: 100,height:100)
//          .foregroundColor(.blue)
//        Rectangle()
//          .frame(width: 100,height:100)
//          .foregroundColor(.blue)
//        Rectangle()
//          .frame(width: 100,height:100)
//          .foregroundColor(.green)
//        Rectangle()
//          .frame(width: 100,height:100)
//          .foregroundColor(.blue)
//        Rectangle()
//          .frame(width: 100,height:100)
//          .foregroundColor(.blue)
//        Rectangle()
//          .frame(width: 100,height:100)
//          .foregroundColor(.blue)
//        Rectangle()
//          .frame(width: 100,height:100)
//          .foregroundColor(.blue)
      }
    }
  }


struct ScrollViewBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ScrollViewBootcamp()
    }
}
