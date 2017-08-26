//
//  HomeVC.swift
//  CCHA-test-app
//
//  Created by Grayson faircloth on 7/2/16.
//  Copyright © 2016 Grayson Faircloth. All rights reserved.
//

import UIKit

class HomeVC: UIViewController {

    @IBOutlet var addResourcesBtn: CustomButton!
    
    let launchedBefore = UserDefaults.standard.bool(forKey: "launchedBefore")
    
    
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.navigationBar.titleTextAttributes = [NSFontAttributeName: UIFont(name: "Georgia", size: 18.0)!, NSForegroundColorAttributeName: UIColor.white]
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationController!.navigationBar.tintColor = UIColor.white
        
        if launchedBefore  {
            print("Not first launch.")
        }
        else {
            
            alert("The material in this app is for informational purposes only and is not legal advice. Click the button in the top left for more information.")
            print("First launch, setting NSUserDefault.")
            UserDefaults.standard.set(true, forKey: "launchedBefore")
            
            
        }

        navigationController?.hidesBarsOnSwipe = false
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func alert(_ title:String, message:String = "") {
        let alert = UIAlertController(title: title, message:message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "I Understand", style: .default) { _ in
            
            
            })
        self.present(alert, animated: true){}
        
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
