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
                        .frame(width: 300, height: 300)
                    Text("My Profile")
                    Text("Silly Points: 10,0000")
                    Text("You are doing quite silly, my friend")
                    VStack {
                        Text("Your Projects")
                        Image("8780")
                            .resizable()
                            .frame(width: 100, height: 100)
                    }
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
