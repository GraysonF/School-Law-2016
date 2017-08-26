//
//  CustomUITextView.swift
//  CCHA-test-app
//
//  Created by Grayson faircloth on 6/30/16.
//  Copyright © 2016 Grayson Faircloth. All rights reserved.
//

import UIKit

class CustomUITextView: UITextView {

    
    override func awakeFromNib() {
        
        self.clipsToBounds = false
        
        
        layer.shadowColor = UIColor(red: 157/255, green: 157/255, blue: 157/255, alpha: 0.5).cgColor
        layer.shadowOpacity = 0.8
        layer.shadowRadius = 5.0
        layer.shadowOffset = CGSize(width: 0.0, height: 2.0)
        
    }

}
