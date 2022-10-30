//
//  ContentView.swift
//  ChallengY
//
//  Created by Rita Marrano on 29/10/22.
//

import SwiftUI
import SpriteKit
import AVFoundation


extension UserDefaults  {
    
    var onboardingViewShown: Bool {
        
        get {
            return (UserDefaults.standard.value(forKey: "onboardingViewShown")
             as? Bool) ?? false
        }
        
        set {
            UserDefaults.standard
                .setValue(newValue, forKey: "onBoardingShown")
        }
    }
}


struct ContentView: View {
    
    var body: some View {
        
        if
            UserDefaults.standard.onboardingViewShown {
            HomePage()
        } else {
            OnBoardingManager()
        }
    }
}

struct ContentView_Previews:
                                
    PreviewProvider {
    
    static var previews: some View {
        ContentView()
        
    }
}
