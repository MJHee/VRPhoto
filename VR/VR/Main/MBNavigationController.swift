//
//  MBNavigationController.swift
//  VR
//
//  Created by MJHee on 2017/3/21.
//  Copyright © 2017年 MJBaby. All rights reserved.
//

import UIKit

class MBNavigationController: MBScrollNavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()

        navigationBar.titleTextAttributes = [NSForegroundColorAttributeName: UIColor.white]
    }
    
    //修改状态栏颜色
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return UIStatusBarStyle.lightContent
    }
    
}
