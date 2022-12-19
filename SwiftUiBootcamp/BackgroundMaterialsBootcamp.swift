//
//  BackgroundMaterialsBootcamp.swift
//  SwiftUiBootcamp
//
//  Created by Abdallah on 19/12/2022.
//

import SwiftUI

struct BackgroundMaterialsBootcamp: View {
    var body: some View {
      VStack{
        Spacer()
        
        VStack{
          RoundedRectangle(cornerRadius: 4)
            .frame(width:50,height: 4)
            .padding()
              Spacer()
        }
        .frame(height:400)
        .frame(maxWidth: .infinity)
        .background(.thinMaterial)
        .cornerRadius(26)
      }
      .ignoresSafeArea()
      .background(Color.purple)
    }
}

struct BackgroundMaterialsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundMaterialsBootcamp()
    }
}
