//
//  ContainerViewController.swift
//  LeftSlideMenuDelegate
//
//  Created by Hiếu Nguyễn on 10/12/18.
//  Copyright © 2018 Hiếu Nguyễn. All rights reserved.
//

import UIKit

class ContainerViewController: UIViewController, MasterViewControllerDelegate {
    
    @IBOutlet weak var blueView: UIView!
    @IBOutlet weak var leadingC: NSLayoutConstraint!
    @IBOutlet weak var coverButton: UIButton!
    
    var masterVC: MasterViewController?
    var leftSlideMenuVC: LeftSlideMenuViewController?
    
    
    var isSlideMenuOpen: Bool = false {
        didSet {
            if isSlideMenuOpen {
                print(isSlideMenuOpen)
                leadingC.constant = 0
                coverButton.isHidden = false
            } else {
                print(isSlideMenuOpen)
                leadingC.constant = -(UIScreen.main.bounds.width) * 2/3
                coverButton.isHidden = true
            }
            UIView.animate(withDuration: 0.25) {
                self.view.layoutIfNeeded()
            }
        }
    }
    
    
    
    func openSlideMenu() {
        isSlideMenuOpen = !isSlideMenuOpen
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        isSlideMenuOpen = false
        masterVC?.delegate = self
        leftSlideMenuVC?.delegate = masterVC
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func buttonMenu(_ sender: UIButton) {
        openSlideMenu()
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        switch segue.identifier! {
        case "masterViewController":
            if let navigation = segue.destination as? UINavigationController {
                masterVC = navigation.topViewController as? MasterViewController
            }
        case "leftSlideMenu":
            leftSlideMenuVC = segue.destination as? LeftSlideMenuViewController
        default:
            break
        }
    }
}

