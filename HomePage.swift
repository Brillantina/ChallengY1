//
//  HomePage.swift
//  ChallengY
//
//  Created by Rita Marrano on 29/10/22.
//

import SwiftUI

struct HomePage: View {
    
    @ObservedObject var myViewModel = ViewModel()
    @State var showView = false
    @State private var isAddButtonDisabled
    = true
    
    var body: some View {
        
        NavigationView {
            //MARK: - GENERATE BUTTON
            Button {
                
                showView.toggle()
                
            } label:
            {
                
                ZStack {
                    
                    Circle()
                        .frame(width: 265, height: 265)
                        .foregroundColor(.black)
                    
                    Text("Generate")
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .font(.largeTitle)
                }
                .sheet(isPresented:
                        $showView) {
                    
                    AcceptChallenge()
                    
                }
            }
            
            //MARK: - NAVIGATION BAR ITEMS
            .navigationBarItems(trailing:
                                    Button(action: {
                print("Archivio")
            }, label: {
                NavigationLink(destination: Archive()
                    .navigationBarBackButtonHidden(false))
                {
                    Image (systemName: "note.text")
                        .resizable()
                        .frame(width: 30, height: 30)
                        .foregroundColor(.black)
                }
            }))
        }//:NavigationView
    }
}

struct HomePage_Previews: PreviewProvider {
    static var previews: some View {
        HomePage()
    }
}
