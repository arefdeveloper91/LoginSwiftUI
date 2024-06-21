//
//  Login.swift
//  LoginSwiftUI
//
//  Created by Aref Chucri on 21/06/24.
//

import SwiftUI

struct Login: View {
    @Binding var showSignUP: Bool
    @State private var emailId : String = ""
    @State private var password : String = ""
    @State private var showForgotPasswordView: Bool = false
    @State private var showResetView: Bool = false
    var body: some View{
        
        VStack(alignment : .leading, spacing: 15, content: {
            Spacer(minLength: 0)
            Text("login")
                .font(.largeTitle)
                .fontWeight(.heavy)
            
            
            
            Text ("sign In to continue")
                .font(.callout)
                .fontWeight(.semibold)
                .foregroundStyle(.blue)
                .padding(.top, -5)
            
            VStack(spacing: 25){
                CustomTF(sfIcon: "at", hint: "email ID",value: $emailId)
                CustomTF(sfIcon: "lock", hint: "Password", isPassword: true, value: $password)
                    .padding(.top, 5)
                
                Button("Forgot Password"){
                    showForgotPasswordView.toggle()
                    
                    
                }
                
                .font(.callout)
                .fontWeight(.heavy)
                .tint(.green)
                .hSpacing(.trailing)
                
                
                
                GradientButton(title: "login", icon: "arrow.right") {
                    
                    
                    
                }
                .hSpacing(. trailing)
                
            }
            .padding(.top, 20)
            
            Spacer(minLength: 0)
            
            
            HStack(spacing : 6){
                Text("dont have account?")
                    .foregroundStyle(.black)
                
                Button("signUP"){
                    showSignUP.toggle()
                    
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
        .sheet(isPresented: $showForgotPasswordView, content: {
            if #available(iOS 16.4, *){
                
                
                ForgotPassword(showResetView: $showResetView)
                    .presentationDetents([.height(300)])
                    .presentationCornerRadius(30)
                
            }else{
                ForgotPassword(showResetView: $showResetView)
                    .presentationDetents([.height(300)])
            }
        })
        
        .sheet(isPresented: $showResetView, content: {
            if #available(iOS 16.4, *){
                
                
                PasswordResetView()
                    .presentationDetents([.height(350)])
                    .presentationCornerRadius(30)
                
            }else{
                PasswordResetView()
                    .presentationDetents([.height(350)])
            }
            
        })
        
    }
    
}
        
        #Preview {
            ContentView()
        }
        
        
        
    
