//
//  BucketList.swift
//  TraveLemur
//
//  Created by Chloe Lin on 12/7/22.
//

import SwiftUI

struct BucketList: View {
    var body: some View {
        ZStack {
            Color("bgcolor").ignoresSafeArea()
            VStack {
                Text("Bucket List")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(Color("dark"))
                    .padding(.top)
                Image("bucketlist")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding(.bottom)
                    .frame(width: UIScreen.main.bounds.size.width/4, height: UIScreen.main.bounds.size.width/4)
                
                HStack(alignment: .top) {
                    Text("Places to Visit...")
                        .font(.title2)
                        .foregroundColor(Color("dark"))
                        .padding([.top, .leading,], 30.0)
                        .frame(height: 75)
                    Spacer()
                    Image("new")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .padding([.top, .leading, .trailing])
                        .frame(width: 60, height: 78)
                }
                .padding(.trailing, 20.0)
                VStack {
                    Text("\n   ☑  New York City, New York\n   □  Tokyo, Japan\n   □  Rome, Italy")
                        .foregroundColor(Color("dark"))
                        .multilineTextAlignment(.leading)
                        .frame(width: 330, height: 150, alignment: .topLeading)
                        .background(
                            RoundedRectangle(cornerRadius: 20)
                            .foregroundColor(Color("midtone")))
                    Spacer()
                }
                
                HStack {
                    Text("Must-See Locations/Attractions...")
                        .font(.title2)
                        .foregroundColor(Color("dark"))
                        .padding([.top, .leading, .trailing], 30.0)
                    Spacer()
                    Image("new")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .padding(.all)
                        .frame(width: 60, height: 80)
                }
                .padding(.trailing, 20.0)
                
                VStack {
                    Text("\n   ☑  Central Park (NYC)\n   □  Harajuku Station (Tokyo)\n   □  Roman Colosseum (Rome)")
                        .foregroundColor(Color("dark"))
                        .multilineTextAlignment(.leading)
                        .frame(width: 330, height: 150, alignment: .topLeading)
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

struct BucketList_Previews: PreviewProvider {
    static var previews: some View {
        BucketList()
    }
}
