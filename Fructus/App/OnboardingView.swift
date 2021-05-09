//
//  OnboardingView.swift
//  Fructus
//
//  Created by Jacob Chen on 5/9/21.
//

import SwiftUI

struct OnboardingView: View {
    // MARK: Properties
    
    // MARK: Body
    var body: some View {
        // Display card
        TabView{
            ForEach(0..<5){ item in
                FruitCardView()
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
        OnboardingView()
    }
}
