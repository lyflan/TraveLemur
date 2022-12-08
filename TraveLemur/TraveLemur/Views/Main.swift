//
//  Main.swift
//  TraveLemur
//
//  Created by Chloe Lin on 12/7/22.
//

import SwiftUI

struct Main: View {
    var body: some View {
        ZStack {
            Color("bgcolor").ignoresSafeArea()
            VStack {
                Text("Albums")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(Color("dark"))
                    .padding(.top)
                Image("main")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding(.bottom)
                    .frame(width: UIScreen.main.bounds.size.width/4, height: UIScreen.main.bounds.size.width/4)
                VStack {
                    HStack {
                        VStack {
                            Image("paris")
                                .resizable()
                                .cornerRadius(10)
                                        .overlay(RoundedRectangle(cornerRadius: 10)
                                            .stroke(lineWidth: 0))
                                        .shadow(radius: 10)
                                .aspectRatio(contentMode: .fit)
                                .frame(width: UIScreen.main.bounds.size.width/2)
                            Text("Paris, France")
                                .foregroundColor(Color("dark"))
                                .padding()
                            Spacer()
                        }
                        VStack {
                            Image("bali")
                                .resizable()
                                .cornerRadius(10)
                                        .overlay(RoundedRectangle(cornerRadius: 10)
                                            .stroke(lineWidth: 0))
                                        .shadow(radius: 10)
                                .aspectRatio(contentMode: .fit)
                                .frame(width: UIScreen.main.bounds.size.width/2)
                            
                            Text("Bali, Indonesia")
                                .foregroundColor(Color("dark"))
                                .padding()
                            Spacer()
                        }
                    }
                    HStack {
                        VStack {
                            Image("tokyo")
                                .resizable()
                                .cornerRadius(10)
                                        .overlay(RoundedRectangle(cornerRadius: 10)
                                            .stroke(lineWidth: 0))
                                        .shadow(radius: 10)
                                .aspectRatio(contentMode: .fit)
                                .frame(width: UIScreen.main.bounds.size.width/2)
                            Text("Tokyo, Japan")
                                .foregroundColor(Color("dark"))
                                .padding()
                            Spacer()
                        }
                        VStack {
                            Image("new")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .padding(.all, 50)
                                .frame(width: UIScreen.main.bounds.size.width/2, height: UIScreen.main.bounds.size.width/2)
                                .opacity(0.5)
                            Text("Create New Album")
                                .foregroundColor(Color("dark"))
                                .padding()
                            Spacer()
                        }
                    }
                }
                .padding(.all)
                
                Spacer()
            }
        }
    }
}

struct Main_Previews: PreviewProvider {
    static var previews: some View {
        Main()
    }
}
