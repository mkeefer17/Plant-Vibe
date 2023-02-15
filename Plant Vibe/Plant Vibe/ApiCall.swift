
//  ApiCall.swift
//  Plant Vibe
//
//  Created by Marie Keefer on 1/25/23.


import Foundation

func apiCall() async -> [PlantData]? {


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
    do {
        let (data,_) = try await session.data(for: request as URLRequest)
        

    //        comment out
    //        if let data = data, let dataString = String(data: data, encoding: .utf8) {
    //                print("Response data string:\n \(dataString)")
    //            }
    //        comment out^^^
            
                return PlantData.plantDecoder(data: data)
            
    
    

    } catch {
        print("data is invalid")
    }
return nil

}



//func fetchData() async {
//    guard let url = URL(string: "https://house-plants2.p.rapidapi.com/all")
//    else {
//        print("This URL does not work")
//        return
//    }
//    do {
//        let (data, _) = try await URLSession.shared.data(from: url)
//
//        if let decodedResponse = try? JSONDecoder().decode([PlantData].self, from: data) {
//            plants = decodedResponse
//        }
//    }
//    }
//
//}
