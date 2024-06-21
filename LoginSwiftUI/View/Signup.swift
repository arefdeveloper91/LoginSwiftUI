//
//  Signup.swift
//  LoginSwiftUI
//
//  Created by Aref Chucri on 21/06/24.
//

import SwiftUI

struct Signup: View {
    @Binding var showSignUP: Bool
    @State private var emailId : String = ""
    @State private var fullName: String = ""
    @State private var password : String = ""
    
    var body: some View{
        
        VStack(alignment : .leading, spacing: 15, content: {
                
            
            // botao de voltar
            
            Button(action: {
                showSignUP = false
            }, label: {
             Image(systemName: "arrow left")
                    .font(.title2)
                    .foregroundStyle(.green)
            })
            
            .padding(.top, 10)
            
            
            
            Text("SignUP")
                .font(.largeTitle)
                .fontWeight(.heavy)
                .padding(.top, 25)
            
            
            
            Text ("Por favor continue")
                .font(.callout)
                .fontWeight(.semibold)
                .foregroundStyle(.blue)
                .padding(.top, -5)
            
            VStack(spacing: 25){
                CustomTF(sfIcon: "at", hint: "email ID",value: $emailId)
                CustomTF(sfIcon: "person", hint: "fullName",  value: $fullName)
                    .padding(.top, 5)
                
                CustomTF(sfIcon: "lock", hint: "Password", isPassword: true, value: $password)
                    .padding(.top, 5)
                
                
                
                GradientButton(title: "continue", icon: "arrow.right") {
                    
                }
                .hSpacing(. trailing)
              
            }
            .padding(.top, 20)
            
            Spacer(minLength: 0)
            
           
            HStack(spacing : 6){
                Text("vai criar a conta?")
                    .foregroundStyle(.black)
                
                Button("signUP"){
                    showSignUP = false
                    
                }
                .fontWeight(.bold)
                .tint(.green)
            }
            .font(.callout)
            .hSpacing()
            
            
        })
        .padding(.vertical, 15)
        .padding(.horizontal, 25)
        .toolbar(.hidden, for: .navigationBar)
    }
    
}

#Preview {
    ContentView()
}
