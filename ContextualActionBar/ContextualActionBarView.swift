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
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }
    
    func setup() {
        let view = UINib(nibName: "ContextualActionBarView", bundle: NSBundle(
            forClass: self.dynamicType
        )).instantiateWithOwner(self, options: nil)[0] as! UIView
        
        view.frame = CGRect(x: 0, y: 0, width: self.frame.width, height: self.frame.height)
        self.addSubview(view)
    }
}
