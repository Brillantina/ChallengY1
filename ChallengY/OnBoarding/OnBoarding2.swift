//
//  OnBoarding2.swift
//  ChallengY
//
//  Created by Rita Marrano on 29/10/22.
//

import SwiftUI

struct OnBoarding2: View {
    
    var body: some View {
        
        VStack (alignment: .center) {
            
            Image("w2")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding()
            
            Text("Explore all The Challenges")
                .font(.title)
                .multilineTextAlignment(.center)
                .padding()
            
            Text("Tap and generate your challenge. If you don’t like it you will be able to generate additional challenges!")
                .font(.body)
                .fontWeight(.light)
                .multilineTextAlignment(.center)
                .padding(.horizontal)
                .padding()
            
        } //: VStack
    }
}

struct OnBoarding2_Previews: PreviewProvider {
    static var previews: some View {
        OnBoarding2()
    }
}
