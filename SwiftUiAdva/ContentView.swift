//
//  ContentView.swift
//  SwiftUiAdva
//
//  Created by Elena Zobak on 7/11/23.
//

import SwiftUI
import CoreData

struct ContentView: View {
    
    @State private var email: String = ""
    @State private var password: String = ""

    var body: some View {
        
        ZStack {
            Image("background-3")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                VStack(alignment: .leading, spacing: 16) {
                    Text("Sign up")
                        .font(Font.largeTitle.bold())
                        .foregroundColor(.white)
                    Text("Access to 120+ hours of courses, tutorials, and livestreams")
                        .font(.subheadline)
                        .foregroundColor(Color.white
                            .opacity(0.7))
                    HStack (spacing: 12.0) {
                        Image(systemName: "envelope.open.fill")
                            .foregroundColor(.white  )
                        TextField("Email", text: $email)
                            .colorScheme(.dark)
                            .foregroundColor(Color.white.opacity(0.7))
                            .textInputAutocapitalization(.none)
                            .textContentType(.emailAddress)
                    }
                    .frame(height: 52)
                    .overlay(RoundedRectangle(cornerRadius: 16)
                        .stroke(Color.white,
                                lineWidth: 1.0)
                            .blendMode(.overlay)
                    )
                    .background(
                    Color("secondaryBackground")
                        .cornerRadius(16.0)
                        .opacity(0.8)
                    )
                }
                .padding(20)
            }
            .background(
            RoundedRectangle(cornerRadius: 30)
                .stroke(Color.white.opacity(0.2))
                .background(Color("secondaryBackground")
                    .opacity(0.5))
                .background(VisualEffectBlur(blurStyle: .systemThinMaterialDark))
                .shadow(color: Color("shadowColor").opacity(0.5), radius: 16, x: 0, y: 30)
                
            )
            .cornerRadius(30.0)
            .padding(.horizontal)
        }
       
    }

}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
