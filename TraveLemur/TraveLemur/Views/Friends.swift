//
//  Friends.swift
//  TraveLemur
//
//  Created by Chloe Lin on 12/7/22.
//

import SwiftUI

struct Friends: View {
    var body: some View {
        ZStack {
            Color("bgcolor").ignoresSafeArea()
            VStack {
                Text("My Friends")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(Color("dark"))
                    .padding(.top)
                Image("friends")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding(.bottom)
                    .frame(width: UIScreen.main.bounds.size.width/4, height: UIScreen.main.bounds.size.width/4)
                Text("Check out Sarah's latest post!")
                    .font(.title2)
                    .foregroundColor(Color("dark"))
                    .padding(.top)
                    
                Image("sarah")
                    .resizable()
                    .cornerRadius(30)
                            .overlay(RoundedRectangle(cornerRadius: 10)
                                .stroke(lineWidth: 0))
                            .padding([.leading, .bottom, .trailing], 60.0)
                            .shadow(radius: 10)
                    .aspectRatio(contentMode: .fit)
                
                
                Text("Shared With You")
                    .font(.title2)
                    .foregroundColor(Color("dark"))
                
                HStack(alignment: .top) {
                    VStack {
                        Image("matt")
                            .resizable()
                            .cornerRadius(10)
                                    .overlay(RoundedRectangle(cornerRadius: 10)
                                        .stroke(lineWidth: 0))
                            .aspectRatio(contentMode: .fit)
                        Text("Matt's Album: Manawatu-Wanganui, New Zealand")
                            .foregroundColor(Color("dark"))
                            .lineLimit(2)
                    }
                    VStack {
                        Image("georgie")
                            .resizable()
                            .cornerRadius(10)
                                    .overlay(RoundedRectangle(cornerRadius: 10)
                                        .stroke(lineWidth: 0))
                            .aspectRatio(contentMode: .fit)
                        Text("Georgie's Album: Florence, Italy")
                            .foregroundColor(Color("dark"))
                            .lineLimit(2)
                    }
                    VStack {
                        Image("vanessa")
                            .resizable()
                            .cornerRadius(10)
                                    .overlay(RoundedRectangle(cornerRadius: 10)
                                        .stroke(lineWidth: 0))
                            .aspectRatio(contentMode: .fit)
                        Text("Vanessa's Album: Nanao, Japan")
                            .foregroundColor(Color("dark"))
                            .lineLimit(2)
                    }
                }
                .padding(.horizontal)
                    
                    
                
                Spacer()
            }
        }
    }
}

struct Friends_Previews: PreviewProvider {
    static var previews: some View {
        Friends()
    }
}
