//
//  SECustomer.swift
//  ArenaDemoAPI
//
//  Created by Lu Kien Quoc on 6/19/18.
//  Copyright © 2018 Newstead Technologies VN. All rights reserved.
//

import Foundation

open class SECustomer: SEBase {
    /// get List Customer get all
    open class func getList(_ request: GetCustomerRequest, animation: ((Bool) -> Void)? = nil, completed: @escaping ((GetCustomerResponse?) -> Void)) {
        let responseData = GetCustomerResponse()
        func handleFail() {
            animation?(false)
            completed(nil)
        }
        
        let info = getInfoRequest(request)
        animation?(true)
        let apiLink = "wc/v2/customers"
        _ = info.oauthswift.client.get(APIURL + apiLink, parameters: info.parameters, success: { response in
            animation?(false)
            
            guard let arrJsonObject = try? response.jsonObject() as? Array<AnyObject>, arrJsonObject != nil else {
                handleFail()
                return
            }
            
            arrJsonObject?.forEach({ (jsonObject) in
                if let obj = CustomerDTO.fromObject(jsonObject) {
                    responseData.lstCustomer.append(obj)
                }
            })
            animation?(false)
            completed(responseData)
            
        }, failure: { error in
            handleFail()
            print("Call service \(#function)() failed!. \(error)")
        })
        
    }
}
