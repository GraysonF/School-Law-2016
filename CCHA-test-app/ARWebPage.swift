//
//  ARWebPage.swift
//  CCHA-test-app
//
//  Created by Grayson faircloth on 8/25/16.
//  Copyright © 2016 Grayson Faircloth. All rights reserved.
//

import UIKit

class ARWebPage: UIViewController, UIWebViewDelegate {
    
    var webLink = ""

    @IBOutlet var webView: UIWebView!
    
    @IBOutlet var act: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationController?.hidesBarsOnSwipe = false
        
        loadRequest()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    func webViewDidStartLoad(_ webView: UIWebView) {
        
        print("Started")
        
        act.startAnimating()
    }
    
    func webViewDidFinishLoad(_ webView: UIWebView) {
        
        print("Finished")
        act.stopAnimating()
        
    }
    
    
    func loadRequest() {
        
        let url = URL(string: webLink)
        
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
