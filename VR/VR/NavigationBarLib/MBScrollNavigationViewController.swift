//
//  MBScrollNavigationViewController.swift
//  VR
//
//  Created by MJHee on 2017/3/21.
//  Copyright © 2017年 MJBaby. All rights reserved.
//

import UIKit

class MBScrollNavigationViewController: UIViewController, UIScrollViewDelegate {

    open override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        if let navigationController = self.navigationController as? MBScrollNavigationController {
            navigationController.showNavigationBar(animated: true, duration: 0.1)
        }
    }
    
    open override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        if let navigationController = self.navigationController as? MBScrollNavigationController {
        
            navigationController.stopFollowingScrollView()
        }
    }
    
    public func scrollViewShouldScrollToTop(_ scrollView: UIScrollView) -> Bool {
        
        if let navigationController = self.navigationController as? MBScrollNavigationController {
            
            navigationController.showNavigationBar(animated: true, duration: 0.1)
        }
        return true
    }
    
}
