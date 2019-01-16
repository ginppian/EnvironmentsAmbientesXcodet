//
//  Config.swift
//  targets2
//
//  Created by Gmo Ginppian on 1/10/19.
//  Copyright © 2019 gonet. All rights reserved.
//

import Foundation

class Config {
    
    static var endpoint: String  {
        get {
            
            if let path = Bundle.main.path(forResource: "Info", ofType: "plist") {
                if let dic = NSDictionary(contentsOfFile: path) {
                    print(dic)
                    return dic["ENDPOINT_URL"] as? String ?? ""
                }
            }
            
            return ""
        }
    }
}
