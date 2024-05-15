//
//  TeamsStruct.swift
//  SportsU
//
//  Created by Oscar Epp on 5/14/24.
//

import Foundation

struct Team: Equatable{
    let name: String
    let symbolName: String
}

let mensTeams = [
    Team(name: "Baseball", symbolName: "figure.baseball"),
    Team(name: "Mens Basketball", symbolName: "figure.basketball"),
    Team(name: "Football", symbolName: "figure.american.football"),
    Team(name: "Mens Golf", symbolName: "figure.golf"),
    Team(name: "Mens Tennis", symbolName: "figure.tennis"),
    
    Team(name: "Track and Field", symbolName: "figure.track.and.field"),
    Team(name: "Cross Country", symbolName: "figure.run"),
    Team(name: "All", symbolName: "sportscourt.fill")

]
let womensTeams = [
    Team(name: "Acrobatics & Tumbling", symbolName: "figure.yoga"),
    Team(name: "Womens Basketball", symbolName: "figure.basketball"),
    Team(name: "Beach Volleyball", symbolName: "figure.volleyball"),
    Team(name: "Womens Golf", symbolName: "figure.golf"),
    Team(name: "Lacrosse", symbolName: "figure.lacrosse"),
    Team(name: "Soccer", symbolName: "figure.soccer"),
    Team(name: "Softball", symbolName: "figure.softball"),
    Team(name: "Womens Tennis", symbolName: "figure.tennis"),
    Team(name: "Volleyball", symbolName: "figure.volleyball"),

    Team(name: "Track and Field", symbolName: "figure.track.and.field"),
    Team(name: "Cross Country", symbolName: "figure.run"),
    Team(name: "All", symbolName: "sportscourt.fill")

]

