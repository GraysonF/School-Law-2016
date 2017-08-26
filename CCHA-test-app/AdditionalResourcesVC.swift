//
//  AdditionalResourcesVC.swift
//  CCHA-test-app
//
//  Created by Grayson faircloth on 7/2/16.
//  Copyright © 2016 Grayson Faircloth. All rights reserved.
//

import UIKit

class AdditionalResourcesVC: UIViewController {

    
    @IBOutlet var label: UILabel!
    
    var array = ["Indiana Department of Education", "Indiana Attorney General Advisory Opinions", "Indiana Education Employment Relations Board", "Indiana Public Access Counselor", "Indiana State Board of Accounts - Schools", "DLGF School Budget Information", "Indiana School Boards Association", "DOE Office of Civil Rights Reading Room", "U.S. Department of Labor"]
    
    
    var selectedContent = ""
    
    var webLink = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        navigationController?.hidesBarsOnSwipe = false
        
    }
    
    @IBAction func indianaDOE(_ sender: AnyObject) {
        
        webLink = "http://www.doe.in.gov/"
        
        segueTime()
    }
    
    @IBAction func indianaAtorneyBtn(_ sender: AnyObject) {
        
        webLink = "http://www.in.gov/attorneygeneral/2352.htm"
        
        segueTime()
    }
    
    @IBAction func indianaEducationBtn(_ sender: AnyObject) {
        
        webLink = "http://www.in.gov/ieerb/"
        
        segueTime()
    }
    
    @IBAction func IndianaCounselorBtn(_ sender: AnyObject) {
        
        webLink = "http://www.in.gov/pac/"
        
        segueTime()
    }
    
    @IBAction func indianaStateBtn(_ sender: AnyObject) {
        
        webLink = "http://www.in.gov/sboa/4449.htm"
        
        segueTime()
    }
    
    
    @IBAction func dlgfSchoolBtn(_ sender: AnyObject) {
        
        webLink = "http://www.in.gov/dlgf/4873.htm"
        
        segueTime()
    }
    
    @IBAction func schoolBoardBtn(_ sender: AnyObject) {
        
        webLink = "http://isba-ind.org/"
        
        segueTime()
    }
    
    @IBAction func doeBtn(_ sender: AnyObject) {
        
        webLink = "http://www2.ed.gov/about/offices/list/ocr/frontpage/faq/readingroom.html"
        
        segueTime()
    }
    
    @IBAction func usLaborBtn(_ sender: AnyObject) {
        
        webLink = "https://www.dol.gov/"
        
        segueTime()
    }
    
    
    func segueTime() {
        
        performSegue(withIdentifier: "loadWebPage", sender: nil)
    }
    
    
//    @IBAction func selectBtn(sender: AnyObject) {
//        
//        switch selectedContent {
//        case "Indiana Attorney General Advisory Opinions":
//            webLink = "http://www.in.gov/attorneygeneral/2352.htm"
//            
//        case "Indiana Department of Education":
//            webLink = "http://www.doe.in.gov/"
//            
//        case "Indiana Education Employment Relations Board":
//            webLink = "http://www.in.gov/ieerb/"
//            
//        case "Indiana Public Access Counselor":
//            webLink = "http://www.in.gov/pac/"
//            
//        case "Indiana State Board of Accounts - Schools":
//            webLink = "http://www.in.gov/sboa/4449.htm"
//            
//            
//        case "DLGF School Budget Information":
//            webLink = "http://www.in.gov/dlgf/4873.htm"
//            
//        case "Indiana School Boards Association":
//            webLink = "http://isba-ind.org/"
//            
//        case "DOE Office of Civil Rights Reading Room":
//            webLink = "http://www2.ed.gov/about/offices/list/ocr/frontpage/faq/readingroom.html"
//            
//        case "U.S. Department of Labor":
//            webLink = "https://www.dol.gov/"
//        default:
//            webLink = "http://www.doe.in.gov/"
//        }
    
        
        
        //performSegueWithIdentifier("loadWebPage", sender: nil)
        
  //  }

   

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "loadWebPage" {
            
            if let destination = segue.destination as? ARWebPage {
                
                destination.webLink = webLink
                
            }
        }
        
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
   

}
