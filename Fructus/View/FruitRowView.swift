//
//  FruitRowView.swift
//  Fructus
//
//  Created by Jacob Chen on 5/13/21.
//

import SwiftUI

struct FruitRowView: View {
    // MARK: Properties
    var fruit: Fruit
    
    // MARK: Body
    var body: some View {
        HStack{
            Image(fruit.image)
                .renderingMode(.original)
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .shadow(color: Color(red: 0, green: 0, blue: 0), radius: 3, x: 2, y: 2)
                .background(
                    LinearGradient(gradient: Gradient(colors: fruit.gradientColors), startPoint:.top, endPoint: .bottom)
                )
                .cornerRadius(8)
        
        VStack(alignment: .leading, spacing: 5, content: {
            Text(fruit.title)
                .font(.title2)
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
            Text(fruit.headline)
                .font(.caption)
                .foregroundColor(Color.secondary)
        })
            
        } //: HSTACK
    }
}

// MARK: Preview
struct FruitRowView_Previews: PreviewProvider {
    static var previews: some View {
        FruitRowView(fruit: fruitsData[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
