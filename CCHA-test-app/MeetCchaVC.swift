//
//  MeetCchaVC.swift
//  CCHA-test-app
//
//  Created by Grayson faircloth on 7/2/16.
//  Copyright © 2016 Grayson Faircloth. All rights reserved.
//

import UIKit

class MeetCchaVC: UIViewController, UIWebViewDelegate {

    @IBOutlet var webView: UIWebView!
    
    @IBOutlet var actInd: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationController?.hidesBarsOnSwipe = true
        
        loadRequest()
        
        
        
        // Could maybe add a refresh bar button item to take user back to meet ccha main page

        // Do any additional setup after loading the view.
        
        
      
    }
    
    
    func webViewDidStartLoad(_ webView: UIWebView) {
        
        
        //Connect the webview to the view delegate on the main storyboard. Add UIWebViewDelegate at top
        
        actInd.startAnimating()
    }
    
    
    func webViewDidFinishLoad(_ webView: UIWebView) {
        actInd.stopAnimating()
    }
    
    

    func loadRequest() {
        
        let url = URL(string: "http://www.cchalaw.com/our-people")
        
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
