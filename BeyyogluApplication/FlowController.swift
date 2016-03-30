//
//  FlowController.swift
//  BeyyogluApplication
//
//  Created by Sonat Ugur on 28/03/16.
//  Copyright © 2016 Sonat Ugur. All rights reserved.
//

import UIKit

class FlowController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.dataSource = self
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    var anakategoriID: Int?
    
    var productList = []
    
    
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return productList.count
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        
        
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("CellIdentifier", forIndexPath: indexPath) as! UICollectionViewCell
        
        cell.backgroundColor = UIColor.redColor()
        
        return cell
    }

}
/*
class ViewController2: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate{



@IBOutlet weak var collectionView: UICollectionView!

let identifier = "CellIdentifier"



override func viewDidLoad() {

super.viewDidLoad()

collectionView.dataSource = self

}
override func didReceiveMemoryWarning() {

super.didReceiveMemoryWarning()

}

func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int

{

return 12

}

// The cell that is returned must be retrieved from a call to -dequeueReusableCellWithReuseIdentifier:forIndexPath:

func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell

{

let cell = collectionView.dequeueReusableCellWithReuseIdentifier(identifier, forIndexPath: indexPath) as! UICollectionViewCell

cell.backgroundColor = UIColor.redColor()

return cell
}
}
*/
