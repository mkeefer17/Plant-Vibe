//
//  progress.swift
//  Plant Vibe
//
//  Created by Marie Keefer on 1/26/23.
//

//import Foundation
//
//import SwiftUI
//
//import Foundation
//func apiCall() {
//    
//
//let headers = [
//    "X-RapidAPI-Key": "0d17fc57bdmsh5e451d882d79b81p151531jsn694d3e8a032a",
//    "X-RapidAPI-Host": "house-plants2.p.rapidapi.com"
//]
//
//let request = NSMutableURLRequest(url: NSURL(string: "https://house-plants2.p.rapidapi.com/all")! as URL,
//                                        cachePolicy: .useProtocolCachePolicy,
//                                    timeoutInterval: 10.0)
//request.httpMethod = "GET"
//request.allHTTPHeaderFields = headers
//
//let session = URLSession.shared
//let dataTask = session.dataTask(with: request as URLRequest, completionHandler: { (data, response, error) -> Void in
//    if (error != nil) {
//        print(error!)
//    } else {
//        let httpResponse = response as? HTTPURLResponse
//        print(httpResponse!)
//
////        comment out
////        if let data = data, let dataString = String(data: data, encoding: .utf8) {
////                print("Response data string:\n \(dataString)")
////            }
////        comment out^^^
//        if let data = data {
//            PlantData.plantDecoder(data: data)
//        }
//        
//    }
//})
//
//dataTask.resume()
//}
//
//// JSON Decoding
//struct PlantData: Codable {
//    var image: String?
//    var category: String?
//    var commonName: String?
//    var watering: String?
//    var lightTolerated: String?
//    var lightIdeal: String?
//    
//    
//    enum CodingKeys: String, CodingKey {
//        case image = "Img"
//        case category = "Categories"
//        case commonName = "Common name (fr.)"
//        case watering = "Watering"
//        case lightTolerated = "Light tolered"
//        case lightIdeal = "Light ideal"
//            
//        }
//  
//    
//    static func plantDecoder(data: Data) {
//        let decoder = JSONDecoder()
//        let plants = try? decoder.decode([PlantData].self, from: data)
//        print(plants?[0].category! as Any)
//    }
//    
//}
//
//
//
//
//
//
//
//
//
//
//// ------- Original file code ------
//struct ContentView: View {
//    // create state variable
//    @State private var plants = [PlantData]()
//    var body: some View {
//        NavigationView {
//            List(plants, id: \.commonName) { plant in
//                VStack(alignment: .leading) {
//                    Text((plant.image ?? plant.image)!)
//                        .font(.headline)
//                    Text((plant.category ?? plant.category)!)
//                        .font(.body)
//                }
//                //            VStack {
//                //                Image("header_logo")
//                //                    .resizable()
//                //                    .aspectRatio(contentMode: .fit)
//                //                    .padding(.top)
//                //                Spacer()
//                //            }.onAppear(perform: apiCall)
//            }
//            .navigationTitle("Plants")
//            .task {
//                await fetchData()
//            }
//            
//            
//        }
//    }
//    func fetchData() async {
//        guard let url = URL(string: "https://house-plants2.p.rapidapi.com/all") else {
//            print("This URL does not work")
//            return
//        }
//        do {
//            let (data, _) = try await URLSession.shared.data(from: url)
//            
//            if let decodedResponse = try? JSONDecoder().decode([PlantData].self, from: data) {
//                plants = decodedResponse
//            }
//        } catch {
//            print("data is invalid")
//        }
//    }
//    
//    struct ContentView_Previews: PreviewProvider {
//        static var previews: some View {
//            ContentView()
//        }
//    }
//}








//      --- drop down ---
//        VStack {
//            Text("Drop down menu").font(.title)
//            Menu {
//                Button(action: { }, label: {
//                    Text("Do you have any pets?")
//                })
//                Button(action: { }, label: {
//                    Text("How's the lighting in your living space?")
//                })
//                Button(action: { }, label: {
//                    Text("Describe your watering habits:")
//                })
//            } label: {
//                Label(
//                    title: {Text("Options")},
//                    icon: {Image(systemName: "plus")}
//                )
//            }
//        }
//       --- drop down ^^^ ---
