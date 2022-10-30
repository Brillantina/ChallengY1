//
//  AcceptChallenge.swift
//  ChallengY
//
//  Created by Rita Marrano on 30/10/22.
//

import SwiftUI

struct AcceptChallenge: View {
    
    @ObservedObject var myViewModel = ViewModel()
    @State var thoughts : String = " "
    @State private var isAddButtonDisabled = true
    @State var isModalPresented = false
    
    var body: some View {
        
        NavigationView {
            
            ZStack {
                
                Color("CustomWhite")
                    .ignoresSafeArea()
                
                VStack (spacing: 100) {
                    
                    Spacer()
                    
                    ZStack {
                        
                        Text(myViewModel.challenge)
                            .fontWeight(.heavy)
                            .padding()
                            .frame(width: 360,
                            height: 120)
                            .cornerRadius(16)
                            .foregroundColor(.white)
                            .multilineTextAlignment(.center)
                    } .background (
                        Capsule()
                            .strokeBorder(Color.white,lineWidth: 0)
                            .background(.black)
                            .cornerRadius(20)
                    ) // MARK: - TEXTEDITOR CON PLACEHOLDER
                    
                    ZStack (alignment: .topLeading){ // MARK: why?
                    
                        RoundedRectangle(cornerRadius: 8,style: .continuous)
                            .fill(.white)
                        
                        TextEditor(text: $thoughts)
                            .disableAutocorrection(true)
                            .padding(.leading, 4)
                        
                        if
                            thoughts.isEmpty {
                            Text("Write about your feelings")
                                .foregroundColor(.gray)
                                .padding(.top,12)
                                .padding(.leading,8)
                        }
                }
                    .frame(width: 360, height: 109)
                    .cornerRadius(16)
                    
                    Spacer()
            }
        }
       // MARK: - NAVIGATION BAR ITEMS
            .navigationBarItems(leading: HStack
            {
                Button {
                    print("Back tapped")
                    withAnimation(){}
                } label: {
                    
                    Text("Back")
                }
            },trailing:
                                    HStack{
                Button(action: {
                    print("Archive")
                } , label: {
                    NavigationLink(destination: Archive()
                        .navigationBarBackButtonHidden(false))
                    {
                        Text("Add")
                    }
                }).disabled(thoughts.isEmpty)
                        
                }) //MARK: NAVIGATION BAR ITEMS
        }
    }
}

struct AcceptChallenge_Previews: PreviewProvider {
   
    static var previews: some View {
        
        AcceptChallenge()
    }
}
