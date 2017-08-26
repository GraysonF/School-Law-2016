//
//  SchoolLawsTableVC.swift
//  CCHA-test-app
//
//  Created by Grayson faircloth on 7/31/16.
//  Copyright © 2016 Grayson Faircloth. All rights reserved.
//

import UIKit
import Foundation

class SchoolLawsTableVC: UITableViewController, UISearchBarDelegate {
    
    
    
    var categories: [String] = ["Indiana Code","Indiana Administrative Code","Indiana Constitution", "Federal Statutes", "Federal Regulations"]
    
    
    
    var selectedCategory = ""
    
    var searchShowing = false
    let searchBar = UISearchBar()
    var filteredArray = [String]()
    
    
    var shouldShowSearchResults = false
   
    
    @IBOutlet var tableview: UITableView!
    
    override func viewWillAppear(_ animated: Bool) {
        
        searchBar.isHidden = true
        searchShowing = false
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.hidesBarsOnSwipe = false
        
        self.navigationController!.navigationBar.tintColor = UIColor.white
        
        
        let rightSearchBarButtonItem:UIBarButtonItem = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.search, target: self, action: #selector(SchoolLawsTableVC.searchTapped))
        
        
        self.navigationItem.setRightBarButton(rightSearchBarButtonItem, animated: true)
       
    }


    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        if shouldShowSearchResults {
            return filteredArray.count
        } else {
           return categories.count
        }
        
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)

        
        if shouldShowSearchResults {
            
            cell.textLabel?.text = filteredArray[indexPath.row]
            
        } else {
        cell.textLabel?.text = categories[indexPath.row]
        }
        cell.textLabel?.font = UIFont.init(name: "Georgia", size: 20.0)
        

        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        
        
        if shouldShowSearchResults {
            selectedCategory = filteredArray[indexPath.row]
            
        } else {
            
            selectedCategory = categories[indexPath.row]
        }
        
        
        
        
        
        performSegue(withIdentifier: "firstSegue", sender: nil)
        
        
        tableview.deselectRow(at: indexPath, animated: true)
    }
   
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "firstSegue" {
            if let destination = segue.destination as? TitleTableVC {
                
                
                //let path = tableview.indexPathForSelectedRow
                //let cell = tableview.cellForRowAtIndexPath(path!)
                destination.currentSelectedCategory = selectedCategory
            }
        }
        
        
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
    
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        
        shouldShowSearchResults = true
        
        
        filteredArray = categories.filter({ $0.contains(searchText)})
        
        //print(filteredArray)
        
        
        if searchText == "" {
            filteredArray = categories
        }
        
        tableview.reloadData()
        
        //Now I should probably setup a variable to hold the new text and something to filter the array
    }
   
    
    
    func createSearchBar() {
        
        
        searchBar.showsCancelButton = false
        searchBar.placeholder = "Search by title"
        searchBar.delegate = self
        
        self.navigationItem.titleView = searchBar
        
        
        searchShowing = true
        
    }
    
    

}
