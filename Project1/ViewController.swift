//
//  ViewController.swift
//  Project1
//
//  Created by Janusz  on 30/04/2020.
//  Copyright © 2020 Janusz . All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var pictures: [String]?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let fm = FileManager.default
        let path = Bundle.main.resourcePath!
        let items = try! fm.contentsOfDirectory(atPath: path)
        
        for item in items{
            if item.hasPrefix("nssl"){
            print(item)
            }
        }
    }


}

