//
//  WeatherModel.swift
//  Clima
//
//  Created by Jacob Tamayo on 4/13/22.
//

import UIKit

struct WeatherModel {
    let apiKey = "https://api.openweathermap.org/data/2.5/weather?&units=imperial&appid=ed0252d3965824ae84e1ac29f52acc12"
    
    func fetchWeatherData(cityName: String) {
        //when the user enters in a city it will be passed into cityName
        let urlString = "\(apiKey)&q=\(cityName)"
        performRequest(urlString: urlString)
    }
    
    func performRequest(urlString: String) {
        //1. Create a URL object
        let url = URL(string: urlString)!
        
        //2. Create a URLSession
        let session = URLSession(configuration: .default)
        
        //3. Give URLSession a task
        let task = session.dataTask(with: url) { data, response, error in
            if error != nil {
                print(error!)
                return
            }
            
            if let safeData = data {
                self.parseJSON(weatherData: safeData)
            }
        }
        //4. Start task
        task.resume()
    }
    
    func parseJSON(weatherData: Data) {
        let decoder = JSONDecoder()
        do {
            let decodedData = try decoder.decode(WeatherData.self, from: weatherData)
        } catch {
            print(error)
        }
    }
}
    
    
    
    
    
    
    
    
    
    
    
    
//    func handle(data: Data?, response: URLResponse?, error: Error?) {
//        //Check to see if error does not equal nil
//        if error != nil {
//            print(error!)
//            return //an empty return will break out of this conditonal
//        }
//
//        if let safeData = data {
//            let dataString = String(data: safeData, encoding: .utf8)
//            print(dataString!)
//        }
//    }

