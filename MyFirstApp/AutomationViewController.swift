//
//  AutomationViewController.swift
//  MyFirstApp
//
//  Created by sung hello on 2020/09/08.
//  Copyright © 2020 sung hello. All rights reserved.
//

import UIKit

class AutomationViewController: UIViewController{

    override func viewDidLoad() {
        super.viewDidLoad()

  
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let viewController = segue.destination as! NewAlarmViewController
        print(viewController)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

