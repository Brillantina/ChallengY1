//
//  OnBoardingManager.swift
//  ChallengY
//
//  Created by Rita Marrano on 29/10/22.
//

import SwiftUI

struct OnBoardingManager: View {
    
    @AppStorage ("onboardingViewShown")
    
    var onboardingViewShown : Bool = false
    
    var body: some View {
        
        NavigationView {
            
            TabView {
                
                OnBoarding1()
                
                OnBoarding2()
                
                OnBoarding3()
                
                OnBoarding4()
            }
            .ignoresSafeArea()
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
            .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
        }.onAppear(perform: {
            UserDefaults.standard.onboardingViewShown = true
            
        })
    }
}

struct OnBoardingManager_Previews: PreviewProvider {
    static var previews: some View {
        OnBoardingManager()
    }
}
