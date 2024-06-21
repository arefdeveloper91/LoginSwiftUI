//
//  GradientButton.swift
//  LoginSwiftUI
//
//  Created by Aref Chucri on 21/06/24.
//

import SwiftUI

struct GradientButton: View {
    
    var title : String
    var icon: String
    var onClick: () -> ()
    var body: some View {
        Button(action: onClick, label: {
            HStack(spacing:15){
                Text(title)
                Image(systemName: icon)
            }
            .fontWeight(.bold)
            .foregroundStyle(.blue)
            .padding(.vertical,12)
            .padding(.horizontal,35)
            .background(.linearGradient(colors: [ .orange, .red], startPoint: .top, endPoint: .bottom), in: .capsule)
            
            
        })
    }
}

#Preview {
    ContentView()
}
