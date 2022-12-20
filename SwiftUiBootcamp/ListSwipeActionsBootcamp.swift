//
//  ListSwipeActionsBootcamp.swift
//  SwiftUiBootcamp
//
//  Created by Abdallah on 20/12/2022.
//

import SwiftUI

struct ListSwipeActionsBootcamp: View {
  @State var fruits:[String] = ["apple" ,"orange", "banana" , "peach"]
  
  var body: some View {
    NavigationView{
      List{
       // Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//        ForEach(fruits,id: \.self) { data in
//          Text(data)
//        }
        ForEach(fruits,id: \.self) {
          Text($0.capitalized)
            .swipeActions(edge: .trailing , allowsFullSwipe: true) {
              Button {
                
              } label: {
                Text("save")
              }.tint(.purple)
              Button {
                
              } label: {
                Text("share")
              }.tint(.red)
              Button {
                
              } label: {
                Text("delet")
              }.tint(.yellow)
            }
            .swipeActions(edge: .trailing , allowsFullSwipe: true) {
              Button {
                
              } label: {
                Text("save")
              }.tint(.purple)
              Button {
                
              } label: {
                Text("share")
              }.tint(.red)
              Button {
                
              } label: {
                Text("delet")
              }.tint(.yellow)
            }
        }
       // .onDelete(perform: delete)
      }
    }
  }
  func delete(index:IndexSet){
    fruits.remove(atOffsets: index)
  }
}
struct ListSwipeActionsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ListSwipeActionsBootcamp()
    }
}
