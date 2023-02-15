//
//  HomePage.swift
//  Plant Vibe
//
//  Created by Marie Keefer on 1/27/23.
//

import SwiftUI
import Foundation

struct HomePage: View {
    var color: String
    var light: String
    var water: String
    @State private var plants = [PlantData]()
    @State private var isLoading = false
    
    var body: some View {
//        ProgressView()
        VStack {
            if (plants.count == 0) {
                ProgressView()
                    .progressViewStyle(CircularProgressViewStyle(tint: CustomColor.color4))
                    .scaleEffect(2)
                Text("\nCreating your plant vibe...")
            } else {
                List(plants, id: \.image ) { plant in
                    HStack {
                        PlantImage(plantData: plant)
                        VStack(alignment: .center) {
                            Text(plant.category ?? "")
                                .font(.title3)
                            
                            Text(((plant.commonName != nil) ? plant.commonName!: ""))
                                .font(.body)
                                .padding()
                            NavigationLink(destination: DetailView(plants: plant)) {
                                
                    
                            }
                            
                        }
                        
                    }
                   
                
                }
            }
        }
        
        
        
        .navigationTitle("Results")
        .task {
            await fetchData()
            
            
        }
        
        //            Spacer()
        
        
    }
    func fetchData() async {
        print(light)
        print(water)
        print(color)
        
        let plantData = await apiCall()
        
        if let plantData = plantData {
            let dataFilter = DataFilter()
            plants = dataFilter.filter(plantData: plantData, selectedLightOption: light, selectedWaterOption: water, selectedColorOption: color)
        } 
        
    }
    
}
    
    struct HomePage_Previews: PreviewProvider {
        static var previews: some View {
            HomePage(color: "", light: "", water: "")
        }
    }
    
    

