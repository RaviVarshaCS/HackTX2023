//
//  HomeView.swift
//  Capturing Photos
//
//  Created by Harsheni Siddharthan on 10/22/23.
//

import Foundation
import SwiftUI

struct ProfileView: View {
    
    var body: some View{
        NavigationView() {
            VStack{
                VStack {
                    Image("selfie")
                        .resizable()
                        .frame(width: 50, height: 50)
                    Text("WOOPEEEEE")
                }.frame(minHeight: 0, maxHeight: .infinity)
                
                HStack{
                    NavigationLink(){
                        HomeView()
                    }label: {
                        Image("bottomTab")
                    }
                    NavigationLink(){
                        ProfileView()
                    }label: {
                        Image("bottomTab-1")
                    }
                    NavigationLink(){
                        BookmarksView()
                    }label: {
                        Image("bottomTab-2")
                    }
                }            }
            .navigationBarBackButtonHidden(true)
            
            
            
        }
    }
    
}
