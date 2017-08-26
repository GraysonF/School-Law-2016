//
//  TermsVC.swift
//  CCHA-test-app
//
//  Created by Grayson faircloth on 10/7/16.
//  Copyright © 2016 Grayson Faircloth. All rights reserved.
//

import UIKit

class TermsVC: UIViewController, UIGestureRecognizerDelegate {
    
    @IBOutlet var gesture : UIPinchGestureRecognizer!
    
    @IBOutlet var textview: CustomUITextView!
    
    
    var pinchGesture = UIPinchGestureRecognizer()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        textview.isUserInteractionEnabled = true
        textview.isMultipleTouchEnabled = true
        
        pinchGesture = UIPinchGestureRecognizer(target: self, action: #selector(pinchRecognized(_:)))
        textview.addGestureRecognizer(pinchGesture)
        
        
        

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func pinchRecognized(_ pinch: UIPinchGestureRecognizer) {
        let fontSize = self.textview.font!.pointSize*(pinch.scale)/2
        if fontSize > 12 && fontSize < 32{
            textview.font = UIFont(name: self.textview.font!.fontName, size:fontSize)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
