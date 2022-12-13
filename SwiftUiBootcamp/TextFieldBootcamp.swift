//
//  TextFieldBootcamp.swift
//  SwiftUiBootcamp
//
//  Created by Abdallah on 13/12/2022.
//

import SwiftUI

struct TextFieldBootcamp: View {
  @State var text = ""
  @State var namesData:[String] = []
    var body: some View {
      NavigationView {
        VStack {
          TextField("type here....", text: $text)
           // .textFieldStyle(RoundedBorderTextFieldStyle())
            .padding()
            .background(Color.purple.opacity(0.6).cornerRadius(12))
            .foregroundColor(.white)
          .font(.headline)
          Button {
            if textIsApproprite() {
              save()

            }
          } label: {
            Text("Save".uppercased())
              .padding()
              .frame(maxWidth: .infinity)
              .background(textIsApproprite() ? .red : .blue)
                .cornerRadius(12)
              .foregroundColor(.white)
            .font(.headline)
          }.disabled(!textIsApproprite())
          Spacer()
          ForEach(namesData , id: \.self) { text in
            Text(text)
          }
        }
        .padding().navigationTitle("Save data")
      }
    }
  
  
  func textIsApproprite() -> Bool{
    if text.count >= 3 {
      return true
    }
    return false
  }
  func save (){
    namesData.append(text)
    text = ""
  }
}

struct TextFieldBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldBootcamp()
    }
}
