//
//  ContentView.swift
//  Plant Vibe
//
//  Created by Marie Keefer on 1/23/23.
//

import SwiftUI

import Foundation
func apiCall() {


let headers = [
    "X-RapidAPI-Key": "0d17fc57bdmsh5e451d882d79b81p151531jsn694d3e8a032a",
    "X-RapidAPI-Host": "house-plants2.p.rapidapi.com"
]

let request = NSMutableURLRequest(url: NSURL(string: "https://house-plants2.p.rapidapi.com/all")! as URL,
                                        cachePolicy: .useProtocolCachePolicy,
                                    timeoutInterval: 10.0)
request.httpMethod = "GET"
request.allHTTPHeaderFields = headers

let session = URLSession.shared
let dataTask = session.dataTask(with: request as URLRequest, completionHandler: { (data, response, error) -> Void in
    if (error != nil) {
        print(error!)
    } else {
        let httpResponse = response as? HTTPURLResponse
        print(httpResponse!)

//        comment out
//        if let data = data, let dataString = String(data: data, encoding: .utf8) {
//                print("Response data string:\n \(dataString)")
//            }
//        comment out^^^
        if let data = data {
            PlantData.plantDecoder(data: data)
        }

    }
})

dataTask.resume()
}


// JSON Decoding
struct PlantData: Codable {
    var image: String?
    var category: String?
    var commonName: String?
    var watering: String?
    var lightTolerated: String?
    var lightIdeal: String?
    var leafColor: [String]?
    
    
    enum CodingKeys: String, CodingKey {
        case image = "Img"
        case category = "Categories"
        case commonName = "Common name (fr.)"
        case watering = "Watering"
        case lightTolerated = "Light tolered"
        case lightIdeal = "Light ideal"
        case leafColor = "Color of leaf"
            
        }
  
    
    static func plantDecoder(data: Data) -> [PlantData]? {
        let decoder = JSONDecoder()
        do {
            let plants = try decoder.decode([PlantData].self, from: data)
            let string = String.init(data: data, encoding: .utf8)
            return plants
        } catch {
            print(error)
        }
        
//        print(plants?[1].category as Any)
//        print(plants as Any)
        return nil
    }
    
}

// ------- Original file code ------
struct ContentView: View {
    // create state variable
    
    @State var isLightExpanded = false
    @State var selectedLightOption = "Select"
    @State var isWaterExpanded = false
    @State var selectedWaterOption = "Select"
    @State var isColorExpanded = false
    @State var selectedColorOption = "Select"
    var body: some View {
            
            // ------- drop down -------
        NavigationView {
            VStack {
                VStack {
                    Image("header_logo2")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .padding(.top)
//                                Spacer()
                }
                Text("Please answer the following prompts:")
                    .font(.body)
                    .padding()
                Text("Describe the light in your living space:")
                    .font(.title3)
                DisclosureGroup("\(selectedLightOption)", isExpanded: $isLightExpanded) {
                    VStack {
                        ForEach(lightChoices) { lightChoice in
                            Text("\(lightChoice.name)")
                                .font(.body)
                                .padding(.all)
                                .onTapGesture {
                                    self.selectedLightOption = lightChoice.name
                                    withAnimation {
                                        self.isLightExpanded.toggle()
                                    }
                                    
                                }
                        }
                        
                    }
                }.accentColor(.white)
                    .font(.body)
                    .foregroundColor(.white)
                    .padding(.all)
                    .background(CustomColor.color2)
                    .cornerRadius(8)
                    .padding(.all)
                
                VStack {
                    Text("Describe your watering habits:")
                        .font(.title3)
                    DisclosureGroup("\(selectedWaterOption)", isExpanded: $isWaterExpanded) {
                        VStack {
                            ForEach(waterChoices) { waterChoice in
                                Text("\(waterChoice.name)")
                                    .font(.body)
                                    .padding(.all)
                                    .onTapGesture {
                                        self.selectedWaterOption = waterChoice.name
                                        withAnimation {
                                            self.isWaterExpanded.toggle()
                                        }
                                        
                                    }
                            }
                            
                        }
                    }.accentColor(.white)
                        .font(.body)
                        .foregroundColor(.white)
                        .padding(.all)
                        .background(CustomColor.color3)
                        .cornerRadius(8)
                        .padding(.all)
                    
                    VStack {
                        Text("Which leaf color do you prefer?")
                            .font(.title3)
                        DisclosureGroup("\(selectedColorOption)", isExpanded: $isColorExpanded) {
                            VStack {
                                ForEach(colorChoices) { colorChoice in
                                    Text("\(colorChoice.name)")
                                        .font(.body)
                                        .padding(.all)
                                        .onTapGesture {
                                            self.selectedColorOption = colorChoice.name
                                            withAnimation {
                                                self.isColorExpanded.toggle()
                                            }
                                            
                                        }
                                }
                                
                                //
                            }
                        }.accentColor(.white)
                            .font(.body)
                            .foregroundColor(.white)
                            .padding(.all)
                            .background(CustomColor.color4)
                            .cornerRadius(8)
                            .padding(.all)
                    }
                        NavigationLink(destination: HomePage(color: selectedColorOption, light: selectedLightOption, water: selectedWaterOption), label: {
                            Text("Submit")
                                .frame(width: 200, height: 50)
                                .foregroundColor(.white)
                                .background(CustomColor.color5)
                                .cornerRadius(8)
                            
                        })
                    
                    
                }
                
            }
        }
    }
        
        
        struct ContentView_Previews: PreviewProvider {
            static var previews: some View {
                ContentView()
            }
        }
    }

