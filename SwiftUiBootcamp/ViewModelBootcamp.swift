//
//  ViewModelBootcamp.swift
//  SwiftUiBootcamp
//
//  Created by Abdallah on 18/12/2022.
//

import SwiftUI
struct FruitName:Identifiable{
  var id = UUID().uuidString
  var name :String
  let count : Int
}
class FruitViewModel :ObservableObject {
  
  @Published var fruit:[FruitName] = []
  @Published var isLoadIng = false
  
  init() {
    getData()
  }
  func getData(){
    isLoadIng = true
    let fruit1 = FruitName(name: "watermalone", count: 22)
    let fruit2 = FruitName(name: "appleee", count: 36)
    let fruit3 = FruitName(name: "appleeeedd", count: 99)
    DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
      self.fruit.append(fruit1)
      self.fruit.append(fruit2)
      self.fruit.append(fruit3)
      self.isLoadIng = false
    }
   

  }
  func deletFruite(index : IndexSet){
    fruit.remove(atOffsets: index)
  }
}
struct ViewModelBootcamp: View {
//  @State var fruit:[FruitName] = [
//    FruitName(name: "apple", count: 8),
//    FruitName(name: "banana", count: 3),
//    FruitName(name: "orange", count: 2),
//    FruitName(name: "cocao", count: 5)
//
//    ]
 @StateObject var fruitViewModel = FruitViewModel()
  
    var body: some View {
      NavigationView{
        List{
          if fruitViewModel.isLoadIng{
            ProgressView()
          }else{
            ForEach(fruitViewModel.fruit) { id in
              HStack(spacing:15) {
                Text("\(id.count)")
                  .foregroundColor(Color.blue)
                Text(id.name)
                  .foregroundColor(Color.red)
                
              }
            }
            .onDelete(perform: fruitViewModel.deletFruite)
          }
        }
        .listStyle(GroupedListStyle())
        .navigationTitle("Fruit Name")
        .navigationBarItems(leading:
                              NavigationLink(destination: {
          SecondScreen(fruitViewModel: fruitViewModel)
        }, label: {
          Image(systemName: "heart")
        }
                             ))
//        .onAppear{
//          fruitViewModel.getData()
//        }
      }
    }
//  func getData(){
//    var fruit1 = FruitName(name: "watermalone", count: 22)
//    var fruit2 = FruitName(name: "appleee", count: 36)
//    var fruit3 = FruitName(name: "appleeeedd", count: 99)
//    fruit.append(fruit1)
//    fruit.append(fruit2)
//    fruit.append(fruit3)
//
//  }
//  func deletFruite(index : IndexSet){
//    fruit.remove(atOffsets: index)
//  }
  
}
struct SecondScreen:View{
  @Environment(\.presentationMode) var presentationMode
  @ObservedObject var fruitViewModel: FruitViewModel
  var body: some View{
    ZStack{
      Color.purple
      Button {
        presentationMode.wrappedValue.dismiss()
      } label: {
        Text("hi")
          .foregroundColor(Color.white)
          .font(.headline)
        
      }.background(Color.blue)

    }
  }
}
struct ViewModelBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ViewModelBootcamp()
    }
}
