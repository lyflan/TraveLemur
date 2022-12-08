//
//  formDemo.swift
//  lecture6
//
//  Created by Chloe Lin on 10/20/22.
//

import SwiftUI

struct formDemo: View {
    var body: some View {
        VStack {
            Group {
                Text("Hello world!")
                Text("Hello world!")
                Text("Hello world!")
                Text("Hello world!")
                Text("Hello world!")
                Text("Hello world!")
                Text("Hello world!")
                Text("Hello world!")
                Text("Hello world!")
                Text("Hello world!")
            }
            Text("Hello world!")
            
            
            Form {
                Text("Hi")
                Text("Hey")
                Text("Whats up")
                Text("YO")
                Text("duck")
                Text("Hello")
            }
        }
    }
}

struct formDemo_Previews: PreviewProvider {
    static var previews: some View {
        formDemo()
    }
}
