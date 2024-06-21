//
//  ForgotPassword.swift
//  LoginSwiftUI
//
//  Created by Aref Chucri on 21/06/24.
//

import SwiftUI

struct ForgotPassword: View {
    @Binding var showResetView: Bool
    @State private var emailId : String = ""
   
    @Environment(\.dismiss) private var dismiss
    var body: some View{
        
        VStack(alignment : .leading, spacing: 15, content: {
                
            
            // botao de voltar
            
            Button(action: {
                dismiss()
            }, label: {
             Image(systemName: "arrow left")
                    .font(.title2)
                    .foregroundStyle(.green)
            })
            
            .padding(.top, 10)
            
            
            
            Text("Forgot Password")
                .font(.largeTitle)
                .fontWeight(.heavy)
                .padding(.top, 25)
            
            
            
            Text ("entre com seu Email ID depois vc reseta o link")
                .font(.callout)
                .fontWeight(.semibold)
                .foregroundStyle(.blue)
                .padding(.top, -5)
            
            VStack(spacing: 25){
                CustomTF(sfIcon: "at", hint: "email ID",value: $emailId)
               
                
                
                
                GradientButton(title: "send link", icon: "arrow.right") {
                    
                    Task{
                        dismiss()
                        try? await Task.sleep(for: .seconds(0))
                        
                        showResetView = true
                    }
                    
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
