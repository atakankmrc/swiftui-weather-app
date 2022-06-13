//
//  ContentView.swift
//  GoodWeather
//
//  Created by Atakan Kömürcü on 2.06.2022.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var weatherVM: WeatherViewModel
    
    init() {
        self.weatherVM = WeatherViewModel()
    }
    
    var body: some View {
        VStack(alignment: .center) {
            Spacer()
            TextField("Enter City Name", text: self.$weatherVM.cityName) {
                self.weatherVM.search()
            }
            .font(.custom("Arial", size: 45))
            .padding()
            .fixedSize()
            Spacer()
            
            HStack {
                VStack {
                    if self.weatherVM.temperature != "" {
                        Text("Temp")
                            .font(.title).padding()
                    }
                    Text(self.weatherVM.temperature)
                        .font(.custom("Arial", size: 100))
                        .foregroundColor(Color.white)
                        .padding()
                }
                .padding(.leading, 20)
                
                Spacer()
                
                VStack {
                    if self.weatherVM.humidity != "" {
                        Text("Humditiy")
                            .font(.title)
                        .padding()
                    }
                    Text(self.weatherVM.humidity)
                        .font(.custom("Arial", size: 100))
                        .foregroundColor(Color.white)
                        .padding()
                }
                .padding(.trailing, 20)
                
            }
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
        .background(Color.green)
        .edgesIgnoringSafeArea(.all)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
