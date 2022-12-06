//
//  BackgroundsAndOverlaysBootcamp.swift
//  SwiftUiBootcamp
//
//  Created by Abdallah on 06/12/2022.
//

import SwiftUI

struct BackgroundsAndOverlaysBootcamp: View {
    var body: some View {
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//      //  .frame(width: 100,height: 100,alignment: .leading)
//
//        .background(
//         // Color.purple
//         // LinearGradient(colors: [.red, .blue], startPoint: .center, endPoint: .center)
//        Circle()
//         // .fill(.blue)
//          .fill(LinearGradient(colors: [.red, .blue], startPoint: .leading, endPoint: .trailing))
//          .frame(width: 100,height: 100,alignment: .leading)
//
//        )
//     //   .frame(width: 120,height: 120,alignment: .leading)
//
//        .background(
//        Circle()
//         // .fill(.red)
//          .fill(LinearGradient(colors: [.secondary, .green], startPoint: .leading, endPoint: .trailing))
//          .frame(width: 120,height: 120,alignment: .leading)
//
//        )
//      Circle()
//        .fill(.pink)
//        .frame(width: 160,height: 1600,alignment: .center)
//        .overlay {
//          Text("!")
//            .font(.body)
//            .foregroundColor(.white)
//        }.background(
//          Circle()
//                   .fill(LinearGradient(colors: [.secondary, .green], startPoint: .leading, endPoint: .trailing))
//                   .frame(width: 200,height: 200,alignment: .leading)
//        )
//      Rectangle()
//        .frame(width: 120,height: 120)
//        .overlay(
//          Rectangle()
//            .foregroundColor(.red)
//            .frame(width: 100,height: 100)
//          ,alignment:.center)
//         .background(
//            Rectangle()
//              .foregroundColor(.teal)
//              .frame(width: 160,height: 160)
//            ,alignment: .center)
      Image(systemName: "heart.fill")
        .font(.system(size: 40))
        .foregroundColor(.white)
        .background(
        Circle()
          .fill(LinearGradient(colors: [.purple, .pink], startPoint: .topLeading, endPoint: .bottomTrailing))
          .frame(width: 100,height: 100)
          .shadow(color: Color.green,radius: 10,x:0.0,y: 10)
          .overlay(
            Circle()
              .fill(.blue)
              .frame(width: 70,height: 70,alignment: .bottom)
              .overlay(
                Text("1")
                .font(.headline)
                .foregroundColor(.white)
              ,alignment: .top)
          )
        )
    }
}

struct BackgroundsAndOverlaysBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundsAndOverlaysBootcamp()
    }
}
