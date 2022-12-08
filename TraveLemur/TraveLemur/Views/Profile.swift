//
//  Profile.swift
//  TraveLemur
//
//  Created by Chloe Lin on 12/7/22.
//

import SwiftUI

struct Profile: View {
    var body: some View {
        ZStack {
            Color("bgcolor").ignoresSafeArea()
            VStack() {
                Text("Profile")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(Color("dark"))
                    .padding(.top)
                Image("profile")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding(.bottom)
                    .frame(width: UIScreen.main.bounds.size.width/4, height: UIScreen.main.bounds.size.width/4)
                
                VStack(alignment: .leading)
                {
                    
                    Text("Name")
                        .foregroundColor(Color("dark"))
                    
                    Text("    FirstName LastName")
                        .opacity(0.8)
                        .foregroundColor(Color("dark"))
                        .multilineTextAlignment(.leading)
                        .frame(width: 300, height: 40, alignment: .leading)
                        .background(
                            RoundedRectangle(cornerRadius: 20)
                            .foregroundColor(Color("midtone")))
                    
                    Text("Nickname")
                        .foregroundColor(Color("dark"))
                        .padding(.top, 30)
                    Text("    cubstart22")
                        .opacity(0.8)
                        .foregroundColor(Color("dark"))
                        .multilineTextAlignment(.leading)
                        .frame(width: 300, height: 40, alignment: .leading)
                        .background(
                            RoundedRectangle(cornerRadius: 20)
                            .foregroundColor(Color("midtone")))
                    
                    Text("Date of Birth")
                        .foregroundColor(Color("dark"))
                        .padding(.top, 30)
                    Text("    1 January 2000")
                        .opacity(0.8)
                        .foregroundColor(Color("dark"))
                        .multilineTextAlignment(.leading)
                        .frame(width: 300, height: 40, alignment: .leading)
                        .background(
                            RoundedRectangle(cornerRadius: 20)
                            .foregroundColor(Color("midtone")))
                    Spacer()
                }

                
                Spacer()
            }
        }
    }
}

struct Profile_Previews: PreviewProvider {
    static var previews: some View {
        Profile()
    }
}
