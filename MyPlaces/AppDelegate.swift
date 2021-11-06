//
//  AppDelegate.swift
//  MyPlaces
//
//  Created by Павел Попов on 19.09.2021.
//

import UIKit
import RealmSwift

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        // In application(_:didFinishLaunchingWithOptions:)
        // Realm - database version update
        let config = Realm.Configuration(
            schemaVersion: 1, // Set the new schema version.
            
            migrationBlock: { migration, oldSchemaVersion in
                if (oldSchemaVersion < 1) {
                    // Previous Migration.

                }

            })
        
        // Tell Realm to use this new configuration object for the default Realm
        Realm.Configuration.defaultConfiguration = config
        
        return true
    }

}

