//
//  APIHit.swift
//  The Care Notebook
//
//  Created by Sonu Malik on 16/06/17.
//  Copyright © 2017 Sonu Malik. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON
class APIHit {
    var viewController : UIViewController
    let httpURL = Strings.baseURL + "graphql"
    init(viewController : UIViewController) {
        self.viewController = viewController
    }
    
    func postRequest(query : String , callback : @escaping (JSON?) ->()){
        let parameters: Parameters = ["query": "\(query)"]
        Alamofire.request(httpURL ,method: .post, parameters: parameters, encoding: JSONEncoding.default)
            .responseJSON { response in
                if(response.result.isSuccess){
                    let json = JSON(response.result.value!)
                    callback(json)
                }else if(response.result.isFailure){
                    self.viewController.toast(message: response.result.error!.localizedDescription, title: "Error", backgroundColor: .red);
                    callback(nil)
                }
        }
    }
}
