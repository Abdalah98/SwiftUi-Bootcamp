//
//  FramesBootcamp.swift
//  SwiftUiBootcamp
//
//  Created by Abdallah on 06/12/2022.
//

import SwiftUI

struct FramesBootcamp: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        .background(Color.purple)
//        .frame(width: 100,height: 100,alignment: .center)
//        .background(Color.purple)
        .frame(maxWidth: .infinity,maxHeight: .infinity , alignment: .center)
        .background(Color.green)
    }
}

struct FramesBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        FramesBootcamp()
    }
}
