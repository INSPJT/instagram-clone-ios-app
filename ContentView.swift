//
//  ContentView.swift
//
//  Created by 황지웅 on 2021/02/28.
//
//

import SwiftUI

struct ContentView: View {
    //@State
    let people: [Person] = [
        Person(name: "mrGlasses", image: "sm-laptop"),
        Person(name: "Glasses", image: "sm-laptop-drawing"),
        Person(name: "mres", image: "sm-puzzle")
    ]
    var body: some View {
        GeometryReader{geometry in
            let colWidth = geometry.size.width / 3
            
            TabView{
                NavigationView{
                    VStack{
                    //nav!!
                        NavView(colWidth: colWidth)
                        ScrollView{
                            VStack{
                                NewsView()
                                    .padding(.leading, 10)
                                    .padding(.trailing, 10)
                                    .padding(.bottom, 15)
                                StoryView(people: people)
                                    .padding(.bottom, 15)
                                    .padding(.leading, 15)
                                FollowingBodyView(people: people, colWidth: colWidth)
                                .padding(.leading, 10)
                                .padding(.trailing, 10)
                                .padding(.bottom, 15)
                            }
                        }
                    }
                    .navigationBarHidden(true)
                }
                
                .tabItem {
                    Image(systemName: "house.fill")
                }
                NavigationView{
                    VStack{
                    
                    }
            
                }
                .tabItem {
                    Image(systemName:   "magnifyingglass")
                }
                NavigationView{
                    VStack{
                        
                    }
            
                }
                .tabItem {
                    Image(systemName: "camera")
                
                }
                NavigationView{
                    VStack{
                    
                    }
            
                }
                .tabItem {
                    Image(systemName: "heart")
                }
                NavigationView{
                    VStack{
                    
                    }
            
                }
                .tabItem {
                    Image(systemName: "person")
                }
            }
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
