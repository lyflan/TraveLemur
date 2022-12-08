//
//  EnvObjectDemo.swift
//  lecture6
//
//  Created by Chloe Lin on 10/20/22.
//

import SwiftUI

class Pet: ObservableObject {
    @Published var animal: String
    @Published var name: String
    @Published var age: Int
    var imageName: String
    //@Published var update: Bool
    
    init(animalType: String, animalName: String, animalAge: Int, imageName: String) {
        self.animal = animalType
        self.name = animalName
        self.age = animalAge
        self.imageName = imageName
        //self.update = false
    }
}

struct EnvObjDemo: View {
    @StateObject var myPet: Pet = Pet(animalType: "duck", animalName: "鴨", animalAge: 16, imageName: "duck")
    
    var body: some View {
        VStack {
            displayPetView()
        }
        .environmentObject(myPet)
    }
}

struct displayPetView: View {
    @EnvironmentObject var myPet: Pet
    
    var body: some View {
        VStack {
            HStack {
                Text(myPet.animal)
                Text(myPet.name)
                Text(String(myPet.age))
            }
            
            Image(myPet.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
            
            Button("Increment Age") {
                myPet.age += 1
            }
            
            Button("Decrement Age") {
                if myPet.age > 0 {
                        myPet.age -= 1
                }
            }
            
            /*Button("Update") {
                myPet.update.toggle()
            }*/
        }
    }
}

struct EnvObjDemo_Previews: PreviewProvider {
    static var previews: some View {
        EnvObjDemo()
    }
}
