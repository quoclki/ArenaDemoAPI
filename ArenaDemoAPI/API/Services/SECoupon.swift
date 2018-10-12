//
//  SECoupon.swift
//  ArenaDemoAPI
//
//  Created by Lu Kien Quoc on 10/12/18.
//  Copyright © 2018 Arena Design VN. All rights reserved.
//

import Foundation
import OAuthSwift

open class SECoupon: SEBase {
    /// get List Customer get all
    open class func getList(_ request: GetCouponRequest, animation: ((Bool) -> Void)? = nil, completed: @escaping ((GetCouponResponse) -> Void)) -> OAuthSwiftRequestHandle? {
        let responseData = GetCouponResponse()
        
        let info = getInfoRequest(request)
        animation?(true)
        let apiLink = "/wp-json/wc/v2/coupons"
        
        return info.oauthswift.client.get(apiURL + apiLink, parameters: info.parameters, success: { response in
            animation?(false)
            
            guard let arrJsonObject = try? response.jsonObject() as? Array<Any>, arrJsonObject != nil else {
                completed(responseData)
                return
            }
            
            arrJsonObject?.forEach({ (jsonObject) in
                if let obj = CouponDTO.fromObject(jsonObject) {
                    responseData.lstCoupon.append(obj)
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
