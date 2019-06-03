//
//  Misc.swift
//  Phase 1
//
//  Created by Narcis Zait on 07/02/2019.
//  Copyright © 2019 Narcis Zait. All rights reserved.
//

import Foundation

// distance matrix
//        if let origins = mapView.myLocation?.coordinate {
//            var destinations = ""
//            for car in carMarkers {
//                destinations.append(car.latitude + "," + car.longitude + "|")
//            }
//
//            let url = "https://maps.googleapis.com/maps/api/distancematrix/json?units=metric&origins=\(origins.latitude),\(origins.longitude)&destinations=\(destinations)&key=AIzaSyCgSfaDzPowpy7aw3n6eGANXWJO4F1Vap4"
//            let urlStr = url.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)! as String
//            let searchURL = URL(string: urlStr as String)!
//            print(searchURL)

//OR if you want to use latitude and longitude for source and destination
//let url = NSURL(string: "\("https://maps.googleapis.com/maps/api/directions/json")?origin=\("17.521100"),\("78.452854")&destination=\("15.1393932"),\("76.9214428")")

//            let task = URLSession.shared.dataTask(with: searchURL) { (data, response, error) -> Void in
//
//                do {
//                    if data != nil {
//                        let dic = try JSONSerialization.jsonObject(with: data!, options: JSONSerialization.ReadingOptions.mutableLeaves) as!  [String:AnyObject]
//                        let rows = dic["rows"] as! [[String:AnyObject]]
//                        print(rows[0])
//                        let elements = rows[0]["elements"] as! [[String: AnyObject]]
//                        print(elements)

//                    let status = dic["status"] as! String
//                    var routesArray:String!
//                    if status == "OK" {
//                        routesArray = (((dic["routes"]!as! [Any])[0] as! [String:Any])["overview_polyline"] as! [String:Any])["points"] as! String
//                                                    print("routesArray: \(String(describing: routesArray))")
//                    }
//
//                    DispatchQueue.main.async {
//                        let path = GMSPath.init(fromEncodedPath: routesArray!)
//                        let singleLine = GMSPolyline.init(path: path)
//                        singleLine.strokeWidth = 6.0
//                        singleLine.strokeColor = .blue
//                        singleLine.map = self.mapView
//                    }
//
//                    }
//                } catch {
//                    print("Error")
//                }
//            }
//
//            task.resume()
//        }
//    }

// codable for cars.json
//                let decoder = JSONDecoder()
//
//                do {
//                    let decoded = try decoder.decode(ResponseData.self, from: data)
//                    print(decoded)
//                } catch {
//                    print("Failed to decode JSON")
//                }


//                let jsonResult = try JSONSerialization.jsonObject(with: data, options: .mutableLeaves)
//                if let jsonResult = jsonResult as? [Dictionary<String, Any>] {
//                    print("cars3 \(jsonResult)")
//                    for car in jsonResult {
//                        carsArray.append(car)
//                    }
//                }
