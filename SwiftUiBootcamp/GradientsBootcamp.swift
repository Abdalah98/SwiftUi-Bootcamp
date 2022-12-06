//
//  GradientsBootcamp.swift
//  SwiftUiBootcamp
//
//  Created by Abdallah on 06/12/2022.
//

import SwiftUI

struct GradientsBootcamp: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 40)
        .fill(
//          LinearGradient(colors: [.purple,.blue,.black,.red],
//                         startPoint: .leading,
//                         endPoint: .trailing)
//          RadialGradient(gradient: Gradient(colors: [.blue,.red,.yellow]), center: .trailing, startRadius: 9, endRadius: 200)
          AngularGradient(gradient: Gradient(colors: [.blue,.purple,.yellow]), center: .center,angle: .degrees(90))
        )
        .frame(width: 300,height: 300)
       // .foregroundColor(.purple)
    }
}

struct GradientsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        GradientsBootcamp()
    }
}
