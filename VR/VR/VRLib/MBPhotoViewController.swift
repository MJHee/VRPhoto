//
//  MBPhotoViewController.swift
//  VR
//
//  Created by MJHee on 2017/3/21.
//  Copyright © 2017年 MJBaby. All rights reserved.
//

import UIKit

class MBPhotoViewController: UIViewController {
    
    fileprivate var photoUrl: String?
    
    init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?, urlString: String?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        
        guard let url = urlString else {
            return
        }
        photoUrl = url
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.white
        
        let photo = MBPhotoView(frame: view.bounds)
        photo.photoURL = photoUrl
        
        view.addSubview(photo)
        view.addSubview(closeButton)
    }
    
    @objc fileprivate func closeButtonClick() {
        dismiss(animated: true, completion: nil)
    }
    
    //MARK: - 懒加载
    fileprivate lazy var closeButton: UIButton = {
        let btn = UIButton()
        btn.frame = CGRect(x: 10, y: 20, width: 50, height: 50)
        btn.layer.cornerRadius = 25
        btn.layer.masksToBounds = true
        btn.setImage(UIImage.init(named: "Settings.bundle/" + "close"), for: .normal)
        btn.addTarget(self, action: #selector(MBPhotoViewController.closeButtonClick), for: .touchUpInside)
        return btn
    }()

}
