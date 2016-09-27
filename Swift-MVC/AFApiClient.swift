//
//  AFApiClient.swift
//  Research-UnitTest
//
//  Created by Alfian on 9/22/16.
//  Copyright © 2016 Alfian. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON

typealias result = (JSON?,NSError?)

class AFApiClient: NSObject {
  
   func request(method: Alamofire.Method, urlString: String, requestHendler: result -> Void) {
    var requestResult: (jsonData: JSON?, error: NSError?)
    Alamofire.request(.GET, urlString)
      .validate()
      .responseJSON { response in
        switch response.result {
        case .Success:
          if let data = response.result.value {
            requestResult.jsonData = JSON(data)
            requestHendler(requestResult)
          }
        case .Failure(let _error):
          requestResult.error = _error
          requestHendler(requestResult)
        }
    }
    

    
  }

}
