//
//  StartButtonView.swift
//  Fructus
//
//  Created by Jacob Chen on 5/9/21.
//  Create a custom button

import SwiftUI

struct StartButtonView: View {
    // MARK: Properties
    
    // MARK: Button
    
    
    var body: some View {
        Button(action:{
            print("Exit the onboarding")
        }) {
            HStack(spacing: 8) {
                Text("Start")
                
                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
            }
            .padding(.horizontal, 16)
            .padding(.vertical, 10)
            .background(Capsule().strokeBorder(Color.white, lineWidth: 1.25))
        } //: Button
        .accentColor(Color.white)
    }
}
// MARL: Preview
struct StartButtonView_Previews: PreviewProvider {
    static var previews: some View {
        StartButtonView()
            .preferredColorScheme(.dark)
            .previewLayout(.sizeThatFits)
    }
}
