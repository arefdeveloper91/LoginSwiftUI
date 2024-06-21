//
//  ContentView.swift
//  LoginSwiftUI
//
//  Created by Aref Chucri on 21/06/24.
//

import SwiftUI

struct ContentView: View {
    
    
    
    @State private var showSignUP: Bool = false
    var body: some View {
        NavigationStack {
            Login(showSignUP: $showSignUP)
            
                .navigationDestination(isPresented: $showSignUP){
                    Signup(showSignUP: $showSignUP)
                    
                }
            
        }
        .overlay {
            if #available(iOS 17, *) {
                
                CircleView()
                    .animation(.smooth(duration: 0.45, extraBounce: 0), value: showSignUP)
                
            }else{
                CircleView()
                    .animation(.easeOut(duration: 0.3), value: showSignUP)
                
            }
            
           
        }
    }
    
    @ViewBuilder
    func CircleView() -> some View {
        Circle()
            .fill(.linearGradient(colors: [.blue, .green], startPoint: .top, endPoint: .bottom))
            .frame(width: 200, height: 200)
            .offset(x: showSignUP ? 90 : -90 , y: -90)
            .blur(radius: 15)
            .hSpacing(showSignUP ? .trailing: .leading)
            .vSpacing(.top)
    }
}

#Preview {
    ContentView()
}
