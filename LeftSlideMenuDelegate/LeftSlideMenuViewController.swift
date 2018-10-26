//
//  LeftSlideMenuViewController.swift
//  LeftSlideMenuDelegate
//
//  Created by Hiếu Nguyễn on 10/12/18.
//  Copyright © 2018 Hiếu Nguyễn. All rights reserved.
//

import UIKit

protocol SlideMenuViewControllerDelegate: class {
    func sendingData(data: String)
}

class LeftSlideMenuViewController: UIViewController {
    weak var delegate: SlideMenuViewControllerDelegate?
    
    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func sendData(_ sender: UIButton) {
        delegate?.sendingData(data: textField.text!)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
