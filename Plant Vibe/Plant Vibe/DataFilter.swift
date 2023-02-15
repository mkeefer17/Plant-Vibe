//
//  DataFilter.swift
//  Plant Vibe
//
//  Created by Marie Keefer on 2/6/23.
//

import SwiftUI
import Foundation


struct DataFilter {
//    @State var plantData: PlantData
//
//    @State var selectedLightOption = "Select"
//    @State var selectedWaterOption = "Select"
//    @State var selectedColorOption = "Select"
    
    let lightChoice1: String = "I get some sunlight during the day"
    let lightChoice2: String = "I get sunlight for most of the day"
    let lightChoice3: String = "I get bright light for most of the day"
    
    let lighting1: String = "Diffuse light ( Less than 5,300 lux / 500 fc)"
    let lighting2: String = "Strong light ( 21,500 to 3,200 lux/2000 to 300 fc)"
    let lighting3: String = "Full sun (+21,500 lux /+2000 fc )"
    
    let waterChoice1: String = "I often forget to water my plants"
    let waterChoice2: String = "I usually remember to water my plants"
    let waterChoice3: String = "My plants are rarely under-watered"
    
    let watering1: String = "Must dry between watering & Water only when dry"
    let watering2: String = "Water when soil is half dry & Can dry between watering"
    let watering3: String = "Keep moist between watering & Can dry between watering"
    let watering4: String = "Keep moist between watering & Water when soil is half dry"
    let watering5: String = "Keep moist between watering & Must not dry between watering"
    let watering6: String = "Change water regularly in the cup & Water when soil is half dry"
    let watering7: String = "Water when soil is half dry & Change water regularly in the cup"
    
    let colorChoice1: String = "Green"
    let colorChoice2: String = "Colorful"
    let colorChoice3: String = "Either"
//    var body: some View {
    func filter(plantData: [PlantData], selectedLightOption: String, selectedWaterOption: String, selectedColorOption: String) -> [PlantData] {
//        var plantCount = 0
        
//        for plant in plantData {
//              if selectedLightOption == lightChoice1 {
//                  if plant.lightTolerated == lighting1 {
//                      filtered(
        return plantData.filter {plant in
            if (selectedLightOption == lightChoice1 && selectedWaterOption == waterChoice1 && selectedColorOption == colorChoice1) {
                
                if ((plant.lightTolerated == lighting1) && (plant.watering == watering1 || plant.watering == watering2) && (plant.leafColor?.count == 1)) {
                    return true
                }
            }
            if (selectedLightOption == lightChoice1 && selectedWaterOption == waterChoice1 && selectedColorOption == colorChoice2) {

                if ((plant.lightTolerated == lighting1) && (plant.watering == watering1 || plant.watering == watering2) && (plant.leafColor?.count == 2)) {
                    return true
                }
            }
            if (selectedLightOption == lightChoice1 && selectedWaterOption == waterChoice1 && selectedColorOption == colorChoice3) {

                if ((plant.lightTolerated == lighting1) && (plant.watering == watering1 || plant.watering == watering2) && (plant.leafColor?.count == 2)) {
                    return true
                }
            }
            if (selectedLightOption == lightChoice1 && selectedWaterOption == waterChoice2 && selectedColorOption == colorChoice1) {

                if ((plant.lightTolerated == lighting1) && (plant.watering == watering3 || plant.watering == watering4) && (plant.leafColor?.count == 1)) {
                    return true
                }
            }
            if (selectedLightOption == lightChoice1 && selectedWaterOption == waterChoice2 && selectedColorOption == colorChoice2) {

                if ((plant.lightTolerated == lighting1) && (plant.watering == watering3 || plant.watering == watering4) && (plant.leafColor?.count == 2)) {
                    return true
                }
            }
            if (selectedLightOption == lightChoice1 && selectedWaterOption == waterChoice2 && selectedColorOption == colorChoice3) {

                if ((plant.lightTolerated == lighting1) && (plant.watering == watering3 || plant.watering == watering4) && (plant.leafColor?.count == 2)) {
                    return true
                }
            }
            if (selectedLightOption == lightChoice1 && selectedWaterOption == waterChoice3 && selectedColorOption == colorChoice1) {

                if ((plant.lightTolerated == lighting1) && (plant.watering == watering5 || plant.watering == watering6 || plant.watering == watering7) && (plant.leafColor?.count == 1)) {
                    return true
                }
            }
            if (selectedLightOption == lightChoice1 && selectedWaterOption == waterChoice3 && selectedColorOption == colorChoice2) {

                if ((plant.lightTolerated == lighting1) && (plant.watering == watering5 || plant.watering == watering6 || plant.watering == watering7) && (plant.leafColor?.count == 2)) {
                    return true
                }
            }
            if (selectedLightOption == lightChoice1 && selectedWaterOption == waterChoice3 && selectedColorOption == colorChoice3) {

                if ((plant.lightTolerated == lighting1) && (plant.watering == watering5 || plant.watering == watering6 || plant.watering == watering7) && (plant.leafColor?.count == 2)) {
                    return true
                }
            }
            if (selectedLightOption == lightChoice2 && selectedWaterOption == waterChoice1 && selectedColorOption == colorChoice1) {

                if ((plant.lightTolerated == lighting2) && (plant.watering == watering1 || plant.watering == watering2) && (plant.leafColor?.count == 1)) {
                    return true
                }
            }
            if (selectedLightOption == lightChoice2 && selectedWaterOption == waterChoice1 && selectedColorOption == colorChoice2) {

                if ((plant.lightTolerated == lighting2) && (plant.watering == watering1 || plant.watering == watering2) && (plant.leafColor?.count == 2)) {
                    return true
                }
            }
            if (selectedLightOption == lightChoice2 && selectedWaterOption == waterChoice1 && selectedColorOption == colorChoice3) {

                if ((plant.lightTolerated == lighting2) && (plant.watering == watering1 || plant.watering == watering2) && (plant.leafColor?.count == 2)) {
                    return true
                }
            }
            if (selectedLightOption == lightChoice2 && selectedWaterOption == waterChoice2 && selectedColorOption == colorChoice1) {

                if ((plant.lightTolerated == lighting2) && (plant.watering == watering3 || plant.watering == watering4) && (plant.leafColor?.count == 1)) {
                    return true
                }
            }
            if (selectedLightOption == lightChoice2 && selectedWaterOption == waterChoice2 && selectedColorOption == colorChoice2) {

                if ((plant.lightTolerated == lighting2) && (plant.watering == watering3 || plant.watering == watering4) && (plant.leafColor?.count == 2)) {
                    return true
                }
            }
            if (selectedLightOption == lightChoice2 && selectedWaterOption == waterChoice2 && selectedColorOption == colorChoice3) {

                if ((plant.lightTolerated == lighting2) && (plant.watering == watering3 || plant.watering == watering4) && (plant.leafColor?.count == 2)) {
                    return true
                }
            }
            if (selectedLightOption == lightChoice2 && selectedWaterOption == waterChoice3 && selectedColorOption == colorChoice1) {

                if ((plant.lightTolerated == lighting2) && (plant.watering == watering5 || plant.watering == watering6 || plant.watering == watering7) && (plant.leafColor?.count == 1)) {
                    return true
                }
            }
            if (selectedLightOption == lightChoice2 && selectedWaterOption == waterChoice3 && selectedColorOption == colorChoice2) {

                if ((plant.lightTolerated == lighting2) && (plant.watering == watering5 || plant.watering == watering6 || plant.watering == watering7) && (plant.leafColor?.count == 2)) {
                    return true
                }
            }
            if (selectedLightOption == lightChoice2 && selectedWaterOption == waterChoice3 && selectedColorOption == colorChoice3) {

                if ((plant.lightTolerated == lighting2) && (plant.watering == watering5 || plant.watering == watering6 || plant.watering == watering7) && (plant.leafColor?.count == 2)) {
                    return true
                }
            }
            if (selectedLightOption == lightChoice3 && selectedWaterOption == waterChoice1 && selectedColorOption == colorChoice1) {

                if ((plant.lightTolerated == lighting3) && (plant.watering == watering1 || plant.watering == watering2) && (plant.leafColor?.count == 1)) {
                    return true
                }
            }
            if (selectedLightOption == lightChoice3 && selectedWaterOption == waterChoice1 && selectedColorOption == colorChoice2) {

                if ((plant.lightTolerated == lighting3) && (plant.watering == watering1 || plant.watering == watering2) && (plant.leafColor?.count == 2)) {
                    return true
                }
            }
            if (selectedLightOption == lightChoice3 && selectedWaterOption == waterChoice1 && selectedColorOption == colorChoice3) {

                if ((plant.lightTolerated == lighting3) && (plant.watering == watering1 || plant.watering == watering2) && (plant.leafColor?.count == 2)) {
                    return true
                }
            }
            if (selectedLightOption == lightChoice3 && selectedWaterOption == waterChoice2 && selectedColorOption == colorChoice1) {

                if ((plant.lightTolerated == lighting3) && (plant.watering == watering3 || plant.watering == watering4) && (plant.leafColor?.count == 1)) {
                    return true
                }
            }
            if (selectedLightOption == lightChoice3 && selectedWaterOption == waterChoice2 && selectedColorOption == colorChoice2) {

                if ((plant.lightTolerated == lighting3) && (plant.watering == watering3 || plant.watering == watering4) && (plant.leafColor?.count == 2)) {
                    return true
                }
            }
            if (selectedLightOption == lightChoice3 && selectedWaterOption == waterChoice2 && selectedColorOption == colorChoice3) {

                if ((plant.lightTolerated == lighting3) && (plant.watering == watering3 || plant.watering == watering4) && (plant.leafColor?.count == 2)) {
                    return true
                }
            }
            if (selectedLightOption == lightChoice3 && selectedWaterOption == waterChoice3 && selectedColorOption == colorChoice1) {

                if ((plant.lightTolerated == lighting3) && (plant.watering == watering5 || plant.watering == watering6 || plant.watering == watering7) && (plant.leafColor?.count == 1)) {
                    return true
                }
            }
            if (selectedLightOption == lightChoice3 && selectedWaterOption == waterChoice3 && selectedColorOption == colorChoice2) {

                if ((plant.lightTolerated == lighting3) && (plant.watering == watering5 || plant.watering == watering6 || plant.watering == watering7) && (plant.leafColor?.count == 2)) {
                    return true
                }
            }
            if (selectedLightOption == lightChoice3 && selectedWaterOption == waterChoice3 && selectedColorOption == colorChoice3) {

                if ((plant.lightTolerated == lighting3) && (plant.watering == watering5 || plant.watering == watering6 || plant.watering == watering7) && (plant.leafColor?.count == 2)) {
                    return true
                }
            }
            if (selectedLightOption == "Select" && selectedWaterOption == "Select" && (selectedColorOption == colorChoice3 || selectedColorOption == colorChoice2)) {

                if (plant.leafColor?.count == 2) {
                    return true
                }
            }
            if (selectedLightOption == "Select" && selectedWaterOption == "Select" && (selectedColorOption == colorChoice1)) {

                if (plant.leafColor?.count == 1) {
                    return true
                }
            }
            if (selectedLightOption == "Select" && selectedWaterOption == waterChoice1 && selectedColorOption == "Select") {

                if (plant.watering == watering1 || plant.watering == watering2) {
                    return true
                }
            }
            if (selectedLightOption == "Select" && selectedWaterOption == waterChoice2 && selectedColorOption == "Select") {

                if (plant.watering == watering3 || plant.watering == watering4) {
                    return true
                }
            }
            if (selectedLightOption == "Select" && selectedWaterOption == waterChoice3 && selectedColorOption == "Select") {

                if (plant.watering == watering5 || plant.watering == watering6 || plant.watering == watering7) {
                    return true
                }
            }
            if (selectedLightOption == lightChoice1 && selectedWaterOption == "Select" && selectedColorOption == "Select") {

                if (plant.lightTolerated == lighting1) {
                    return true
                }
            }
            if (selectedLightOption == lightChoice2 && selectedWaterOption == "Select" && selectedColorOption == "Select") {

                if (plant.lightTolerated == lighting2) {
                    return true
                }
            }
            if (selectedLightOption == lightChoice3 && selectedWaterOption == "Select" && selectedColorOption == "Select") {

                if (plant.lightTolerated == lighting3) {
                    return true
                }
            }
            if (selectedLightOption == "Select" && selectedWaterOption == waterChoice1 && selectedColorOption == "Select") {

                if (plant.watering == watering1 || plant.watering == watering2) {
                    return true
                }
            }
            if (selectedLightOption == "Select" && selectedWaterOption == "Select" && selectedColorOption == "Select") {

                if (plant.lightTolerated == lighting1 || plant.lightTolerated == lighting2 || plant.lightTolerated == lighting3 || plant.watering == watering1 || plant.watering == watering2 || plant.watering == watering3 || plant.watering == watering4 || plant.watering == watering5 || plant.watering == watering6 || plant.watering == watering7 || plant.leafColor?.count == 1 || plant.leafColor?.count == 2) {
                    return true
                }
            }

            return false

        }
        
    }
    
}

//struct DataFilter_Previews: PreviewProvider {
//    static var previews: some View {
//        DataFilter()
//    }
//}
//            plantCount += 1
//            return plantCount <= 5
