// =
//  ContextualActionBarView.swift
//  ContextualActionBarView
//
//  Created by Angad Nadkarni on 06/07/16.
//  Copyright © 2016 Hullo Technologies Pvt. Ltd. All rights reserved.
//

import UIKit

class ContextualActionBarView: UIView {
    @IBOutlet var contentView: UIView!
    @IBOutlet var actionBarView: UIStackView!
    
    var actionViews: [UIView] = []
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }
    
    func setup() {
        // Inflate our nib
        let view = UINib(nibName: "ContextualActionBarView", bundle: NSBundle(
            forClass: self.dynamicType
        )).instantiateWithOwner(self, options: nil)[0] as! UIView
        
        // Adjust our frame
        view.frame = CGRect(
            x: 0, y: 0, width: self.frame.width, height: self.frame.height
        )
        
        // Add some default properties 
        self.actionBarView.alignment = .Center
        self.actionBarView.distribution = .EqualSpacing
        self.actionBarView.axis = .Horizontal
        
        // Add our view!
        self.addSubview(view)
    }
    
    func addToContextualActionBar(view: UIView) {
        if let imageView = view as? UIImageView {
            imageView.contentMode = .ScaleAspectFit
        }
        
        self.actionBarView.addArrangedSubview(view)
    }
}
