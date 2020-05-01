//
//  DetailViewController.swift
//  Project1
//
//  Created by Janusz  on 30/04/2020.
//  Copyright © 2020 Janusz . All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet var imageView: UIImageView!
    
    var selectedImage: String?
    var selectedPictureNumber: Int?
    var totalPictures: Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        guard let selectedImage = selectedImage else {
            print( "no image selected")
            return
        }
        if let value1 = selectedPictureNumber, let value2 = totalPictures{
            title = "Picture \(value1) of \(value2)"
        }
        navigationItem.largeTitleDisplayMode = .never
        imageView.image = UIImage(named: selectedImage)
        
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.hidesBarsOnTap = true
    }
    override func viewWillDisappear(_ animated: Bool) {
         super.viewWillDisappear(animated)
        navigationController?.hidesBarsOnTap = false
    }
}
