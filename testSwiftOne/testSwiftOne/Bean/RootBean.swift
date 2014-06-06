//
//  RootBean.swift
//  testSwiftOne
//
//  Created by Perry on 14-6-6.
//  Copyright (c) 2014年 Perrychen. All rights reserved.
//

import UIKit

class RootBean: NSObject {
    var beanId: Int?
    var beanDes: String?
    var beanPoint: Float?
    
    init(id: Int, des: String, point: Float) {
        self.beanId = id
        self.beanDes = des
        self.beanPoint = point
    }
}
