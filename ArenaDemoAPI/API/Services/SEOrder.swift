//
//  SEOrder.swift
//  ArenaDemoAPI
//
//  Created by Lu Kien Quoc on 6/22/18.
//  Copyright © 2018 Newstead Technologies VN. All rights reserved.
//

import Foundation
import OAuthSwift

open class SEOrder: SEBase {
    /// get List Customer get all
    open class func getList(_ request: GetOrderRequest, animation: ((Bool) -> Void)? = nil, completed: @escaping ((GetOrderResponse) -> Void)) -> OAuthSwiftRequestHandle? {
        let responseData = GetOrderResponse()
        
        let info = getInfoRequest(request)
        animation?(true)
        let apiLink = "wc/v2/orders"
        
        return info.oauthswift.client.get(APIURL + apiLink, parameters: info.parameters, success: { response in
            animation?(false)
            
            guard let arrJsonObject = try? response.jsonObject() as? Array<Any>, arrJsonObject != nil else {
                completed(responseData)
                return
            }
            
            arrJsonObject?.forEach({ (jsonObject) in
                if let obj = OrderDTO.fromObject(jsonObject) {
                    responseData.lstOrder.append(obj)
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
    
    open class func createOrUpdate(_ request: OrderDTO, animation: ((Bool) -> Void)? = nil, completed: @escaping ((GetOrderResponse) -> Void)) -> OAuthSwiftRequestHandle? {
        let responseData = GetOrderResponse()
        
        let info = getInfoRequest(request)
        animation?(true)
        var apiLink = "wc/v2/orders"
        
        // for update
        if let id = request.id {
            apiLink += "/\( id )"
        }
        print(request.toString())
        return info.oauthswift.client.post(APIURL + apiLink, parameters: info.parameters, headers: headers, success: { response in
            animation?(false)
            
            guard let jsonObject = try? response.jsonObject() else {
                completed(responseData)
                return
            }
            
            if let obj = OrderDTO.fromObject(jsonObject) {
                responseData.lstOrder.append(obj)
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
    
    open class func delete(_ request: DeleteOrderRequest, animation: ((Bool) -> Void)? = nil, completed: @escaping ((GetOrderResponse) -> Void)) -> OAuthSwiftRequestHandle? {
        let responseData = GetOrderResponse()
        
        let info = getInfoRequest(request)
        animation?(true)
        let apiLink = "wc/v2/customers/\( request.id ?? 0 )"
        
        return info.oauthswift.client.delete(APIURL + apiLink, parameters: info.parameters, success: { response in
            animation?(false)
            
            guard let jsonObject = try? response.jsonObject() else {
                completed(responseData)
                return
            }
            
            if let obj = OrderDTO.fromObject(jsonObject) {
                responseData.lstOrder.append(obj)
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
