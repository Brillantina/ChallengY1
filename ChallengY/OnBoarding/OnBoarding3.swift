//
//  OnBoarding3.swift
//  ChallengY
//
//  Created by Rita Marrano on 29/10/22.
//

import SwiftUI

struct OnBoarding3: View {
    
    var body: some View {
        
        VStack (alignment: .center) {
            
            Image("w3")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding()
            
            Text("Take Care Of Your Feelings")
                .font(.title)
                .multilineTextAlignment(.center)
                .padding()
            
            Text("Take notes about your challenges describing your feelings in order to improve consciousness about you.")
                .font(.body)
                .fontWeight(.light)
                .multilineTextAlignment(.center)
                .padding(.horizontal)
                .padding()
            
        } //: VStack
    }
}

struct OnBoarding3_Previews: PreviewProvider {
    
    static var previews: some View {
        
        OnBoarding3()
    }
}
