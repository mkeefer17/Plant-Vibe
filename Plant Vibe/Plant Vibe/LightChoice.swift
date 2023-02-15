//
//  lightChoice.swift
//  Plant Vibe
//
//  Created by Marie Keefer on 2/1/23.
//

import SwiftUI

struct LightChoice: Identifiable {
    let name: String
    let font: Font
    var id: String { name }
}

let lightChoices : [LightChoice] = [
    LightChoice(name: "I get some sunlight during the day", font: .body),
    LightChoice(name: "I get sunlight for most of the day", font: .body),
    LightChoice(name: "I get bright light for most of the day", font: .body)
]
