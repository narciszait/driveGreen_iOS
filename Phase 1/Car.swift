//
//  Car.swift
//  Phase 1
//
//  Created by Narcis Zait on 04/02/2019.
//  Copyright © 2019 Narcis Zait. All rights reserved.
//

import Foundation

// To parse the JSON, add this file to your project and do:
//
//   let car = try? newJSONDecoder().decode(Car.self, from: jsonData)

typealias Car = [CarElement]

//struct CarElement: Codable {
//    let latitude, longitude: Double
//    let batteryPercentage, interestInTheCar: Int
//    let field5: Field5
//
//    enum CodingKeys: String, CodingKey {
//        case latitude = "Latitude"
//        case longitude = "Longitude"
//        case batteryPercentage = "Battery percentage"
//        case interestInTheCar = "Interest in the car"
//        case field5 = "FIELD5"
//    }
//}
//
//enum Field5: String, Codable {
//    case empty = ""
//    case field5Good = "Good"
//    case good = "good"
//}


//typealias Car = [CarElement]

class CarElement: Codable { //NSObject, Codable, NSCoding
    let latitude, longitude, batteryPercentage, interestInTheCar: String
    let field5: Field5

    enum CodingKeys: String, CodingKey {
        case latitude = "Latitude"
        case longitude = "Longitude"
        case batteryPercentage = "Battery percentage"
        case interestInTheCar = "Interest in the car"
        case field5
    }

    init(latitude: String, longitude: String, batteryPercentage: String, interestInTheCar: String, field5: Field5) {
        self.latitude = latitude
        self.longitude = longitude
        self.batteryPercentage = batteryPercentage
        self.interestInTheCar = interestInTheCar
        self.field5 = field5
    }

//    required init?(coder aDecoder: NSCoder) {
//        latitude = aDecoder.decodeObject(forKey: "latitude") as! String
//        longitude = aDecoder.decodeObject(forKey: "longitude") as! String
//        batteryPercentage = aDecoder.decodeObject(forKey: "batteryPercentage") as! String
//        interestInTheCar = aDecoder.decodeObject(forKey: "interestInTheCar") as! String
//        field5 = aDecoder.decodeObject(forKey: "field5") as! Field5
//
//    }
//
//    func encode(with aCoder: NSCoder) {
//        aCoder.encode(latitude, forKey: "latitude")
//        aCoder.encode(longitude, forKey: "longitude")
//        aCoder.encode(batteryPercentage, forKey: "batteryPercentage")
//        aCoder.encode(interestInTheCar, forKey: "interestInTheCar")
//        aCoder.encode(field5, forKey: "field5")
//    }
}

enum Field5: String, Codable {
    case field5Good = "Good"
    case good = "good"
}


//struct Car : Codable {
//    var latitude: String
//    var longitude: String
//    var batteryPercentage: String
//    var interestInTheCar: String
//    var field5: String
//
//    enum CodingKeys: String, CodingKey {
//        case latitude = "Latitude"
//        case longitude = "Longitude"
//        case batteryPercentage = "Battery Percentage"
//        case interestInTheCar = "Interest in the car"
//        case field5
//    }
//}
//
//struct ResponseData: Codable {
//    var cars: [Car]
//}

// To parse the JSON, add this file to your project and do:
//
//   let car = try? newJSONDecoder().decode(Car.self, from: jsonData)
