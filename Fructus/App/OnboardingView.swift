//
//  OnboardingView.swift
//  Fructus
//
//  Created by Jacob Chen on 5/9/21.
//

import SwiftUI

struct OnboardingView: View {
    // MARK: Properties
    
    var fruits: [Fruit] = fruitsData // creates a new variable fruits that is an array of fruits from the data file
    
    // MARK: Body
    var body: some View {
        // Display card
        TabView{
            ForEach(fruits[0...5]){ item in
                FruitCardView(fruit: item)
            }
            //: loop
        }//: TAB
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
}
// MARK: Preview
struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView(fruits: fruitsData)
    }
}
