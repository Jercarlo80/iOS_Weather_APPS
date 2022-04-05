//
//  WeatherButton.swift
//  Weather_APPS
//
//  Created by JEREMIA CARLO on 06/04/22.
//

import SwiftUI

struct WeatherButtonView: View {
    
    var title: String
    var textColor: Color
    var backgroundColor: Color
    
    var body: some View {
        Button {
            print("tapped")
        } label: {
            Text(title)
                .frame(width: 280, height: 50)
                .background(backgroundColor)
                .foregroundColor(textColor)
                .font(.system(size: 24,
                              weight: .bold,
                              design: .default))
                .cornerRadius(10)
        }
    }
}
