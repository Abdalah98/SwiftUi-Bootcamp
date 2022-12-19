//
//  ButtonStylesBootcamp.swift
//  SwiftUiBootcamp
//
//  Created by Abdallah on 19/12/2022.
//

import SwiftUI

struct ButtonStylesBootcamp: View {
    var body: some View {
      VStack{
        Button {
          
        } label: {
          Text("new click here")
            .frame(height: 55)
            .frame(maxWidth: .infinity)
        }
        .controlSize(.mini)
        .buttonBorderShape(.automatic)
        .buttonStyle(.borderedProminent)

        Button("Doneeee") {
          
        }
        .frame(height: 55)
        .frame(maxWidth: .infinity)
        //.buttonStyle(.plain)
        .controlSize(.mini)
        .buttonBorderShape(.capsule)

        .buttonStyle(.borderedProminent)

        Button("Doddddne") {
          
        }
        .frame(height: 55)
        .frame(maxWidth: .infinity)
        .controlSize(.large)
        //.buttonStyle(.bordered)
        .buttonBorderShape(.roundedRectangle)

        .buttonStyle(.borderedProminent)

        Button("Ddd one") {
          
        }
        .frame(height: 55)
        .frame(maxWidth: .infinity)
        .controlSize(.regular)
        .buttonBorderShape(.roundedRectangle(radius: 22))
        .buttonStyle(.borderedProminent)
        
        Button("Done") {
          
        }
        .frame(height: 55)
        .frame(maxWidth: .infinity)
        //.buttonStyle(.borderless)
        .controlSize(.small)
          .buttonStyle(.borderedProminent)

        
      }.padding()
    }
}

struct ButtonStylesBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ButtonStylesBootcamp()
    }
}
