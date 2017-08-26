//
//  CustomButton.swift
//  CCHA-test-app
//
//  Created by Grayson faircloth on 6/28/16.
//  Copyright © 2016 Grayson Faircloth. All rights reserved.
//

import UIKit
import pop


@IBDesignable
class CustomButton: UIButton {

    override func awakeFromNib() {
        setupView()
        
        self.titleLabel?.textAlignment = NSTextAlignment.center
        
        
    }
    
    @IBInspectable var shadowOpacity: Float = 0.8 {
        didSet {
            setupView()
        }
    }
    
    
    @IBInspectable var shadowColor: CGColor = UIColor(red: 0/155, green: 0/155, blue: 0/155, alpha: 0.5).cgColor {
        didSet {
            setupView()
            
        }
    }
    
    @IBInspectable var shadowRadius: CGFloat = 2.0 {
        didSet {
            setupView()
        }
    }
    
    @IBInspectable var shadowOffset: CGSize = CGSize(width: 0.0, height: 2.0) {
        didSet {
            setupView()
        }
    }
    
    @IBInspectable var cornerRadius: CGFloat = 35.0 {
        didSet {
            setupView()
        }
    }
    
    @IBInspectable var fontColor: UIColor = UIColor.white {
        didSet {
            self.tintColor = fontColor
        }
    }
    
    
    
    func setupView() {
    
        
        self.layer.cornerRadius = cornerRadius
        self.layer.shadowColor = shadowColor
        self.layer.shadowRadius = shadowRadius
        self.layer.shadowOffset = shadowOffset
        self.layer.shadowOpacity = shadowOpacity
        
        self.addTarget(self, action: #selector(CustomButton.scaleToSmall), for: .touchDown)
        self.addTarget(self, action: #selector(CustomButton.scaleToSmall), for: .touchDragEnter)
        self.addTarget(self, action: #selector(CustomButton.scaleAnimation), for: .touchUpInside)
        self.addTarget(self, action: #selector(CustomButton.scaleDefault), for: .touchDragExit)
        
    }
    
    
    func scaleToSmall() {
        
        let scaleAnim = POPBasicAnimation(propertyNamed: kPOPLayerScaleXY)
        scaleAnim?.toValue = NSValue(cgSize: CGSize(width: 0.95, height: 0.95))
        self.layer.pop_add(scaleAnim, forKey: "layerScaleSmallAnimation")
        
    }
    
    func scaleAnimation() {
        
        let scaleAnim = POPSpringAnimation(propertyNamed: kPOPLayerScaleXY)
        scaleAnim?.velocity = NSValue(cgSize: CGSize(width: 3.0, height: 3.0))
        scaleAnim?.toValue = NSValue(cgSize: CGSize(width: 1.0, height: 1.0))
        scaleAnim?.springBounciness = 18.0
        self.layer.pop_add(scaleAnim, forKey: "layerScaleSpringAnimation")
        
        
    }
    
    
    func scaleDefault() {
        
        let scaleAnim = POPBasicAnimation(propertyNamed: kPOPLayerScaleXY)
        scaleAnim?.toValue = NSValue(cgSize: CGSize(width: 1.0, height: 1.0))
        self.layer.pop_add(scaleAnim, forKey: "layerScaleDefaultAnimation")
        
        
    }
    
    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */

}
