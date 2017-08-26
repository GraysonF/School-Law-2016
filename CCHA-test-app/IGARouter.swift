//
//  IGARouter.swift
//  school2-law-test
//
//  Created by Grayson faircloth on 8/22/17.
//  Copyright © 2017 Grayson Faircloth. All rights reserved.
//

import Foundation
import Alamofire

enum IGARouter: URLRequestConvertible {
    static let baseURLString = "https://api.iga.in.gov/2017/ic"
    
    
    
    
    case getPublic()
    
    
    func asURLRequest() throws -> URLRequest {
        var method: HTTPMethod {
            switch self {
            case .getPublic:
                return .get
            }
        }
        
        let url: URL = {
            let relativePath: String
            switch self {
            case .getPublic():
                relativePath = "/titles"
            }
            
            var url = URL(string: IGARouter.baseURLString)!
            url.appendPathComponent(relativePath)
            return url
        }()
        
        let params: ([String: Any]?) = {
            switch self {
            case .getPublic:
                return nil
            }
        }()
        
        var urlRequest = URLRequest(url: url)
        urlRequest.httpMethod = method.rawValue
        
        urlRequest.addValue("Token 8586a9aa5fb9915c76645794188781eb4d9a2c3c", forHTTPHeaderField: "Authorization")
        urlRequest.addValue("application/json", forHTTPHeaderField: "Accept")
        
        let encoding = JSONEncoding.default
        return try encoding.encode(urlRequest, with: params)
    }
    
    
}
