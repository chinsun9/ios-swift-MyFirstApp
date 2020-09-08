//
//  ViewController.swift
//  MyFirstApp
//
//  Created by sung hello on 2020/09/08.
//  Copyright © 2020 sung hello. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let numOfTouchs = 2
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let swipeLeft = UISwipeGestureRecognizer(target: self, action: #selector(ViewController.respondToSwipeGesture(_:)))
        swipeLeft.direction = UISwipeGestureRecognizer.Direction.left
        self.view.addGestureRecognizer(swipeLeft)
        
        let swipeRight = UISwipeGestureRecognizer(target: self, action: #selector(ViewController.respondToSwipeGesture(_:)))
        swipeRight.direction = UISwipeGestureRecognizer.Direction.right
        self.view.addGestureRecognizer(swipeRight)
        
    }
    
    // 탭바 상단으로 올리는 코드

    override func viewDidLayoutSubviews() {
        let tmpFrame = self.tabBarController?.tabBar.frame
        self.tabBarController?.tabBar.frame = CGRect(x: 0, y: 0, width: Int(tmpFrame!.width), height: Int(tmpFrame!.height))
    }

    
    // 탭바 스와이프로 이동
    @objc func respondToSwipeGesture(_ gesture: UIGestureRecognizer) {
        if let swipeGesture = gesture as? UISwipeGestureRecognizer {
            switch swipeGesture.direction {
            case UISwipeGestureRecognizer.Direction.left:
                tabBarController?.selectedIndex += 1
            case UISwipeGestureRecognizer.Direction.right:
                tabBarController?.selectedIndex -= 1
            default:
                break
            }
        }
    }

}

