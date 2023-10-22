//
//  OtterView.swift
//  hacktx2023
//
//  Created by Casey Charleston on 10/22/23.
//

import Foundation
import SwiftUI

struct OtterView: View {
    @Binding var showingNotice: Bool
    
    var body: some View{
        VStack {
            Image("otterblox")
                .transition(.scale)
                .onAppear(perform: {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 2, execute: {
                        self.showingNotice = false
                    })})
        }
    }
}
