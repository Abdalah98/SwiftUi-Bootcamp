//
//  EnvironmentObjectBootcamp.swift
//  SwiftUiBootcamp
//
//  Created by Abdallah on 18/12/2022.
//

import SwiftUI
class EnvironmentViewModel: ObservableObject{
  
  @Published var dataArray: [String] =  []
  
  init(){
    getData()
  }
  func getData(){
    self.dataArray.append(contentsOf: ["iphone 12","airpods","max mac","ipad","mac steduio"])

  }
}
struct EnvironmentObjectBootcamp: View {
  
 @StateObject var  environmentViewModel = EnvironmentViewModel()
  
    var body: some View {
      NavigationView{
        
        List{
          ForEach(environmentViewModel.dataArray,id: \.self) { data in
            NavigationLink {
              secendViews(selectItem: data)
            } label: {
              Text(data)
            }

          }
        }.navigationTitle("Apple devices")
        
      }
      .environmentObject(environmentViewModel)
        
    }
}

struct secendViews:View{
  let selectItem: String
 // @ObservedObject var  view: EnvironmentViewModel

  var body: some View{
    ZStack{
      Color.orange.ignoresSafeArea()
      NavigationLink {
        finsalScreen()
      } label: {
        Text(selectItem)
          .font(.title)
          .foregroundColor(Color.white)
      }
    }
  }
}
struct finsalScreen:View{
  //
 // @ObservedObject var  view: EnvironmentViewModel
  @EnvironmentObject var  view: EnvironmentViewModel
  
  var body: some View{
    ScrollView{
      VStack(spacing:22){
        ForEach(view.dataArray,id: \.self) { data in
          Text(data)
        }

      }
    }
  }
}
struct EnvironmentObjectBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        EnvironmentObjectBootcamp()
    }
}

// here uesed ObservedObject to pass data every screen and make var and pass it
// EnvironmentObject dont pass it access from  property and get it and shere an any screen
