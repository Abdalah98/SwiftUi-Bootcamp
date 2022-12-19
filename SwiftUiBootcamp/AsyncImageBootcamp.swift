//
//  AsyncImageBootcamp.swift
//  SwiftUiBootcamp
//
//  Created by Abdallah on 19/12/2022.
//

import SwiftUI

struct AsyncImageBootcamp: View {
  let url = URL(string: "https://picsum.photos/400")
    var body: some View {
      
      AsyncImage(url: url) { phase in
        switch phase{
        case .empty:
          ProgressView()
          
        case .success(let img):
          img
            .resizable()
            .scaledToFit()
            .frame(width: 100 , height: 100)
            .cornerRadius(12)
        case .failure:
          Image(systemName: "questionmark")
            .font(.largeTitle)
        default:
          Image(systemName: "questionmark")
            .font(.largeTitle)
        }
      }
      
//      AsyncImage(url: url) { img in
//        img
//          .resizable()
//          .scaledToFit()
//          .frame(width: 100 , height: 100)
//         // .clipped()
//          .cornerRadius(12)
//
//      } placeholder: {
//        ProgressView()
//      }

    }
}

struct AsyncImageBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AsyncImageBootcamp()
    }
}
