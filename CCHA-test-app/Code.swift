//
//  Code.swift
//  school2-law-test
//
//  Created by Grayson faircloth on 8/24/17.
//  Copyright © 2017 Grayson Faircloth. All rights reserved.
//

import Foundation

class Code {
    var number: String?
    var description: String?
    var name: String?
    var link: String?
    
    required init() {
        
    }
    
    //NEED to fix this part and revert it to the way they recommended it
    
    required init?(json: [String:Any]) {
        guard let description = json["shortdescription"] as? String,
            let number = json["number"] as? String,
            let name = json["name"] as? String,
            let link = json["link"] as? String else {
                return nil
                
        }
        
        self.number = number
        self.description = description
        self.name = name
        self.link = link
        
        
    }
}
