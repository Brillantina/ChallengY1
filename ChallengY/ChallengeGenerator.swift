//
//  ChallengeGenerator.swift
//  ChallengY
//
//  Created by Rita Marrano on 30/10/22.
//
import Foundation
import SwiftUI


class ViewModel: ObservableObject
{
    let arrayOfChallenges: [String] = ["Pay a coffe to the person you choose!", "Go ask someone how they’re doing!", "Introduce yourself to the first person you see today!", " Ask to someone you choose if they want to have a city tour with you!", "Tell someone how your ChallengY experience has been so far!", " Ask someone how their day was!", " If you feel particularly confident today, try to speak with someone about your relational problems", "Try to have breakfast/lunch/dinner in a crowded place", "If your plan was to stay at home, do an effort and go out for a walk, it’s going to pay off", " If you have some work to do, instead of doing it at home, go to a public place and if you’ll have the chance, share what you are doing with someone!"]
    
    @Published var challenge: String = ""
    
    init()
    {
        generator()
    }
    
    func generator()
    {
        self.challenge = arrayOfChallenges.randomElement()!
    }
}
