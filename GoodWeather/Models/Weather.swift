//
//  Weather.swift
//  GoodWeather
//
//  Created by Atakan Kömürcü on 2.06.2022.
//

import Foundation

struct WeatherResponse: Decodable {
    let main: Weather
}

struct Weather: Decodable {
    
    var temp: Double?
    var humidity: Double?
    
}
