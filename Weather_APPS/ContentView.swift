//
//  ContentView.swift
//  Weather_APPS
//
//  Created by JEREMIA CARLO on 05/04/22.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isNight = false
    
    var body: some View {
        ZStack { // background color
            BackgroundView(topColor: isNight ? .black : .blue, bottomColor: isNight ? .gray : Color("lightBlue"))
            VStack {

                CityTextView(cityName: "Jakarta, JKT")
                   
                Text("Jeremia Carlo")
                    .font(.system(size: 24, weight: .medium, design: .default))
                    .foregroundColor(.white)
                
                MainWeatherStatusView(imageName: "cloud.sun.rain.fill", temperature: 32)
                
                Spacer()
                
                HStack(spacing: 10) {
                    WeatherDayView(dayOfWeek: "SUN",
                                   imageName: "cloud.sun.rain.fill",
                                   temperature: 24)
                    WeatherDayView(dayOfWeek: "MON",
                                   imageName: "sun.dust.fill",
                                   temperature: 26)
                    WeatherDayView(dayOfWeek: "TUE",
                                   imageName: "cloud.heavyrain.fill",
                                   temperature: 28)
                    WeatherDayView(dayOfWeek: "WED",
                                   imageName: "cloud.heavyrain.fill",
                                   temperature: 26)
                    WeatherDayView(dayOfWeek: "THU",
                                   imageName: "cloud.heavyrain.fill",
                                   temperature: 29)
                    WeatherDayView(dayOfWeek: "FRI",
                                   imageName: "smoke.fill",
                                   temperature: 30)
                }
                
                Spacer()
                
                Button {
                    isNight.toggle()
                } label: {
                    WeatherButtonView(title: "Chage Day Time", textColor: .blue, backgroundColor: .white)
                }
                
                Spacer()
                
            }
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct WeatherDayView: View {
    
    var dayOfWeek: String
    var imageName: String
    var temperature: Int
    
    var body: some View {
        VStack {
            
            Text("\(dayOfWeek)")
                .font(.system(size: 16, weight: .semibold, design: .default))
                .foregroundColor(Color.white)
            Image(systemName: "\(imageName)")
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 35)
            Text("\(temperature)°")
                .font(.system(size: 28, weight: .semibold, design: .default))
                .foregroundColor(Color.white)
            
            
        }
    }
}

struct BackgroundView: View {
    
    var topColor: Color
    var bottomColor: Color
    
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [.blue, Color("lightBlue")]),
                       startPoint: .topLeading,
                       endPoint: .bottomTrailing)
            .edgesIgnoringSafeArea(.all)
    }
}
    
struct CityTextView: View {
    
    var cityName:String
    
    var body: some View {
        Text(cityName)
            .font(.system(size: 32, weight: .medium, design: .default))
            .foregroundColor(.white)
            .padding()
    }
}

struct MainWeatherStatusView: View {
    
    var imageName: String
    var temperature: Int
    
    var body: some View {
        VStack(spacing: 8) {
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 200, height: 150)
            
            
            Text("\(temperature)°") // option + shift + 8 untuk memunculkan simbol derajat
                .font(.system(size: 70, weight: .medium, design: .default))
                .foregroundColor(.white)
                .padding()
            Text("Saturday, 30 December 2022")
                .font(.system(size: 24, weight: .medium, design: .default))
                .foregroundColor(.white)
        }
        .padding(.bottom, -30)
    }
    
}


