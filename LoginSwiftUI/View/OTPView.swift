//
//  OTPView.swift
//  LoginSwiftUI
//
//  Created by Aref Chucri on 21/06/24.
//

import SwiftUI

struct OTPView: View {
    @Binding var otpText: String
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
            
            
            
            Text("Entre OTP")
                .font(.largeTitle)
                .fontWeight(.heavy)
                .padding(.top, 25)
            
            
            
            Text ("digite os 6 numeros do ID")
                .font(.callout)
                .fontWeight(.semibold)
                .foregroundStyle(.blue)
                .padding(.top, -5)
            
            VStack(spacing: 25){
                
               
                
                
                
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
