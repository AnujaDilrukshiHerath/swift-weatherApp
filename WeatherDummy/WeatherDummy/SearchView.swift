//
//  SearchView.swift
//  WeatherDummy
//
//  Created by Anuja Dilrukshi on 2023-02-17.
//

import SwiftUI

struct SearchView: View {
    @State var cityName: String = ""
    var body: some View {
        ScrollView{
            VStack(alignment: .leading) {
                Text("Weather")
                    .font(.largeTitle)
                    .bold()
                
                HStack{
                    TextField("City Name", text: $cityName)
                        .textFieldStyle(.roundedBorder)
                    
                    Button{
                        //Button Action
                        
                    } label: {
                        Text("Search")
                    }
                }
                
                HStack{
                    WeatherConditionView(image: "aqi.low", title: "Broken Clouds", subTitle: "Current Status")
                    
                    WeatherConditionView(image: "thermometer.sun.fill", title: "25.5", subTitle: "Temperature")
                    
                    
                }
                
                
                HStack{
                    WeatherConditionView(image: "humidity.fill", title: "64.0", subTitle: "Humidity")
                    
                    WeatherConditionView(image: "digitalcrown.horizontal.press.fill", title: "1013.0", subTitle: "Pressure")
                    
                }
                
                
                HStack{
                    WeatherConditionView(image: "sun.haze.fill", title: "100000.0", subTitle: "Visibility")
                    
                    WeatherConditionView(image: "wind.circle.fill", title: "3.05", subTitle: "Wind speed")
                    
                }
                
                
                HStack{
                    WeatherConditionView(image: "cloud.sun", title: "68.0", subTitle: "Clouds")
                    
                    Spacer()
                }
                
                
                
            }.padding()
            
        }
    }
    
}
        
        struct SearchView_Previews: PreviewProvider {
            static var previews: some View {
                SearchView()
            }
        }
        
        struct WeatherConditionView: View {
            var image: String = ""
            var title: String = ""
            var subTitle: String = ""
            
            var body: some View {
                ZStack{
                    RoundedRectangle(cornerRadius: 20)
                        .frame(width: UIScreen.main.bounds.width * 0.45, height: 200)
                        .foregroundColor(.gray)
                        .opacity(0.4)
                    
                    VStack(spacing: 20){
                        Image(systemName: image)
                            .font(.system(size: 50))
                        
                        Text(title)
                            .font(.system(size: 20))
                            .bold()
                        
                        Text(subTitle)
                        
                    }
                }
            }
        }


