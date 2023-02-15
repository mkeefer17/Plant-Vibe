//
//  colorChoice.swift
//  Plant Vibe
//
//  Created by Marie Keefer on 2/1/23.
//

import SwiftUI

struct ColorChoice: Identifiable {
    
    let name: String
    let font: Font
    var id: String { name }
}

let colorChoices : [ColorChoice] = [
    ColorChoice(name: "Green", font: .body),
    ColorChoice(name: "Colorful", font: .body),
    ColorChoice(name: "Either", font: .body)
]
