//
//  ContentView.swift
//  Fructus
//
//  Created by Jacob Chen on 5/7/21.
//

import SwiftUI

struct ContentView: View {
    // MARK: PROPERTIES
    
    var fruits: [Fruit] = fruitsData
    
    //MARK: Body
    var body: some View {
        NavigationView{
            List{
                ForEach(fruits.shuffled()) { item in
                    // create navigation link
                    NavigationLink(
                        destination: FruitDetailView(fruit:item)){
                            FruitRowView(fruit: item)
                                .padding(.vertical, 4)
                        }
                }
            }
            .navigationTitle("Fruits")
        } //: NAVIGATION
    }
}

// MARK - PREVIEW
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruits: fruitsData)
    }
}
