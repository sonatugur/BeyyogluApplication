//
//  ViewController.swift
//  BeyyogluApplication
//
//  Created by Sonat Ugur on 28/03/16.
//  Copyright © 2016 Sonat Ugur. All rights reserved.
//

import UIKit

class MainController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    var kategoriID: Int?
    
    @IBAction func TransitionToSideMenu(sender: AnyObject) {
        let appDelegate : AppDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
        appDelegate.centerContainer!.toggleDrawerSide(MMDrawerSide.Left, animated: true, completion: nil)
    }
    
    @IBAction func TransitionToFlow1(sender: AnyObject) {
        kategoriID = 1
        performSegueWithIdentifier("anaKategoriSecim", sender: kategoriID)
        
    }

    @IBAction func TransitionToFlow2(sender: AnyObject) {
        kategoriID = 2
        performSegueWithIdentifier("anaKategoriSecim", sender: kategoriID)
    }

    @IBAction func TransitionToFlow3(sender: AnyObject) {
        kategoriID = 3
        performSegueWithIdentifier("anaKategoriSecim", sender: kategoriID)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "anaKategoriSecim" {
            let flowPage: FlowController = segue.destinationViewController as! FlowController
            
            flowPage.anakategoriID = sender as! Int
            
        }

}

}

