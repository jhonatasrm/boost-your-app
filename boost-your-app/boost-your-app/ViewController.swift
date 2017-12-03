//
//  ViewController.swift
//  boost-your-app
//
//  Created by Jhonatas Rodrigues on 02/12/17.
//  Copyright © 2017 Jhonatas Rodrigues. All rights reserved.
//

import UIKit
import StoreKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        requestReview()
    }
    
    func requestReview(){
        if UserDefaults.standard.bool(forKey: "firstAcess"){
            SKStoreReviewController.requestReview()
        }
        UserDefaults.standard.set(true, forKey: "firstAcess")
    }
}

