//
//  GridBootcamp.swift
//  SwiftUiBootcamp
//
//  Created by Abdallah on 07/12/2022.
//

import SwiftUI

struct GridBootcamp: View {
  let columns:[GridItem] = [
   // GridItem(.adaptive(minimum: 33,maximum: 44),spacing: nil, alignment: nil),

    GridItem(.flexible(),spacing: 6, alignment: nil),
    GridItem(.flexible(),spacing: 6, alignment: nil),
    GridItem(.flexible(),spacing: 6, alignment: nil),
 
//    GridItem(.fixed(120),spacing: 5, alignment: .center),
//    GridItem(.fixed(10),spacing: 5, alignment: .center),
//    GridItem(.fixed(70),spacing: 5, alignment: .center),
//    GridItem(.fixed(12),spacing: 5, alignment: .center),
//    GridItem(.fixed(50),spacing: 5, alignment: .center)

  ]
    var body: some View {
      ScrollView{
        Rectangle()
          .fill(.purple)
          .frame(height: 400)
        LazyVGrid(columns: columns, alignment: .center,spacing: 5	,pinnedViews: [.sectionHeaders],content: {
          Section(
            header:Text("hi")
              .font(.largeTitle)
              .foregroundColor(.red)
              .frame(width: 404,alignment: .leading)
              .background(Color.green)
              .padding()
          ){
            ForEach(0..<10){ index in
              RoundedRectangle(cornerRadius: 16)
                .fill(.blue)
                .frame(height: 10)
            }
          }
          Section(
            header:Text("hi2")
              .font(.largeTitle)
              .foregroundColor(.red)
              .frame(width: 404,alignment: .leading)
              .background(Color.green)
              .padding()
          ){
            ForEach(0..<10){ index in
              RoundedRectangle(cornerRadius: 16)
                .fill(.blue)
                .frame(height: 100)
            }
          }
          Section(
            header:Text("hi33")
              .font(.largeTitle)
              .foregroundColor(.red)
              .frame(width: 404,alignment: .leading)
              .background(Color.green)
              .padding()
          ){
            ForEach(0..<100){ index in
              RoundedRectangle(cornerRadius: 16)
                .fill(.blue)
                .frame(height: 100)
            }
          }
        })
//        LazyVGrid(columns: columns) {
//          ForEach(0..<100){ index in
//            RoundedRectangle(cornerRadius: 16)
//              .fill(.blue)
//              .frame(height: 100)
//
//          }
    
     // }
                  }
    }
}

struct GridBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        GridBootcamp()
    }
}
