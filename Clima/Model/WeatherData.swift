//
//  WeatherData.swift
//  Clima
//
//  Created by Jacob Tamayo on 4/14/22.
//

import Foundation

struct WeatherData: Decodable {
    let name: String
    let main: Main
    let weather: [Description]
}

struct Main: Decodable {
    let temp: Double
}

struct Description: Decodable {
    let description: String
    let id: Int
}
