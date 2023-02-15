//
//  waterChoice.swift
//  Plant Vibe
//
//  Created by Marie Keefer on 2/1/23.
//

import SwiftUI

struct WaterChoice: Identifiable {
    let name: String
    let font: Font
    var id: String { name }
}

let waterChoices : [WaterChoice] = [
    WaterChoice(name: "I often forget to water my plants", font: .body),
    WaterChoice(name: "I usually remember to water my plants", font: .body),
    WaterChoice(name: "My plants are rarely under-watered", font: .body)
]
