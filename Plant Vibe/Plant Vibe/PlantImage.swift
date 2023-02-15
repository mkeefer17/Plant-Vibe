//
//  PlantImage.swift
//  Plant Vibe
//
//  Created by Marie Keefer on 2/3/23.
//

import SwiftUI

struct PlantImage: View {
//    @State private var plantImage = [PlantData]()
    
    @State var plantData: PlantData
    var width = 100.0
    var height = 100.0
    var body: some View {
        HStack {
            
            if plantData.image != nil {
                AsyncImage(url: URL(string: plantData.image!)) { phase in
                    if let image = phase.image {
                        image.resizable()
                            .scaledToFill()
                            .frame(width: width, height: height)
                            .clipped()
                    } else if phase.error != nil {
                        Image("three_plants")
                            .frame(width: width, height: height)
                    } else {
                        ProgressView()
                            .frame(width: width, height: height)
                    }
                    
                }
//                VStack {
//                    Text(plantData.commonName != nil ? plantData.commonName!: "")
//                    Text(plantData.category != nil ? plantData.category!: "")
//                }
            }
             
        }
    }
}

//struct PlantImage_Previews: PreviewProvider {
//    static var previews: some View {
//        PlantImage(plantImage:)
//    }
//}
