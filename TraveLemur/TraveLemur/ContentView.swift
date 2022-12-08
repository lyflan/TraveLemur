//
//  ContentView.swift
//  TraveLemur
//
//  Created by Chloe Lin on 12/7/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            Main()
                .tabItem() {
                    Image(systemName: "photo")
                    Text("Main")
                }
            Friends()
                .tabItem() {
                    Image(systemName: "person.3.fill")
                    Text("Friends")
                }
            BucketList()
                .tabItem() {
                    Image(systemName: "checklist")
                    Text("Bucket List")
                }
            Profile()
                .tabItem() {
                    Image(systemName: "person.fill")
                    Text("Profile")
                }
        }
        .accentColor(Color("dark"))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
