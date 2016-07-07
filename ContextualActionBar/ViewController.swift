//
//  ViewController.swift
//  ContextualActionBar
//
//  Created by Angad Nadkarni on 06/07/16.
//  Copyright © 2016 Hullo Technologies Pvt. Ltd. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var tile: ContextualActionBarView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tile.addToContextualActionBar(UIImageView(
            image: UIImage(named: "Heart")
        ))
        
        let redHeartImage = UIImage(named: "Heart")?.imageWithRenderingMode(
            .AlwaysTemplate
        )
        let redHeartImageView = UIImageView(image: redHeartImage)
        redHeartImageView.tintColor = UIColor.redColor()
        tile.addToContextualActionBar(redHeartImageView)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

