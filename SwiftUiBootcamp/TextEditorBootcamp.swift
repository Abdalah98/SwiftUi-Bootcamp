//
//  TextEditorBootcamp.swift
//  SwiftUiBootcamp
//
//  Created by Abdallah on 14/12/2022.
//

import SwiftUI

struct TextEditorBootcamp: View {
  
  @State var text = "write here"

  
    var body: some View {
      NavigationView {
        VStack{
          TextEditor(text: $text)
            .cornerRadius(25)
            .frame(height: 300)
            .foregroundColor(.red)
            .background(Color.gray)
            .colorMultiply(.brown)
          Button {
            
          } label: {
            Text("Save".uppercased())
              .font(.headline)
              .foregroundColor(.purple)
              .padding()
              .frame(maxWidth: .infinity)
              .background(Color.gray)
              .cornerRadius(25)
          }
Spacer()
        }
        .padding()
        .background(Color.blue)
        .navigationTitle("TextEditor")
      }
    }
}

struct TextEditorBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TextEditorBootcamp()
    }
}
