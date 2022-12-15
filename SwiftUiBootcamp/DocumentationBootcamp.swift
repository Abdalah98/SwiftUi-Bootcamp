//
//  DocumentationBootcamp.swift
//  SwiftUiBootcamp
//
//  Created by Abdallah on 15/12/2022.
//

import SwiftUI

struct DocumentationBootcamp: View {
  // MARK: PROPERTIES
      @State var data: [String] = [
      "Apples", "Oranges", "Bananasd"]
      @State var showAlert: Bool = false
  // MARK: BODY
  
  // ABDALLAH woring to fix bugs
  /*
   1) and navigation
   2) and Vsatck to fic lay out
   */
      var body: some View {
        NavigationView { // START: Nav
          
          ZStack {
            // bacgroung
            Color.red.ignoresSafeArea()
            // forground
            ScrollView{// START: SCROLL
                  Text( "Hello")
                  ForEach (data, id: \.self) { name in
                    Text (name)
                    font (. headline)
                      }
                    .navigationTitle("Documentation")
               
                      
            }
          }//END: SCROLL
          }//END: NAV
        }
           // MARK: FUNC
      func getAlert(text: String) -> Alert {
          return Alert(title: Text(text))
            }
}

// MARK: PREVIEW
struct DocumentationBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        DocumentationBootcamp()
    }
}
