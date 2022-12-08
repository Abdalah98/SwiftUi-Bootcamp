//
//  SafeAreaBootcamp.swift
//  SwiftUiBootcamp
//
//  Created by Abdallah on 08/12/2022.
//

import SwiftUI

struct SafeAreaBootcamp: View {
    var body: some View {
//      ZStack {
//        Color.orange
//          .edgesIgnoringSafeArea(.all)
        ScrollView{
          VStack{
            Text("abdalah")
              .font(.largeTitle)
              .fontWeight(.bold)
              .frame(maxWidth: .infinity,alignment: .leading)
              .padding(.leading,12)
            ForEach(0..<20){ index in
              
              Rectangle()
                .fill(.purple)
                .frame(height: 120)
                .cornerRadius(12)
                .shadow(radius: 10)
                .padding()
                
              
            }
          }
        }
        //.background(Color.red)
        .background(
          Color.yellow
          //  .edgesIgnoringSafeArea(.all)
            .ignoresSafeArea()
        )
    //  }
//      ZStack {
//        //background
//        Color.blue
//          .edgesIgnoringSafeArea(.all)
//        //foreground
//        VStack {
//          Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//       //     .padding(.top,100)
//            Spacer()
//
//        }
//        .frame(maxWidth:.infinity , maxHeight: .infinity)
//          .background(Color.purple)
//       // .edgesIgnoringSafeArea(.all)
//      }
    }
}

struct SafeAreaBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SafeAreaBootcamp()
    }
}
