//
//  IconBootcamp.swift
//  SwiftUiBootcamp
//
//  Created by Abdallah on 06/12/2022.
//

import SwiftUI

struct IconBootcamp: View {
    var body: some View {
        Image(systemName: "person.fill.badge.plus")
        .renderingMode(.template)
        //.font(.caption2)
        .resizable()
        .aspectRatio(contentMode: .fit)
       // .font(.system(size: 200))
        .scaledToFill()
       // .foregroundColor(.purple)
        .frame(width: 300,height: 300)
        //.clipped()
       // .cornerRadius(200)
      
    }
}

struct IconBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        IconBootcamp()
    }
}
