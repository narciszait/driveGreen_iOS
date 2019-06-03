//
//  CarsViewController.swift
//  Phase 1
//
//  Created by Narcis Zait on 04/02/2019.
//  Copyright © 2019 Narcis Zait. All rights reserved.
//

import UIKit

class CarsViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var showCarsOnMapButton: UIBarButtonItem!
    
    var carsArray = [CarElement]()
    var savedCarsArray = [CarElement]()
    
    
    let defaults = UserDefaults.standard

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        showCarsOnMapButton.isEnabled = false
        
//        if let path = Bundle.main.path(forResource: "carsJSON", ofType: "json") {
//            do {
//                let jsonData = try Data(contentsOf: URL(fileURLWithPath: path), options: [])
//
//                let car = try? JSONDecoder().decode(Car.self, from: jsonData)
//
//                if let car = car {
//                    carsArray = car
//                }
//            } catch {
//                // handle error
//            }
//        }
        
        carsArray = CarElement.parseFromLocal()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showCars" {
            let destVC : MapViewController = segue.destination as! MapViewController
            destVC.carMarkers = savedCarsArray
        }
    }
    
    @IBAction func sortByBattery(_ sender: Any) {
        carsArray.sort {
            $0.batteryPercentage < $1.batteryPercentage
        }
        savedCarsArray = []
        if (savedCarsArray.count == 0) {
            showCarsOnMapButton.isEnabled = false
        }
        tableView.reloadData()
    }
    
}

extension CarsViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return carsArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "carCell", for: indexPath)
        cell.textLabel?.text = "\(carsArray[indexPath.row].latitude) || \(carsArray[indexPath.row].longitude)"
        cell.detailTextLabel?.text = "Battery percentage: \(carsArray[indexPath.row].batteryPercentage)"
        
        return cell
    }
}

extension CarsViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if savedCarsArray.count == 2 {
            showCarsOnMapButton.isEnabled = true
        }
        if savedCarsArray.count > 2 {
            tableView.deselectRow(at: indexPath, animated: true)
            let alert = UIAlertController(title: "Alert", message: "You can only select 3 cars", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { action in
                switch action.style{
                case .default:
                    print("default")
                    print(self.savedCarsArray.count)
                case .cancel:
                    print("cancel")
                case .destructive:
                    print("destructive")
                    
                }}))
            self.present(alert, animated: true, completion: nil)
        } else {
            savedCarsArray.append(carsArray[indexPath.row])
        }
    }
    
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        savedCarsArray.removeLast()
        if savedCarsArray.count < 4 {
            showCarsOnMapButton.isEnabled = false
        }
    }
}
