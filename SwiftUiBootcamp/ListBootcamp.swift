//
//  ListBootcamp.swift
//  SwiftUiBootcamp
//
//  Created by Abdallah on 12/12/2022.
//

import SwiftUI

struct ListBootcamp: View {
  
  @State var fruits:[String] = ["apple" ,"orange", "banana" , "peach"]
  @State var veggies:[String] = ["tomato" ,"potato", "carrect" ]

  var body: some View {
    NavigationView{
      List{
        //section 1
        Section {
          ForEach(fruits,id: \.self) { fruit in
            Text("type of : \(fruit.capitalized)")
          }
          .onDelete(perform: deletItem)
          //            .onMove { indices, newOffset in
          //             // fruits.move(fromOffsets: indices, toOffset: newOffset)
          //              move(indices: indices, newOffset: newOffset)
          //            }
          .onMove(perform: move)
          .listRowBackground(Color.orange)
        } header: {
          HStack{
            Text("Fruits")
            Image(systemName: "flame.fill")
          }
          .font(.title)
          .foregroundColor(.orange)
        }
        // section 2
        Section {
          ForEach(veggies, id: \.self) { veggie in
            Text("type of  : \(veggie.capitalized)")
              .font(.body)
              .foregroundColor(.white)
              .padding()
//              .frame(maxWidth: .infinity)
//              .background(Color.orange)
          }
          
        } header: {
          Text("Veggies")
        }
        .listRowBackground(Color.orange)
        
        
      }
      
      .accentColor(.orange)
    //  .listStyle(DefaultListStyle())
      //listStyle(GroupedListStyle())
      //.listStyle(InsetListStyle())
//      .listStyle(InsetGroupedListStyle())
      //.listStyle(SidebarListStyle())
      .navigationTitle("Grocery List")
      .navigationBarItems(
        leading: EditButton()
        ,trailing: addButton
      )
      
    }
    .accentColor(.red)
  }
  
  func deletItem(index : IndexSet){
    fruits.remove(atOffsets: index)
  }
  
  func move(indices:IndexSet,newOffset:Int){
    fruits.move(fromOffsets: indices, toOffset: newOffset)
  }
  func add(){
    fruits.append("mango")
  }
  var addButton:some View{
    Button("Add", action: {
      add()
    })
  }
}

struct ListBootcamp_Previews: PreviewProvider {
  static var previews: some View {
    ListBootcamp()
  }
}
