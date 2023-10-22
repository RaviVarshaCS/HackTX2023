//
//  HomeView.swift
//  Capturing Photos
//
//  Created by Harsheni Siddharthan on 10/22/23.
//

import Foundation
import SwiftUI

struct HomeView: View {
    @State private var isLoading = false
    @State private var showProject1Screen = false
    @State private var showProject2Screen = false
    @State private var showProject3Screen = false
    
    var body: some View{
        NavigationView() {
            VStack{
                
                
                //project buttons
                VStack {
                    NavigationLink() {
                        ImagePickerView()
                    } label: {
                        Image("dribbble_2")
                            .resizable()
                            .frame(width: 110, height:110)
                        Text("New Project")
                    }
                    
                    HStack{
                        Image("imagePlaceholder")
                            .resizable()
                            .frame(width: 110, height:110)
                        Text("Project 1\nMy first OtterBlox project! Yippee!!!")
                    }
                    
                    .contentShape(Rectangle())
                    .onTapGesture{
                        
                    }
                    
                    HStack{
                        Image("imagePlaceholder-1")
                            .resizable()
                            .frame(width: 110, height:110)
                        Text("My Friend Capybara\nBig Sis helped me build a capybara. Capybaras are so cute. Did you know they are the biggest rodents on Earth? They’re so much cuter than rats.")
                    }
                    
                    .contentShape(Rectangle())
                    .onTapGesture{
                        
                    }
                    
                    HStack{
                        Image("imagePlaceholder-2")
                            .resizable()
                            .frame(width: 110, height:110)
                        Text("I went to London Bridge\nI went to visit granny in London. I wonder why she loves tea so much.")
                    }
                    .contentShape(Rectangle())
                    .onTapGesture{
                        
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
