//
//  HomeView.swift
//  Capturing Photos
//
//  Created by Harsheni Siddharthan on 10/22/23.
//

import Foundation
import SwiftUI

struct BookmarksView: View {
    
    var body: some View{
        NavigationView(){
            VStack{
                HStack{
                    Image("Obie")
                }
                ScrollView{
                    VStack {
                        
                        HStack{
                            Image("Rectangle 21")
                                .resizable()
                                .frame(width: 110, height:110)
                            Text("To the Moon!\nSusie has dreamed of becoming an astronaut since she was a little girl. Help her make her dreams come true by building her a working rocket ship using motors!\nRead more")
                        }
                        HStack{
                            Image("image 8")
                                .resizable()
                                .frame(width: 110, height:110)
                            Text("Tom and Annie meet a monster during their camping trip. Help them build a light display to scare the monster away!\nRead more")
                        }
                        
                        HStack{
                            Image("image 9")
                                .resizable()
                                .frame(width: 110, height:110)
                            Text("The Texas State Fair needs your help to build its new Ferris wheel. How will you design the best fair attraction possible?\nRead more")
                        }
                        
                        HStack{
                            Image("imagePlaceholder")
                                .resizable()
                                .frame(width: 110, height:110)
                            Text("Our lovely mascot Obie the Otter has been awfully lonely lately. Make your own Obie so he can feel a little less alone in the world!\nRead more")
                        }
                    }
                }
                
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
                }
            }
            .navigationBarBackButtonHidden(true)
            .navigationTitle("Bookmarks")
        }
    }
}
