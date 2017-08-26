//
//  ContactVC.swift
//  CCHA-test-app
//
//  Created by Grayson faircloth on 7/2/16.
//  Copyright © 2016 Grayson Faircloth. All rights reserved.
//

import UIKit
import MessageUI

class ContactVC: UIViewController, MFMailComposeViewControllerDelegate {

    
    @IBOutlet var callBtn: CustomButton!
    @IBOutlet var emailBtn: CustomButton!
    @IBOutlet var siteBtn: CustomButton!
    @IBOutlet var twit1Btn: CustomButton!
    @IBOutlet var twit2Btn: CustomButton!
    @IBOutlet var facebookBtn: CustomButton!
    @IBOutlet var locationsBtn: CustomButton!
    

    var frameWidth: CGFloat = 0.0
    var test: CGFloat = 0.0
    
    @IBOutlet var stackView: UIStackView!
    
    var webLink = ""
    
    
    let appDelegate = UIApplication.shared.delegate as! AppDelegate
    
    func loadLandscape() {
        
        //print(callBtn.imageEdgeInsets)
        
        
        let insets = UIEdgeInsets(top: 0.0, left: (frameWidth - 52) - (frameWidth * 0.35), bottom: 0.0, right: 0.0)
        let insets1 = UIEdgeInsets(top: 0.0, left: (frameWidth - 40) - (frameWidth * 0.35), bottom: 0.0, right: 0.0)
        let insets2 = UIEdgeInsets(top: 0.0, left: (frameWidth - 80) - (frameWidth * 0.35), bottom: 0.0, right: 0.0)
        let insets3 = UIEdgeInsets(top: 0.0, left: (frameWidth + 8) - (frameWidth * 0.35), bottom: 0.0, right: 0.0)
        let insets4 = UIEdgeInsets(top: 0.0, left: (frameWidth - 100) - (frameWidth * 0.35), bottom: 0.0, right: 0.0)
        
        callBtn.imageEdgeInsets = insets
        emailBtn.imageEdgeInsets = insets3
        siteBtn.imageEdgeInsets = insets1
        twit1Btn.imageEdgeInsets = insets2
        twit2Btn.imageEdgeInsets = insets
        facebookBtn.imageEdgeInsets = insets
        locationsBtn.imageEdgeInsets = insets4
        
       // print(callBtn.imageEdgeInsets)
        
    }
    
    func loadPortrait() {
        
        //print(callBtn.imageEdgeInsets)
        
        
        let left = -callBtn.frame.width * 0.15
        
        let insets = UIEdgeInsets(top: 0.0, left: left, bottom: 0.0, right: 0.0)
        let insets1 = UIEdgeInsets(top: 0.0, left: (frameWidth / 2) - (frameWidth * 0.31), bottom: 0.0, right: 0.0)
        let insets2 = UIEdgeInsets(top: 0.0, left: (frameWidth / 2) - (frameWidth * 0.4), bottom: 0.0, right: 0.0)
        let insets3 = UIEdgeInsets(top: 0.0, left: (frameWidth / 2) - (frameWidth * 0.48), bottom: 0.0, right: 0.0)
        let insets4 = UIEdgeInsets(top: 0.0, left: (frameWidth / 2) - (frameWidth * 0.37), bottom: 0.0, right: 0.0)
        let insets5 = UIEdgeInsets(top: 0.0, left: (frameWidth / 2) - (frameWidth * 0.36), bottom: 0.0, right: 0.0)
        let insets6 = UIEdgeInsets(top: 0.0, left: (frameWidth / 2) - (frameWidth * 0.28), bottom: 0.0, right: 0.0)
        
        callBtn.imageEdgeInsets = insets
        emailBtn.imageEdgeInsets = insets3
        siteBtn.imageEdgeInsets = insets2
        twit1Btn.imageEdgeInsets = insets1
        twit2Btn.imageEdgeInsets = insets5
        facebookBtn.imageEdgeInsets = insets4
        locationsBtn.imageEdgeInsets = insets6
        
        //Will come back to this. Check links in safari
        
        //print(callBtn.imageEdgeInsets)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        appDelegate.rotated()
        
        test = view.frame.width
        
        print(test)
        
        frameWidth = -callBtn.frame.width
        
        
        navigationController?.hidesBarsOnSwipe = false
    

        
        
        //Get orientation of device from function created in App Delegate File
        
        if appDelegate.orientation == "Portrait" {
            
           loadPortrait()
            
            
            
        }
        
        if appDelegate.orientation == "Landscape" {
            
          loadLandscape()
            
        }
        
       if UIDevice.current.orientation.isLandscape {
            
            print("Hey")
        }
        
        
        if UIInterfaceOrientation.portrait.isPortrait {
            
            print("YO")
        }
        
        
//        print(stackView.frame)
//        
//        let height = callBtn.frame.height / 5
//        
//        let length = stackView.frame.height / 12
//        
//        appDelegate.rotated()
//        
//        let minX = stackView.frame.minX + height
//        let minY = stackView.frame.minY + height - 2.0
//        
//        if appDelegate.orientation == "Portrait" {
//            
//            let frame = CGRectMake(minX, minY, length, length)
//            let frame1 = CGRectMake(minX + 82, minY, length, length)
//            let frame2 = CGRectMake(minX + 164, minY, length, length)
//            let frame3 = CGRectMake(minX + 246, minY, length, length)
//            let frame4 = CGRectMake(minX + 328, minY, length, length)
//            let frame5 = CGRectMake(minX + 410, minY, length, length)
//            let frame6 = CGRectMake(minX + 492, minY, length, length)
//            
//            
//            testImage.frame = frame
//            emailImage.frame = frame1
//            websiteImage.frame = frame2
//            twitter1Image.frame = frame3
//            twitter2Image.frame = frame4
//            facebookImage.frame = frame5
//            locationsBtn.frame = frame6
//            
//            
//        } else {
//            
//            testImage.hidden = true
//            
//        }
        
        
        
        //Ok I think I am on to something here. Need to check to make sure
        

        
        
    }
    func mailComposeController(_ controller: MFMailComposeViewController, didFinishWith result: MFMailComposeResult, error: Error?) {
        controller.dismiss(animated: true, completion: nil)
    }

    
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        if UIDevice.current.orientation.isLandscape {
            
            loadLandscape()
            
            
        } else {
            loadPortrait()
        }
    }
    
    
    func updateView() {
        
        
        
        viewDidLoad()
    }

    
    @IBAction func callBtn(_ sender: AnyObject) {
        
        if let url = URL(string: "tel://3177732190") {
            let options = [UIApplicationOpenURLOptionUniversalLinksOnly : true]
            UIApplication.shared.open(url, options: options, completionHandler: nil)
            
            //Changed from openUrl 
        }
    }
    
    @IBAction func emailBtn(_ sender: AnyObject) {
        
        if MFMailComposeViewController.canSendMail() {
            
            let mail = MFMailComposeViewController()
            
            mail.mailComposeDelegate = self
            mail.setToRecipients(["schools2@cchalaw.com"])
            mail.setMessageBody("<p> -Sent from CCHA School Law App </p>", isHTML: true)
            
            present(mail, animated: true, completion: nil)
            
        } else {
            
            print("error")
        }
        
        
        
    }
    
    @IBAction func webBtn(_ sender: AnyObject) {
        
        webLink = "http://www.cchalaw.com"
        
        segue()
        
    }
    
    @IBAction func twitBtn(_ sender: AnyObject) {
        
        webLink = "https://twitter.com/CCHALAW"
        
        segue()
    }
    
    @IBAction func linkedBtn(_ sender: AnyObject) {
        
        webLink = "https://www.linkedin.com/company/church-church-hittle-&-antrim"
        
        segue()
    }
    
    @IBAction func fbBtn(_ sender: AnyObject) {
        
        webLink = "https://www.facebook.com/Church-Church-Hittle-Antrim-719893564748073/"
        
        segue()
    }
    
    @IBAction func mapsBtn(_ sender: AnyObject) {
        
        webLink = "http://www.cchalaw.com/contact"
        
        segue()
    }

    func segue() {
        
        performSegue(withIdentifier: "pushToWeb", sender: nil)
    }
   

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "pushToWeb" {
            
            if let destination = segue.destination as? ARWebPage {
                
                destination.webLink = webLink
            }
            
        }
    }
   

}
