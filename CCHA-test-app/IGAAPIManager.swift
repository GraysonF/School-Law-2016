//
//  IGAAPIManager.swift
//  school2-law-test
//
//  Created by Grayson faircloth on 8/22/17.
//  Copyright © 2017 Grayson Faircloth. All rights reserved.
//

import Foundation
import Alamofire


class IGAAPIManager {
    
    
    
    static let sharedInstance = IGAAPIManager()
    
    func printPublicCode() {
        Alamofire.request(IGARouter.getPublic())
            .responseString { response in
                if let receivedString = response.result.value {
                    print(receivedString)
                }
                
        }
    }
    
    func fetchPublicGists(completionHandler: @escaping (Result<[Code]>) -> Void) {
        let _ = Alamofire.request(IGARouter.getPublic())
            .responseJSON { response in
                let result = self.codeArrayFromResponse(response: response)
                completionHandler(result)
        }
    }
    
    private func codeArrayFromResponse(response: DataResponse<Any>) -> Result<[Code]> {
        guard response.result.error == nil else {
            print(response.result.error!)
            return .failure(IGAAPIManagerError.network(error: response.result.error!))
        }
        
        if let outsideJSON = response.result.value as? [String:Any] {
            
            guard let innerJSON = outsideJSON["items"] as? [[String:Any]] else {
                print("did not get inner json from API")
                return .failure(IGAAPIManagerError.objectSerialization(reason: "Did not get JSON dictionary in response"))
            }
            
            var codes = [Code]()
            for item in innerJSON {
                if let code = Code(json: item) {
                    codes.append(code)
                }
            }
            
            return .success(codes)
            
        } else {
            print("did not get outside json from API")
            return .failure(IGAAPIManagerError.objectSerialization(reason: "Did not get JSON dictionary in response"))
        }
        
        
    }
    
    
    enum IGAAPIManagerError: Error {
        case network(error: Error)
        case apiProvidedError(reason: String)
        case authCouldNot(reason: String)
        case authLost(reason: String)
        case objectSerialization(reason: String) }
}
