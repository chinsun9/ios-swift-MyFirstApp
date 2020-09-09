//
//  ViewController.swift
//  MyFirstApp
//
//  Created by sung hello on 2020/09/09.
//  Copyright © 2020 sung hello. All rights reserved.
//

import UIKit

class NewAlarmViewController: UIViewController {


    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func tmp(_ sender: UIButton) {
        sender.isSelected.toggle()
    }
    
    @IBAction func btnCancel(_ sender: UIButton) {
    
        
        dismiss(animated: true, completion: nil)
        print("cancel")
    }
    @IBAction func btnDone(_ sender: UIButton) {
        
        dismiss(animated: true, completion: nil)
        print("done")
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
