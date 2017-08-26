//
//  CustomNavigationBar.swift
//  CCHA-test-app
//
//  Created by Grayson faircloth on 6/30/16.
//  Copyright © 2016 Grayson Faircloth. All rights reserved.
//

import UIKit

class CustomNavigationBar: UINavigationBar {
    
    override func awakeFromNib() {
        
        
        
        let leftColor = UIColor(red: 124/255, green: 164/255, blue: 184/255, alpha: 0.6)
        
        let rightColor = UIColor(red: 124/255, green: 164/255, blue: 184/255, alpha: 1.0)
        
        let gradientColors: [CGColor] = [leftColor.cgColor, rightColor.cgColor]
        
      //  let gradientLocations: [Float] = [0.0, 1.0]
        
        let gradientLayer: CAGradientLayer = CAGradientLayer()
        
        gradientLayer.colors = gradientColors
      //  gradientLayer.locations = gradientLocations
        
        gradientLayer.frame = self.bounds
        
//        
//        UIGraphicsBeginImageContext(gradientLayer.bounds.size)
//        gradientLayer.renderInContext(UIGraphicsGetCurrentContext()!)
//        let image = UIGraphicsGetImageFromCurrentImageContext()
//        UIGraphicsEndImageContext()
//        
//        // Set the UIImage as background property
//        self.setBackgroundImage(image, forBarMetrics: UIBarMetrics.Default)
        
        // Setup the gradient
            
            gradientLayer.startPoint = CGPoint(x: 0.0, y: 0.5)
            
            gradientLayer.endPoint = CGPoint(x: 1.5, y: 0.5)
            
            // Render the gradient to UIImage
            UIGraphicsBeginImageContext(gradientLayer.bounds.size)
            gradientLayer.render(in: UIGraphicsGetCurrentContext()!)
            let image = UIGraphicsGetImageFromCurrentImageContext()
            UIGraphicsEndImageContext()
            
            // Set the UIImage as background property
            self.setBackgroundImage(image, for: UIBarMetrics.default)
        
        
    }

    
    
    
    
    

}
