//
//  OnBoarding1.swift
//  ChallengY
//
//  Created by Rita Marrano on 29/10/22.
//

import SwiftUI

struct OnBoarding1: View {
    
    var body: some View {
        
        VStack(alignment: .center) {
            
            Image("W3")
                .resizable()
                .aspectRatio(contentMode:
                        .fit)
                .padding()
            
            Text("Welcome to ChallengY")
                .font(.title)
                .multilineTextAlignment(
                    .center)
                .padding()
            
            Text("Get yourself involved in this human interaction based experience! Follow the steps and jump into the ChallengY space!")
                .font(.body)
                .fontWeight(.light)
                .multilineTextAlignment(.center)
                .padding(.horizontal)
                .padding()
            
        } //:VStack
    }
}


struct OnBoarding1_Previews: PreviewProvider {
    static var previews: some View {
        OnBoarding1()
    }
}
