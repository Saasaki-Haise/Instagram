//
//  ContentView.swift
//  Instagram
//
//  Created by Haise on 28/01/2020.
//  Copyright © 2020 Haise. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView() {
            TabView {
                PostView()
                    .tabItem {
                        Image(systemName: "folder.fill")
                        Text("First")
                }
                Text("")
                    .tabItem {
                        Image(systemName: "magnifyingglass")
                        Text("Second")
                }
                Text("")
                    .tabItem {
                        Image(systemName: "plus.square")
                        Text("Third")
                }
                Text("")
                    .tabItem {
                        Image(systemName: "heart")
                        Text("Fourth")
                }
                Text("")
                    .tabItem {
                        Image(systemName: "person.circle.fill")
                        Text("Five")
                }
            }
                
            .navigationBarItems(leading: Button(action: {}) {
                Image(systemName: "plus")
            }, trailing: Button(action: {}) {
                Image(systemName: "location")
            } )
                .navigationBarTitle(Text("Instagram"), displayMode: .inline)
            
            
            
            
        }
}
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
