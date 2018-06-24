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
}
