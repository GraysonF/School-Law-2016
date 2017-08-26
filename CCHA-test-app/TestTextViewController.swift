//
//  TestTextViewController.swift
//  CCHA-test-app
//
//  Created by Grayson faircloth on 6/29/16.
//  Copyright © 2016 Grayson Faircloth. All rights reserved.
//

import UIKit

class TestTextViewController: UIViewController, UITextViewDelegate, UISearchBarDelegate {
    
    var fileName = ""
    
    var potato = ""
    
    var isFavorited = Bool()
    
    
    //Need to switch out these images for an empty and filled in star
    
    var image = UIImage(named: "empty-star")
    
    var tappedImage = UIImage(named: "fill-star")
    
    var rightSearchBarButtonItem = UIBarButtonItem()
    var rightFavoriteBarButtonItem = UIBarButtonItem()
    
    let defaults = UserDefaults.standard
    
    var arrayOfFavorites = [String]()
    
    var anotherArray = [String]()
    
    var pie = [String]()
    
    var emptyImage = UIImage(named: "empty-star")
    
    var indexNumber = Int()
   
    var seperatedForSearch = [String]()
    
    var searchBar = UISearchBar()
    
    var searchShowing = false
    
    var filteredArray = [String]()
    
    var contents = ""
    
    var pinchGesture = UIPinchGestureRecognizer()
    
    let launchedTextBefore = UserDefaults.standard.bool(forKey: "launchedTextBefore")
    
    //let filepath1 = NSBundle.mainBundle().pathForResource("\(fileName)", ofType: "txt")
    
    
    
   // let url: NSURL = NSURL.fileURLWithPath(filepath!)!
    
    
    override func viewWillAppear(_ animated: Bool) {
        
        self.title = fileName
        
        navigationController?.navigationBar.titleTextAttributes = [ NSFontAttributeName: UIFont(name: "Verdana", size: 14.0)!, NSForegroundColorAttributeName: UIColor.white]
        
        DispatchQueue.main.async{
            self.textView.scrollRangeToVisible((NSMakeRange(0, 0)))
        }
    }
    
    @IBOutlet var textView: UITextView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        //let filepath2 = Bundle.main.path(forResource: fileName, ofType: "txt")
        
        //print(filepath2)
        if launchedTextBefore  {
            //print("Not first launch.")
        }
        else {
            
            alert("You can now pinch the screen to grow or shrink the font size to your liking. Try it out now!")
            UserDefaults.standard.set(true, forKey: "launchedTextBefore")
            
            
        }
        
        textView.isUserInteractionEnabled = true
        textView.isMultipleTouchEnabled = true
        
        pinchGesture = UIPinchGestureRecognizer(target: self, action: #selector(pinchRecognized(_:)))
        textView.addGestureRecognizer(pinchGesture)
        
        navigationController?.hidesBarsOnSwipe = false
        if defaults.array(forKey: "favoritesArray") != nil {
            
            pie = (defaults.array(forKey: "favoritesArray") as? [String])!
            
            
            //print(pie)
            
           
                

            
            
            
            
            
            
            
        }
        
        
        if pie.contains(fileName) {
            
            
               indexNumber = pie.index(of: fileName)!
            
            
            image = UIImage(named: "fill-star")
            
            //print("Yes")
        }
    
        
        
        
        //We are here trying to do something with this. The hi part worked with the append here worked but I cant get it to work other places.
        
        
        
            
        
            
        

        
        //potato = fileName
        
        
        
        
    
        //replace with filename
        
        if let filepath = Bundle.main.path(forResource: fileName, ofType: "txt") {
            do {
                contents = try String(contentsOfFile: filepath, encoding: String.Encoding.isoLatin1)
                
                
                //print(contents)
                
                //seperatedForSearch = contents.components(separatedBy: " ")
                //print(seperatedForSearch)
                
                textView.text = contents
            } catch {
                // contents could not be loaded
                print(error)
            
            }
        } else {
                print("No contents found")
        }
        
        rightSearchBarButtonItem = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.search, target: self, action: #selector(TestTextViewController.searchTapped))
        
       
        
            
            
            //I think I'm probably going to have to do some kind of check where it checks Nsuserdefaults array for the name of the current document then based on that updates the favorites
            
            
            
            //Checks to see if document is favorited
        
        
        
        
        
        rightFavoriteBarButtonItem = UIBarButtonItem(image: image, style: UIBarButtonItemStyle.plain, target: self, action: #selector(TestTextViewController.favoriteTapped))
        
        rightSearchBarButtonItem.tintColor = UIColor.white
        rightFavoriteBarButtonItem.tintColor = UIColor.white
        
       self.navigationItem.setRightBarButtonItems([rightSearchBarButtonItem, rightFavoriteBarButtonItem], animated: true)
        
       
        

        
        
        
        // Do any additional setup after loading the view.
    }
    
    
    
    func alert(_ title:String, message:String = "") {
        let alert = UIAlertController(title: title, message:message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Cool!", style: .default) { _ in
            
            
            })
        self.present(alert, animated: true){}
        
    }

    
    
    func favoriteTapped(_ sender: UIBarButtonItem.Type) {
        
        //print("Favorite Tapped")
        
        let imageChecker = UIImage(named: "empty-star")
        
        if rightFavoriteBarButtonItem.image == imageChecker {
            
            
            rightFavoriteBarButtonItem.image = tappedImage
            
            //print(fileName)
            
            
            pie.append(fileName)
            
            
//            defaults.setObject(fileName, forKey: "fileName")
//            
//            if let selectedFile = defaults.stringForKey("fileName") {
//                
//                arrayOfFavorites.append(selectedFile)
//            }
            
        } else {
            
            
            rightFavoriteBarButtonItem.image = emptyImage
            
            
            pie.remove(at: indexNumber)
            
            //defaults.removeObjectForKey("fileName")
            
            //arrayOfFavorites.removeLast()
            
//            let otherVC = FavoritesVC()
//            
//            otherVC.updateTableView()

            
        }
        
        
        
        
        defaults.set(pie, forKey: "favoritesArray")
        
        
        
        //print(arrayOfFavorites)
        
        //print(defaults.arrayForKey("favoritesArray")!)
//        
//        
//
//
//        print(otherVC.favoritesArray)
        
        
        
        
        //Ok so this is replacing the file name instead of adding it to array
        
        
        
        
        
    }
    
    
   
    func searchTapped(_ sender: UIButton) {
        
        print("Search tapped")
        
        if searchShowing {
            
            searchBar.isHidden = true
            self.navigationItem.backBarButtonItem?.title = "Back"
            
            
            
            searchShowing = false
            
        } else {
            
            createSearchBar()
            
            searchBar.isHidden = false
        }
        
    }
    
    func createSearchBar() {
        
        
        searchBar.showsCancelButton = false
        searchBar.placeholder = "Search Content"
        searchBar.delegate = self
        
        self.navigationItem.titleView = searchBar
        
        searchShowing = true
        
    }
    
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        
        searchBar.resignFirstResponder()
        
        //filteredArray = seperatedForSearch.filter({ $0.containsString(searchBar.text!)})
        
        
        //Shoutout to Google
        
        let searchString = searchBar.text
        let baseString = contents
        
        
        if contents != "" {
            do {
                let regex = try NSRegularExpression(pattern: searchString!, options: .caseInsensitive)
                
                let attributed = NSMutableAttributedString(string: baseString)
                
                
                
                for match in regex.matches(in: baseString, options: NSRegularExpression.MatchingOptions(), range: NSRange(location: 0, length: baseString.utf16.count)) as [NSTextCheckingResult] {
                    attributed.addAttribute(NSBackgroundColorAttributeName, value: UIColor.yellow, range: match.range)
                }
                textView.attributedText = attributed
    
    
            } catch {
                print(error)
            }
        }
        
        //print("We are on the right track... I think")
        
       
    }
    
    
    @IBAction func pinchRecognized(_ pinch: UIPinchGestureRecognizer) {
        let fontSize = self.textView.font!.pointSize*(pinch.scale)/2
        if fontSize > 12 && fontSize < 40{
            textView.font = UIFont(name: self.textView.font!.fontName, size:fontSize)
        }
    }
    
        
        
//        let nsText = contents as NSString
//        let textRange = NSMakeRange(0, nsText.length)
//        
//        print(nsText.length)
//        let attributedString = NSMutableAttributedString(string: contents)
//        
//        nsText.enumerateSubstringsInRange(textRange, options: .ByWords, usingBlock: {
//            (substring, substringRange, _, _) in
//            
//            if (substring == searchBar.text) {
//                attributedString.addAttribute(NSBackgroundColorAttributeName, value: UIColor.redColor(), range: substringRange)
//                
//                //print("yes")
//            }
//        })
        //print(attributedString)
        
//        let selectedRange: NSRange = filteredArray.indices as! NSRange
//        
//        let attributedString: NSMutableAttributedString = NSMutableAttributedString(attributedString: textView.attributedText)
//        attributedString.addAttribute(NSBackgroundColorAttributeName, value: UIColor.yellowColor(), range: selectedRange)
//        
//        self.textView.attributedText = attributedString
    
    }


//    @IBAction func highlight(sender: AnyObject) {
//        
//        let selectedRange: NSRange = textView.selectedRange
//        let attributedString: NSMutableAttributedString = NSMutableAttributedString(attributedString: textView.attributedText)
//        attributedString.addAttribute(NSBackgroundColorAttributeName, value: UIColor.yellowColor(), range: selectedRange)
//        self.textView.attributedText = attributedString
//
//        
//        
//    
//        textViewDidEndEditing(textView)
//    }
    
    
    
//    func textViewDidEndEditing(textView: UITextView) {
//        let data = try! textView.attributedText.dataFromRange(NSMakeRange(0, textView.attributedText.length), documentAttributes: [NSDocumentTypeDocumentAttribute: NSPlainTextDocumentType])
//        data.writeToFile(self.filepath!, atomically: true)
//        
//        
//        
//        // This saves edits users would make to the file but I haven't yet figured out how to get it to save highlights
//    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */


