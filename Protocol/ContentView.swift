//
//  ContentView.swift
//  Protocol
//
//  Created by Elias Breitenbach on 26.09.23.
//

import SwiftUI



struct ContentView: View {
    
    let vehicles: [Vehicle] = [Car(name: "BMW", color: "Yellow", value: 1.1),
                               Bicycle(name: "Rose", color: "Black"),
                               Car(name: "Honda", color: "green", value: 1.1)
    ]
    
    func showName(_ vehicle: Vehicle) {
        print(vehicle.name)
    }
    
    func showColor(for vehice: Vehicle) {
        print(vehice.color)
    }
    
    func showNameAndColor(vehicle: Vehicle) {
        print(vehicle.name, vehicle.color)
    }
    
    var body: some View {
        VStack {
            Button {
                
                for vehicle in vehicles {
                    showName(vehicle)
                }
                
            } label: {
                Text("Show name")
            }
            
            Button {
                for vehicle in vehicles {
                    showColor(for: vehicle)
                }
            } label: {
                Text("Show color")
            }
            Button {
                for vehicle in vehicles {
                    showNameAndColor(vehicle: vehicle)
                }
            } label: {
                Text("Show Name and Color")
            }
        }
    }
}

#Preview {
    ContentView()
}
