//
//  ContentView.swift
//  lecture6
//
//  Created by Chloe Lin on 10/20/22.
//

import SwiftUI

struct ContentView: View {
    @State var age: Int = 1
    @State var name: String = "Kalaoe"
    var body: some View {
        NavigationView {
            VStack {
                Text(name)
                Text(String(age))
                
                NavigationLink(destination: editProfileView(age: $age, name: $name))
                {Text("Edit Profile")}
            }
        }
    }
}

struct editProfileView: View {
    @Binding var age: Int
    @Binding var name: String
    
    var body: some View {
        VStack {
            TextField("Enter your name: ", text: $name)
                .textFieldStyle(.roundedBorder)
                .frame(maxWidth: 250)
            
            TextField("Enter your age: ", value: $age, format: .number)
                .textFieldStyle(.roundedBorder)
                .frame(maxWidth: 250)
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
