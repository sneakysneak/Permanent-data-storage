//
//  ViewController.swift
//  StoreDataPermanently
//
//  Created by sneakysneak on 23/11/2018.
//  Copyright © 2018 sneakysneak. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        //1st way
        //Save the item, sets the var to name
//        UserDefaults.standard.set("Reka", forKey: "name")
        //Bring this var back with its key
        //It is stored permantently
        //        let name = UserDefaults.standard.object(forKey: "name")
        
        //2nd way, safer
        // Returning an object
        let nameObject = UserDefaults.standard.object(forKey: "name")
        
        if let name = nameObject as? String {
            print(name)
        }
        
        let arr = [1,2,3,4]
        
        UserDefaults.standard.set(arr, forKey: "array")
        
        let arrayObject = UserDefaults.standard.object(forKey: "array")
        
        if let array = arrayObject as? NSArray {
            print(array)
        }
        
        
    }


}

