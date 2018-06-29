//
//  SECustomer.swift
//  ArenaDemoAPI
//
//  Created by Lu Kien Quoc on 6/19/18.
//  Copyright © 2018 Newstead Technologies VN. All rights reserved.
//

import Foundation
import OAuthSwift

open class SECustomer: SEBase {
    /// get List Customer get all
    open class func getList(_ request: GetCustomerRequest, animation: ((Bool) -> Void)? = nil, completed: @escaping ((GetCustomerResponse) -> Void)) -> OAuthSwiftRequestHandle? {
        let responseData = GetCustomerResponse()
        
        let info = getInfoRequest(request)
        animation?(true)
        let apiLink = "/wp-json/wc/v2/customers"
        
        return info.oauthswift.client.get(apiURL + apiLink, parameters: info.parameters, success: { response in
            animation?(false)
            
            guard let arrJsonObject = try? response.jsonObject() as? Array<Any>, arrJsonObject != nil else {
                completed(responseData)
                return
            }
            
            arrJsonObject?.forEach({ (jsonObject) in
                if let obj = CustomerDTO.fromObject(jsonObject) {
                    responseData.lstCustomer.append(obj)
                }
            })

            responseData.success = true
            completed(responseData)
            
        }, failure: { error in
            responseData.updateError(error: error)
            animation?(false)
            completed(responseData)
            print("Call service \(#function)() failed!. \(error)")
        })
        
    }
    
    open class func createOrUpdate(_ request: CustomerDTO, animation: ((Bool) -> Void)? = nil, completed: @escaping ((GetCustomerResponse) -> Void)) -> OAuthSwiftRequestHandle? {
        let responseData = GetCustomerResponse()

        let info = getInfoRequest(request)
        animation?(true)
        var apiLink = "/wp-json/wc/v2/customers"

        // for update
        if let id = request.id {
            apiLink += "/\( id )"
        }

        return info.oauthswift.client.post(apiURL + apiLink, parameters: info.parameters, headers: headers, success: { response in
            animation?(false)
            
            guard let jsonObject = try? response.jsonObject() else {
                completed(responseData)
                return
            }
            
            if let obj = CustomerDTO.fromObject(jsonObject) {
                responseData.lstCustomer.append(obj)
            }
            
            responseData.success = true
            completed(responseData)

        }, failure: { error in
            responseData.updateError(error: error)
            animation?(false)
            completed(responseData)
            print("Call service \(#function)() failed!. \(error)")
        })

    }

    open class func delete(_ request: DeleteCustomerRequest, animation: ((Bool) -> Void)? = nil, completed: @escaping ((GetCustomerResponse) -> Void)) -> OAuthSwiftRequestHandle? {
        let responseData = GetCustomerResponse()
        
        let info = getInfoRequest(request)
        animation?(true)
        let apiLink = "/wp-json/wc/v2/customers/\( request.id ?? 0 )"
        
        return info.oauthswift.client.delete(apiURL + apiLink, parameters: info.parameters, success: { response in
            animation?(false)
            
            guard let jsonObject = try? response.jsonObject() else {
                completed(responseData)
                return
            }
            
            if let obj = CustomerDTO.fromObject(jsonObject) {
                responseData.lstCustomer.append(obj)
            }
            
            responseData.success = true
            completed(responseData)
            
        }, failure: { error in
            responseData.updateError(error: error)
            animation?(false)
            completed(responseData)
            print("Call service \(#function)() failed!. \(error)")
        })
        
    }

    
}
