//
//  ContentView.swift
//  hacktx2023
//
//  Created by Harsheni Siddharthan on 10/21/23.
//

import SwiftUI

struct ContentView: View {
    @State private var isLoading = false
    @State private var showProject1Screen = false
    @State private var showProject2Screen = false
    @State private var showProject3Screen = false
    
    var body: some View{
        VStack{
            VStack{
                //STEAM buttons
                HStack{
                    
                    Button{
                        /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                    }label: {
                        Image("export1 1")
                    }
                    Button{
                        /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                    }label: {
                        Image("export 3")
                    }
                    Button{
                        /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                    }label: {
                        Image("export2 1")
                    }
                    Button{
                        /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                    }label: {
                        Image("export4 1")
                    }
                    Button{
                        /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                    }label: {
                        Image("export3 1")
                    }
                }
            }
            
            //project buttons
            VStack {
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
            }
            
            HStack{
                
                Button{
                    /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                }label: {
                    Image("bottomTab")
                }
                Button{
                    /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                }label: {
                    Image("bottomTab-1")
                }
                Button{
                    /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                }label: {
                    Image("bottomTab-2")
                }
                Button{
                    /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                }label: {
                    Image("bottomTab-3")
                }
                Button{
                    /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                }label: {
                    Image("bottomTab-4")
                }
            }
        }
        
        
        
    }
        
    
}

#Preview {
    ContentView()
}
