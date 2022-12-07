//
//  ForEachBootcamp.swift
//  SwiftUiBootcamp
//
//  Created by Abdallah on 07/12/2022.
//

import SwiftUI

struct ForEachBootcamp: View {
  let data : [String] = ["Hello, World!","Hello, World!","Hello, World!","Hello, World!","Hello, World!","Hello, World!","Hello, World!","Hello, World!","Hello, World!","Hello, World!","Hello, World!","Hello, World!","Hello, World!"]
    var body: some View {
      VStack{
        ForEach(data.indices){ index in
          Text("Hello, World!\(index),\(data[index])")
            .foregroundColor(.brown)
        }
//        ForEach(0..<10) { index in
//          HStack
//          {
//            Circle()
//              .fill(.purple)
//              .frame(width: 20,height: 20)
//
//            Text("Hello, World!\(index)")
//              .foregroundColor(.brown)
//          }
//        }
      }
    }
}

struct ForEachBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ForEachBootcamp()
    }
}
