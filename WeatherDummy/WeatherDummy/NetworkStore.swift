//
//  NetworkStore.swift
//  WeatherDummy
//
//  Created by Anuja Dilrukshi on 2023-02-17.
//

import Foundation
 
class NetworkStore: ObservableObject{
    
   @Published var weatherData: WeatherDataModel?
    
    private var baseURL = "https://api.openweathermap.org/data/2.5/weather?&appid=\(APIConstants.KEY)&units=metric"
    
    func fetchData(cityName : String) async {
        var urlString = " \(baseURL)&q=\(cityName)".addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)  ?? ""
        
        //URL
        guard let url = URL(string: urlString ) else {
            print ("Invalid URL")
            return
        }
        
        //URL Session
        do{
            
            let (data, _) = try await URLSession.shared.data(from: url)
            
            //Decode
            let decodableData = try! JSONDecoder().decode(WeatherDTO.self, from:data)
            //let response = try! JSONDecoder().decode(ProductResponse.self, from: json)
            //print(decodableData.weather) // Only contains banana.

            
            DispatchQueue.main.async {
                self.weatherData = WeatherDataModel(name: decodableData.name,
                                                    description: decodableData.weather[0].description,
                                                    temp: decodableData.main.temp,
                                                    pressure: decodableData.main.pressure,
                                                    humidity: decodableData.main.humidity,
                                                    feelsLike: decodableData.main.feelsLike,
                                                    visibility: decodableData.visibility,
                                                    windSpeed: decodableData.wind.speed,
                                                    cloudPercentage: decodableData.clouds.all)
            }
            
        }catch{
            print("Decoding Failed")
            
        }
    }
    
    //https://api.openweathermap.org/data/2.5/weather?&appid=92e088805ae763b70464f1af8a2934d5&units=metric&q=colombo
}
