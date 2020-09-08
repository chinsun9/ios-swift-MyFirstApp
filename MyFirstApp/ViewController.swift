//
//  ViewController.swift
//  MyFirstApp
//
//  Created by sung hello on 2020/09/08.
//  Copyright © 2020 sung hello. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    // 탭바 상단으로 올리는
    override func viewDidLayoutSubviews() {
        let tmpFrame = self.tabBarController?.tabBar.frame
        self.tabBarController?.tabBar.frame = CGRect(x: 0, y: 0, width: Int(tmpFrame!.width), height: Int(tmpFrame!.height))
    }
}

