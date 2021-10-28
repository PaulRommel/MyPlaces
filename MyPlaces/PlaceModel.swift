//
//  PlaceModel.swift
//  MyPlaces
//
//  Created by Павел Попов on 13.10.2021.
//

import UIKit

struct Place {
    
    var name: String
    var location: String?
    var type: String?
    var image: UIImage?
    var restaurantImage: String?
    
    static let restaurantNames = ["Dublin", "Марбелья", "Корчма Гоголь", "Merzen", "Шокунин", "ПолМедведя", "Малика", "Иль Песто", "Фабрика", "Фёст", "McDonalds", "KFC"]
    
    static func getPlaces() -> [Place] {
        
        var places = [Place]()
        
        for place in restaurantNames {
            places.append(Place(name: place, location: "Липецк", type: "Ресторан", image: nil, restaurantImage: place))
        }
        
        return places
    }
}
