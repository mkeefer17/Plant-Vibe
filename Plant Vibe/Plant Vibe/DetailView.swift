//
//  DetailView.swift
//  Plant Vibe
//
//  Created by Marie Keefer on 2/7/23.
//

import SwiftUI

struct DetailView: View {
    @State var plants: PlantData
    var body: some View {
        List {
            VStack {
                PlantImage(plantData: plants, width: 225, height: 275)
                
                Text(plants.category!)
                    .font(.title2)
                    .padding()
                HStack {
                    Text("Common\nName:")
                        .frame(maxWidth: .infinity, alignment: .leading)
                    Text(plants.commonName != nil ? plants.commonName!: "")
                        .font(.body)
                        .frame(maxWidth: .infinity, alignment: .center)
                }
                HStack {
                    Text("Watering:")
                        .frame(maxWidth: .infinity, alignment: .leading)
                    Text(plants.watering!)
                        .font(.body)
                        .frame(maxWidth: .infinity, alignment: .center)
                        .padding()
                }
                HStack {
                    Text("Light\nRequirements:")
                        .frame(maxWidth: .infinity, alignment: .leading)
                    Text(plants.lightTolerated!)
                        .font(.body)
                        .frame(maxWidth: .infinity, alignment: .center)
                        .padding()
                }
                
                
            }
        }
    }
    
    //    struct DetailView_Previews: PreviewProvider {
    //        static var previews: some View {
    //            DetailView()
    //        }
    //    }
    //}
}
