//
//  HomeViewController.swift
//  V-Beltcalc
//
//  Created by Philip Cesar Garay on 12/14/16.
//  Copyright © 2016 Philip Cesar Garay. All rights reserved.
//

import Foundation


class HomeViewController: UIViewController {
    
    
    @IBOutlet weak var gotoTwoPulley: UIButton!
    @IBOutlet weak var gotoThreePulley: UIButton!
    
    @IBOutlet weak var menuButton: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        gotoTwoPulley.backgroundColor = UIColor.init(red: 243, green: 243, blue: 67, alpha: 1.0)
        gotoTwoPulley.layer.cornerRadius = 4
        gotoTwoPulley.layer.borderWidth = 1
        gotoTwoPulley.layer.borderColor = UIColor.init(red: 10, green: 31, blue: 35, alpha: 1.0).cgColor
        
        gotoThreePulley.backgroundColor = UIColor.init(red: 243, green: 243, blue: 67, alpha: 1.0)
        gotoThreePulley.layer.cornerRadius = 4
        gotoThreePulley.layer.borderWidth = 1
        gotoThreePulley.layer.borderColor = UIColor.init(red: 10, green: 31, blue: 35, alpha: 1.0).cgColor
        
        let logo = UIImage(named:"logo_2")
        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 40, height: 27))
        imageView.contentMode = .scaleAspectFit
        imageView.image = logo
        self.navigationItem.titleView = imageView
                
        if revealViewController() != nil{
            menuButton.target = revealViewController()
            menuButton.action = #selector(SWRevealViewController.revealToggle(_:))
            
            revealViewController().rightViewRevealWidth = 150
            //extraButton.target = revealViewController()
            //extraButton.action = #selector(SWRevealViewController.rightRevealToggle(_:))
            
            view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        }
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
