//
//  FavoritesVC.swift
//  CCHA-test-app
//
//  Created by Grayson faircloth on 7/2/16.
//  Copyright © 2016 Grayson Faircloth. All rights reserved.
//

import UIKit

class FavoritesVC: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet var tableView: UITableView!
    
    let defaults = UserDefaults.standard
    
    
    var favoritesArray:[Any] = []
    
    
    var selectedContent = ""
    
    override func viewDidAppear(_ animated: Bool) {
        tableView.reloadData()
    }
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.backBarButtonItem?.title = nil

        tableView.delegate = self
        tableView.dataSource = self
       
        navigationController?.hidesBarsOnSwipe = false
        //passArray()
        
        if defaults.array(forKey: "favoritesArray") != nil {
            
            favoritesArray = defaults.array(forKey: "favoritesArray")!
            
            
            print(favoritesArray)
            
        }
        

        
        
        
        
        
        
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //return initialCategories.count
        
        return favoritesArray.count
        
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        selectedContent = favoritesArray[indexPath.row] as! String
        
        performSegue(withIdentifier: "FavoritesToContent", sender: nil)
        
        
        
        
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        
        cell?.textLabel?.text = favoritesArray[indexPath.row] as? String
        cell!.textLabel?.font = UIFont.init(name: "Georgia", size: 14.0)
        
        return cell!
        
        
    }
    
    
    func passArray() {
        
        let otherVC = TestTextViewController()
        favoritesArray = otherVC.arrayOfFavorites
        
        print(otherVC.arrayOfFavorites)
        
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "FavoritesToContent" {
            
            if let destination = segue.destination as? TestTextViewController {
                
                destination.fileName = selectedContent
                
            }
            
            
        }
    }
    

}
