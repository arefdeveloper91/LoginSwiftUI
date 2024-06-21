//
//  PasswordResetView.swift
//  LoginSwiftUI
//
//  Created by Aref Chucri on 21/06/24.
//

import SwiftUI
struct PasswordResetView: View {
        @State private var password : String = ""
        @State private var confirmpassword : String = ""
       
        @Environment(\.dismiss) private var dismiss
        var body: some View{
            
            VStack(alignment : .leading, spacing: 15, content: {
                    
                
                // botao de voltar
                
                Button(action: {
                    dismiss()
                }, label: {
                 Image(systemName: "xmark")
                        .font(.title2)
                        .foregroundStyle(.green)
                })
                
                .padding(.top, 10)
                
                
                
                Text("Reset Password")
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .padding(.top, 25)
                
                
                
                VStack(spacing: 25){
                    CustomTF(sfIcon: "lock", hint: "Password",value: $password)
                   
                    CustomTF(sfIcon: "lock", hint: "Confirm Password",value: $confirmpassword)
                        .padding(.top,5)
                    
                    
                    GradientButton(title: "send link", icon: "arrow.right") {
                        
                        
                        
                    }
                    .hSpacing(. trailing)
                    
                  
                }
                .padding(.top, 20)
                
               
                
                
            })
            .padding(.vertical, 15)
            .padding(.horizontal, 25)
            
            .interactiveDismissDisabled()
            
            
            
            }
        
    }


#Preview {
    ContentView()
}
