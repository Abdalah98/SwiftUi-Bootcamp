//
//  ContextMenuBootcamp.swift
//  SwiftUiBootcamp
//
//  Created by Abdallah on 13/12/2022.
//

import SwiftUI

struct ContextMenuBootcamp: View {
  @State var back: Color = .red
    var body: some View {
      VStack(alignment: .leading, spacing: 10){
        Image(systemName: "house.fill")
          .font(.title)
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
          .font(.headline)
        Text("Goor evening")
          .font(.subheadline)
      }
      .foregroundColor(.white)
      .padding(30)
      .background(back.cornerRadius(25))
      .contextMenu {
        Button {
          back = .blue
        } label: {
          Label("shere",systemImage: "flame.fill")
        }

        Button {
          back = .orange
        } label: {
          Text("log out")
        }
        
        Button {
          back = .green
        } label: {
          HStack(){
            Text("like")
            Image(systemName: "heart.fill")
            
          }
        }
      }
    }
}

struct ContextMenuBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ContextMenuBootcamp()
    }
}
