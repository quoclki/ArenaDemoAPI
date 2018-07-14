//
//  SEPaymentMethod.swift
//  ArenaDemoAPI
//
//  Created by Lu Kien Quoc on 6/25/18.
//  Copyright © 2018 Arena Design VN. All rights reserved.
//

import Foundation
import OAuthSwift

open class SEPaymentMethod: SEBase {
    /// get List Customer get all
    open class func getList(_ request: BaseRequest, animation: ((Bool) -> Void)? = nil, completed: @escaping ((GetPaymentResponse) -> Void)) -> OAuthSwiftRequestHandle? {
        let responseData = GetPaymentResponse()
        
        let info = getInfoRequest(request)
        animation?(true)
        let apiLink = "/wp-json/wc/v2/payment_gateways"
        return info.oauthswift.client.get(apiURL + apiLink, parameters: info.parameters, success: { response in
            animation?(false)
            guard let arrJsonObject = try? response.jsonObject() as? Array<Any>, arrJsonObject != nil else {
                completed(responseData)
                return
            }
            
            arrJsonObject?.forEach({ (jsonObject) in
                if let obj = PaymentMethodDTO.fromObject(jsonObject) {
                    responseData.lstPayment.append(obj)
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
