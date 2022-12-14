//
//   ColorPickerBootcamp.swift
//  SwiftUiBootcamp
//
//  Created by Abdallah on 14/12/2022.
//

import SwiftUI

struct _ColorPickerBootcamp: View {
  @State var selectionColor:Color = .red
    var body: some View {
      ZStack{
        selectionColor
          .ignoresSafeArea()
        ColorPicker("selection color", selection: $selectionColor,supportsOpacity: true)
          .padding()
          .background(Color.purple)
          .cornerRadius(20)
          .foregroundColor(.white)
          .font(.headline)
          .padding(50)
      }
    }
}

struct _ColorPickerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        _ColorPickerBootcamp()
    }
}
