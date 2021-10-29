//
//  PlaceModel.swift
//  MyPlaces
//
//  Created by Павел Попов on 13.10.2021.
//

import UIKit
import RealmSwift

class Place: Object {
    
    @objc dynamic var name = ""
    @objc dynamic var location: String?
    @objc dynamic var type: String?
    @objc dynamic var imageData: Data?
    
    let restaurantNames = ["Dublin", "Марбелья", "Корчма Гоголь", "Merzen", "Шокунин", "ПолМедведя", "Малика", "Иль Песто", "Фабрика", "Фёст", "McDonalds", "KFC"]
    
    func savePlaces() {
        
        for place in restaurantNames {
            
            let image = UIImage(named: place)
            guard let imageData = image?.pngData() else { return }
            
            let newPlace = Place()
            
            newPlace.name = place
            newPlace.location = "Lipetsk"
            newPlace.type = "Restaurant"
            newPlace.imageData = imageData
            
            StorageManager.saveObject(newPlace)
        }
    }
}
