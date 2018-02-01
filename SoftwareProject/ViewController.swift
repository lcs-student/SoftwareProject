//
//  ViewController.swift
//  SoftwareProject
//
//  Created by Gordon, Russell on 2018-01-31.
//  Copyright © 2018 Gordon, Russell. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: Outlets
    @IBOutlet weak var blackCircle: UIImageView!
    
    // MARK: Properties
    var radius : CGFloat = 1.0
    var timer = Timer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // Centre the size the circle
        blackCircle.frame = CGRect(x: UIScreen.main.bounds.width / 2, y: UIScreen.main.bounds.height / 2, width: 2, height: 2)
        
        // Start the timer to do a crude animation
        timer = Timer.scheduledTimer(timeInterval: 3, target: self, selector: #selector(ViewController.growSize), userInfo: nil, repeats: true)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @objc func growSize() {
        
        while radius <= 100 {
            
            radius += 1
                blackCircle.frame = CGRect(x: UIScreen.main.bounds.width / 2, y: UIScreen.main.bounds.height / 2, width: radius * 2, height: radius * 2)
            
        }
        
    }


}

