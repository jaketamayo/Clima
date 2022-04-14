//
//  ViewController.swift
//  Clima
//
//  Created by Jacob Tamayo on 4/12/22.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate{

    @IBOutlet var searchTextField: UITextField!
    @IBOutlet var imageViewSymbol: UIImageView!
    @IBOutlet var weatherTempLabel: UILabel!
    
    let weatherModel = WeatherModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Text field will report back to the view controller when user enters something
        searchTextField.delegate = self
    }

    @IBAction func searchTextFieldPressed(_ sender: UITextField) {
        print(searchTextField.text!)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        searchTextField.endEditing(true)
        searchTextField.text = ""
        return true
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        //Unwrapping the optional and passing in the city name into WeatherModel fetch func
        if let city = searchTextField.text {
            weatherModel.fetchWeatherData(cityName: city)
        }
    }
    
    
}

