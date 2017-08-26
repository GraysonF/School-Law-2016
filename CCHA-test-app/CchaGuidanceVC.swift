//
//  CchaGuidanceVC.swift
//  CCHA-test-app
//
//  Created by Grayson faircloth on 7/2/16.
//  Copyright © 2016 Grayson Faircloth. All rights reserved.
//

import UIKit

class CchaGuidanceVC: UIViewController, UIWebViewDelegate {

    @IBOutlet var webView: UIWebView!
    
    
    @IBOutlet var actInd: UIActivityIndicatorView!
    
    override func viewDidAppear(_ animated: Bool) {
        
        navigationController?.hidesBarsOnSwipe = true
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        loadRequest()
        
        
        
        // Do any additional setup after loading the view.
    }

    
    func webViewDidStartLoad(_: UIWebView) {
        
        actInd.startAnimating()
    }
    
    func webViewDidFinishLoad(_: UIWebView) {
        
        
        actInd.stopAnimating()
    }
    
    func loadRequest() {
        
        
        let url = URL(string: "http://www.cchalaw.com/school-law-app")
        
        let request = URLRequest(url: url!)
        
        webView.loadRequest(request)
        
        
    }
    
    @IBAction func swipeBack(_ sender: AnyObject) {
        
        
        if webView.canGoBack {
            webView.goBack()
        }
    }
    
    
    @IBAction func swipeForward(_ sender: AnyObject) {
        
        if webView.canGoForward {
            webView.goForward()
        }
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
