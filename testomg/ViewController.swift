//
//  ViewController.swift
//  testomg
//
//  Created by Jonathan on 1/4/18.
//  Copyright © 2018 Jonathan. All rights reserved.
//

import UIKit
import PromiseKit
import OMGHTTPURLRQ
//import PMKOMGHTTPURLRQ <-- Error: No such module 'PMKOMGHTTPURLRQ'

class ViewController: UIViewController {

    static func testGetSyntax() -> Void {
        
        // OK
        let p = URLSession.shared.GET("http://example.com")
        p.then { (data) -> Void in
            
        }
        
        let q2 = ["foo": "bar",
                  "baz": 1]
        // Error: Cannot convert value of type 'String' to expected dictionary key type 'NSObject'
        let p2 = URLSession.shared.GET("http://example.com", query: q2)
        p2.then { (data) -> Void in
        
        }

        // Must cast all 'String' to 'NSString', 'Int' to 'NSNumber', etc...
        let q3 = ["foo" as NSString: "bar" as NSString,
                  "baz" as NSString: 1     as NSNumber]
        let p3 = URLSession.shared.GET("http://example.com", query: q3)
        p2.then { (data) -> Void in
        
        }
        
    }

}
