//
//  ViewController.swift
//  LeftSlideMenuDelegate
//
//  Created by Hiếu Nguyễn on 10/12/18.
//  Copyright © 2018 Hiếu Nguyễn. All rights reserved.
//

import UIKit

protocol MasterViewControllerDelegate: class {
      func openSlideMenu()
}

class  MasterViewController: UIViewController, SlideMenuViewControllerDelegate {
    
    weak var delegate: MasterViewControllerDelegate?
    
    func sendingData(data: String) {
        nameText.text = data
        delegate?.openSlideMenu()
    }
    
    @IBOutlet weak var nameText: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func btnMenu(_ sender: UIBarButtonItem) {
        delegate?.openSlideMenu()
    }
    
}


