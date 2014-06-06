//
//  DetailViewController.swift
//  testSwiftOne
//
//  Created by Perry on 14-6-6.
//  Copyright (c) 2014年 Perrychen. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    var strName: String?
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        self.navigationItem.title = strName
        
        
        println("strName is \(strName)")
    }
    
}
