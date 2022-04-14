//
//  WeatherSwitch.swift
//  Clima
//
//  Created by Jacob Tamayo on 4/14/22.
//

import Foundation

struct WeatherSwitch {
    let conditionID: Int
    let cityName: String
    let temperature: Double
    
    //Computed property that formats the temperature to only 1 decimal
    var temperatureString: String {
        return String(format: "%.1f", temperature)
    }
    
    //Computer property to switch and check what condition the weather is that the user searches for.
    //Will use this to update the icon in the ViewController.
    var conditionName: String {
        switch conditionID {
        case 200...232:
            return "cloud.bolt.rain"
        case 300...321:
            return "cloud.drizzle"
        case 500...531:
            return "cloud.heavyrain"
        case 600...622:
            return "cloud.snow"
        case 701...781:
            return "smoke"
        case 800:
            return "sun.max"
        case 801...804:
            return "cloud.bolt"
        default:
            return "cloud"
        }
    }
    
//    func getConditionName(weatherID: Int) -> String {
//        switch weatherID {
//        case 200...232:
//            return "cloud.bolt.rain"
//        case 300...321:
//            return "cloud.drizzle"
//        case 500...531:
//            return "cloud.heavyrain"
//        case 600...622:
//            return "cloud.snow"
//        case 701...781:
//            return "smoke"
//        case 800:
//            return "sun.max"
//        case 801...804:
//            return "cloud.bolt"
//        default:
//            return "cloud"
//        }
//    }
}
