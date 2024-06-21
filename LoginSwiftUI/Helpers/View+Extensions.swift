//
//  View+Extensions.swift
//  LoginSwiftUI
//
//  Created by Aref Chucri on 21/06/24.
//

import SwiftUI

extension View {
    
    
    @ViewBuilder
    
    func hSpacing(_ alignment: Alignment = .center) -> some View{
        self
        
            .frame(maxWidth: .infinity, alignment: alignment)
        
    }
    
    @ViewBuilder
    
    func vSpacing(_ alignment: Alignment = .center) -> some View{
        self
        
            .frame(maxHeight: .infinity, alignment: alignment)
        
        
        // desabilitar com opacity
        
    
        
        
        
        
        
        
    }
}
