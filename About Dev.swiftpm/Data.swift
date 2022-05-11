//
//  Data.swift
//  About Dev
//
//  Created by Ricky Memije on 4/15/22.
//
import SwiftUI
import Foundation

struct ViewText {
    let homeTitleText: String
    let homeSubtitle: String
    let lifeEventTitleText: String
    let devQuoteTitleText: String
    let whosDevTitleText: String
}

struct PersonBio {
    
    let name: String
    let shortBio: String
    let sports: [String]
    let hobbies: [String]
    let movies: [String]
    let foods: [String]
}

struct LifeEvent: Identifiable {
    var id: Int
    let year: String
    let image: String
    let description: String
}

struct Quote {
    let quote: String
}

let viewText = ViewText (
    homeTitleText: "About Dev",
    homeSubtitle: "Who, What, Where is Dev?",
    lifeEventTitleText: "Life Events",
    devQuoteTitleText: "Dev's Quote",
    whosDevTitleText: "Whos Dev")

let ricksQuote = Quote(
    quote: "\"Place holder. Write your quote.\""
)

let person1 = PersonBio (
    name:"Name",
    shortBio: "Short bio.",
    sports: ["FootBall"," Golf", "Boxing"],
    hobbies: ["R/C Building", "3D Printing"],
    movies: ["The Lord Of The Rings Trilogy", "Star Wars Saga"],
    foods: ["Pastas", "Stake"]
)


let lifeEvents: [LifeEvent] = [
    .init(id: 0, year: "2012", image: "PersonIcon", description: "Short description"),
    .init(id: 1, year: "2012", image: "PersonIcon", description: "Short description"),
    .init(id: 2, year: "2012", image: "PersonIcon", description: "Short description"),
    .init(id: 3, year: "2012", image: "PersonIcon", description: "Short description"),
    .init(id: 4, year: "2012", image: "PersonIcon", description: "Short description"),
    
]
