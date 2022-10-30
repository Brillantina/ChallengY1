//
//  OnBoarding3.swift
//  ChallengY
//
//  Created by Rita Marrano on 29/10/22.
//

import SwiftUI

struct OnBoarding4: View {
    
    @State private var isAnimating : Bool = false
    
    var body: some View {
        
        VStack (spacing: 50) {
            
            Image ("Welcome")
                .resizable()
                .scaledToFit()
                .frame(height:450)
                .opacity(isAnimating ? 1 : 0)
                .offset(y: isAnimating ? 0 : -60)
                .animation(.easeOut(duration: 2), value: isAnimating)
            
            Button(action: {
                print("Funziona?")
            }, label: {
                NavigationLink(destination: HomePage()
                    .navigationBarBackButtonHidden(true))
                {
                    Text ("Explore")
                        .font(.title)
                        .foregroundColor(.white)
                        .fontWeight(.bold)
                        .frame(width: 360, height: 65, alignment: .center)
                }
            })
            .background(
                Capsule().strokeBorder(Color.black, lineWidth: 0)
                    .background(.black))
            .cornerRadius(20)
            .opacity(isAnimating ? 1 : 0)
            .offset(y: isAnimating ? 0 : 40)
            .animation(.easeOut(duration: 2), value: isAnimating)
        }
        .onAppear(perform: {
            withAnimation(.easeIn(duration: 2)){
                isAnimating = true
            }
    })
    }
}

struct OnBoarding4_Previews: PreviewProvider {
    
    static var previews: some View {
        
        OnBoarding4()
    }
}
