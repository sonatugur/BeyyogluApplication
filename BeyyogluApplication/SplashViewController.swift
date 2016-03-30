//
//  SplashViewController.swift
//  BeyyogluApplication
//
//  Created by Sonat Ugur on 28/03/16.
//  Copyright © 2016 Sonat Ugur. All rights reserved.
//

import UIKit

class SplashViewController: UIViewController {

    override func viewDidLoad() {
        
        super.viewDidLoad()
        addBackgroundImage()
        let timer = NSTimer.scheduledTimerWithTimeInterval(
            2.5, target: self, selector: Selector("show"), userInfo: nil, repeats: false
        )
    }
    
    override func prefersStatusBarHidden() -> Bool {
        return true
    }
    
    func show() {
        self.performSegueWithIdentifier("showApp", sender: self)
    }
    
    func addBackgroundImage() {
        
        let screenSize: CGRect = UIScreen.mainScreen().bounds
        
        let bg = UIImage(named: "12555838_1833300643564007_1424169485_n")
        
        let bgView = UIImageView(image: bg)
        
        bgView.frame = CGRectMake(0, 0, screenSize.width, screenSize.height)
        self.view.addSubview(bgView)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


}
