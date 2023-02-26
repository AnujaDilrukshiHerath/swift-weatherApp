//
//  WeatherDataModel.swift
//  WeatherDummy
//
//  Created by Anuja Dilrukshi on 2023-02-17.
//

import Foundation

struct WeatherDataModel {
    let name: String
    let description: String
    let temp: Double
    let pressure: Int
    let humidity: Int
    let feelsLike: Double
    let visibility: Int
    let windSpeed: Double
    let cloudPercentage: Int
    
    var formattefTemp: String{
        return String(format: "%.1f", temp)
    }


}
