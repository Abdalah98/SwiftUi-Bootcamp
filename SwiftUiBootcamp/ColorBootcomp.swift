//
//  ColorBootcomp.swift
//  SwiftUiBootcamp
//
//  Created by Abdallah on 06/12/2022.
//

import SwiftUI

struct ColorBootcomp: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 40)
        .fill(Color(UIColor.systemBlue))
        .frame(width: 300,height: 300)
        //.shadow(radius: 22)
        .shadow(color: .green.opacity(0.1 ), radius: 60,x: -9,y:-44)
    }
}

struct ColorBootcomp_Previews: PreviewProvider {
    static var previews: some View {
        ColorBootcomp()
    }
}
