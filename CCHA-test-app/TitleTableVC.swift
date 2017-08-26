//
//  TitleTableVC.swift
//  CCHA-test-app
//
//  Created by Grayson faircloth on 8/1/16.
//  Copyright © 2016 Grayson Faircloth. All rights reserved.
//

import UIKit

class TitleTableVC: UITableViewController, UISearchBarDelegate {
    
    var indianaCode: [String] = ["Indiana Code","Title 1 - General Provisions", "Title 2 - General Assembly", "Title 3 - Elections", "Title 4 - State Offices and Administration", "Title 5 - State and Local Administration", "Title 6 - Taxation", "Title 7.1 - Alchohol and Tobacco", "Title 8 - Utilities and Transportation", "Title 9 - Motor Vehicles", "Title 10 - Public Safety", "Title 11 - Corrections", "Title 12 - Human Services", "Title 13 - Environment", "Title 14 - Natural and Cultural Resources", "Title 16 - Health", "Title 20 - Education", "Title 21 - Higher Education", "Title 22 - Labor and Safety", "Title 24 - Trade Regulation", "Title 25 - Professions and Occupations", "Title 26 - Commercial Law", "Title 27 - Insurance", "Title 31 - Family Law and Juvenile Law", "Title 32 - Property", "Title 33 - Courts and Court Officers", "Tile 34 - Civil Law and Procedure", "Title 35- Criminal Law and Procedure", "Title 36 - Local Government"]
    
    var indianaAdministrativeCode: [String] = ["Indiana Administrative Code", "Title 35 - Board of Trustees of the Indiana Public Retirement System", "Title 50 - Department of Local Government Finance", "Title 62 - Office of the Public Access Counselour","Title 140 - Bureau of Motor Vehicles", "Title 357 - Indiana Pesticide Review Board", "Title 410 - Indiana State Department of Health", "Title 511 - Indiana State Board of Education", "Title 512 - Department of Education", "Title 513 - Commission on Seclusion and Restraint in Schools", "Title 515 - Advisory Board of the Division of Professional Standards", "Title 560 - Indiana Employment Relations Board", "Title 575 - State School Bus Committee", "Title 910 - Civil Rights Commission"]
    
    var indianaConstitution: [String] = ["Indiana Constitution", "Article 1 - Bill of Rights", "Article 2 - Suffrage and Election", "Article 3 - Distribution of Powers", "Article 4 - Legislative", "Article 5 - Executive", "Article 6 - Administrative", "Article 7 - Judicial", "Article 8 - Education", "Article 9 - State Institutions", "Article 10 - Finance", "Article 11 - Corporations", "Article 12 - Militia", "Article 13 - Political and Municipal Coprorations", "Article 14 - Boundaries", "Article 15 - Miscellaneous", "Article 16 - Amendments"]

    
    var federalStatutes: [String] = ["Federal Statutes", "ADA - The Americans With Diabailties Act", "ADEA - Age Discrimination In Employment Act - 29 USC 621", "FERPA - Family Educational Rights And Privacy Act", "FMLA - Family and Medical Leave Act", "IDEA - Individuals with Disabilities Education Act", "Title IX Statute - 20 USC 1681 - 1688", "Title VI Statute - 42 USC 2000d", "Title VII Statute - 42 U.S.C. 2000e"]


    
    var federalRegulations: [String] = ["Federal Regulations", "ADA Standards for Accessible Design", "ADA Title II Regulations - 28 CFR 35", "ADA Title III Regulations - 28 CFR 36", "DOE Office of Civil Rights Regulations - 34 CFR 100", "EEOC Employment Non-Discrimination Regulations (29 CFR 1600)", "FERPA Regulations - 34 CFR 99", "FMLA regulations - 29 CFR 825", "IDEA Regulations (Part B) - 34 CFR 300", "IDEA Regulations (Part B) - 34 CFR 301 (preschool programs)", "IDEA Regulations (Part C) - 34 CFR 303", "IDEA Regulations (Preschool Grants) - 34 CFR 301", "Section 504 Regulations - 34 CFR 104"]


    
    


    
    
    
    
    
    var currentArray = [String]()
    
    var searchShowing = false
    
    var arrayOfArrays = [[String]]()
    
    
    let searchBar = UISearchBar()
    
    var rightSearchBarButtonItem = UIBarButtonItem()
    
    
    var filteredArray = [String]()
    
    var shouldShowSearchResults = false
    
    @IBOutlet var tableview: UITableView!
    
    var selectedCategory = ""
    var currentSelectedCategory = ""
    var selectedContent = ""
    
    override func viewWillAppear(_ animated: Bool) {
        searchBar.isHidden = true
        searchShowing = false
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        appendArrays()
        determineCorrectArray()
        
        tableview.rowHeight = 60.0
        
        navigationController?.hidesBarsOnSwipe = false
        
        rightSearchBarButtonItem = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.search, target: self, action: #selector(TitleTableVC.searchTapped))
        
        self.navigationItem.setRightBarButton(rightSearchBarButtonItem, animated: true)
        
        
        
        
        
        determineCorrectArray()
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }
    
    
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if shouldShowSearchResults {
            return filteredArray.count
        } else {
            return currentArray.count
        }

    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        if shouldShowSearchResults {
            
            cell.textLabel?.text = filteredArray[indexPath.row]
            
        } else {
            cell.textLabel?.text = currentArray[indexPath.row]
        }

        cell.textLabel?.font = UIFont.init(name: "Georgia", size: 16.0)
        
        
        return cell
    }
    
    func determineCorrectArray() {
        
        for var items in arrayOfArrays {
            if items.contains(currentSelectedCategory) {
                items.remove(at: 0)
                currentArray = items
                
            }
        }
    }
    
    func appendArrays() {
        
    arrayOfArrays.append(indianaCode)
    arrayOfArrays.append(indianaAdministrativeCode)
    arrayOfArrays.append(indianaConstitution)
    arrayOfArrays.append(federalStatutes)
    arrayOfArrays.append(federalRegulations)
        
        
    }
    
    
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        //Might have to change this so it doesn't just look in the currentArray array. Need another if statement
        
        if shouldShowSearchResults {
            selectedContent = filteredArray[indexPath.row]
            
        } else {
            
            selectedContent = currentArray[indexPath.row]
        }
        
        
        
        if indianaCode.contains(selectedContent) || indianaAdministrativeCode.contains(selectedContent) {
            
            
            print("Yes")
            performSegue(withIdentifier: "SecondSegue", sender: nil)
            
        }
            
        else {
            
            performSegue(withIdentifier: "TitleToContent", sender: nil)
        }
        
        
        
        tableview.deselectRow(at: indexPath, animated: true)
        
        //print(selectedCategory)
        
        
    }
    
    func searchTapped(_ sender: UIButton) {
        
        print("Search tapped")
        
        if searchShowing {
            
            searchBar.isHidden = true
            self.navigationItem.backBarButtonItem?.title = "Back"
            
            searchBar.resignFirstResponder()
            
            searchShowing = false
            
        } else {
            
            createSearchBar()
            
            searchBar.isHidden = false
        }
        
    }
    
    func createSearchBar() {
        
        
        searchBar.showsCancelButton = false
        searchBar.placeholder = "Search by title"
        searchBar.delegate = self
        
        self.navigationItem.titleView = searchBar
    
        searchShowing = true
        
    }
    
    //This function pulls most of the weight for the tableView updating. Shoutout.
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        
        shouldShowSearchResults = true
        
        
        filteredArray = currentArray.filter({ $0.contains(searchText)})
        
        //print(filteredArray)
        
        
        if searchText == "" {
            filteredArray = currentArray
        }
        
        tableview.reloadData()
        
        //Now I should probably setup a variable to hold the new text and something to filter the array
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "SecondSegue" {
            if let destination = segue.destination as? ArticleTableVC {
                
                
                //let path = tableview.indexPathForSelectedRow
                //let cell = tableview.cellForRowAtIndexPath(path!)
                destination.articleSelectedCategory = selectedContent
                
                print(selectedContent)
            }
        }
        
        if segue.identifier == "TitleToContent" {
            
            if let destination = segue.destination as? TestTextViewController {
                
                
                destination.fileName = selectedContent
            }
        }
        
    }
    
    
}
