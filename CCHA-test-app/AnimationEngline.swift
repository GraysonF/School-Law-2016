//
//  Util.swift
//  CCHA-test-app
//
//  Created by Grayson faircloth on 8/11/16.
//  Copyright © 2016 Grayson Faircloth. All rights reserved.
//

import Foundation
import UIKit
import pop

class AnimationEngine {
    
    
    
    
    class var offScreenRightPosition: CGPoint {
        return CGPoint(x: UIScreen.main.bounds.width, y: UIScreen.main.bounds.midY)
    }
    
    class var offScreenLeftPosition: CGPoint {
        return CGPoint(x: -UIScreen.main.bounds.width, y: UIScreen.main.bounds.midY)
    }
    
    class var screenCenterPosition: CGPoint {
        return CGPoint(x: UIScreen.main.bounds.midX, y: UIScreen.main.bounds.midY)
        
    }
    let ANIM_DELAY: Int = 1
    var originalConstants = [CGFloat]()
    var constraints: [NSLayoutConstraint]!
    
    
    init(constraints: [NSLayoutConstraint]) {
        
        for con in constraints {
            originalConstants.append(con.constant)
            con.constant = AnimationEngine.offScreenRightPosition.x
        }
        
        self.constraints = constraints
    }
    
    
    
    func animateOnScreen(_ delay: Double?) {
        
        let time = DispatchTime.now() + Double(Int64(Double(delay!) * Double(NSEC_PER_SEC))) / Double(NSEC_PER_SEC)
        
        DispatchQueue.main.asyncAfter(deadline: time) {
            
            var index = 0
            repeat {
                
                let moveAnim = POPSpringAnimation(propertyNamed: kPOPLayoutConstraintConstant)
                moveAnim?.toValue = self.originalConstants[index]
                moveAnim?.springBounciness = 12
                moveAnim?.springSpeed = 12
                
                if (index > 0) {
                    moveAnim?.dynamicsFriction += 10 + CGFloat(index)
                    
                    //Play around with other dynamic stuff
                }
                
                let con = self.constraints[index]
                con.pop_add(moveAnim, forKey: "moveOnScreen")
                
                index += 1
                
            } while (index < self.constraints.count)
            
            
        }
        
        
        
        
        
    }
    
    
    
    class func animateToPosition(_ view: UIView, position: CGPoint, completion: ((POPAnimation?, Bool) -> Void)!) {
        
        let moveAnim = POPSpringAnimation(propertyNamed: kPOPLayerPosition)
        moveAnim?.toValue = NSValue(cgPoint: position)
        moveAnim?.springBounciness = 8
        moveAnim?.springSpeed = 8
        moveAnim?.completionBlock = completion
        view.pop_add(moveAnim, forKey: "moveToPosition")
        
        
        
    }
    
    func animateSize(_ view: UILabel) {
        
        let moveAnim = POPBasicAnimation(propertyNamed: kPOPLayerSize)
        moveAnim?.toValue = NSValue(cgSize: CGSize(width: 100, height: 100))
        view.pop_add(moveAnim, forKey: "animateSize")
        
        
    }
    
}
