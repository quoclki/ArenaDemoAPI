//
//  SEPage.swift
//  ArenaDemoAPI
//
//  Created by Lu Kien Quoc on 8/9/18.
//  Copyright © 2018 Arena Design VN. All rights reserved.
//

import Foundation
import OAuthSwift

open class SEPage: SEBase {
    /// get List Customer get all
    open class func getList(_ request: GetPageRequest, animation: ((Bool) -> Void)? = nil, completed: @escaping ((GetPageResponse) -> Void)) -> OAuthSwiftRequestHandle? {
        let responseData = GetPageResponse()
        
        let info = getInfoRequest(request)
        animation?(true)
        let apiLink = "/wp-json/wp/v2/pages"
        return info.oauthswift.client.get(apiURL + apiLink, parameters: info.parameters, headers: headers, success: { response in
            animation?(false)
            
            guard let arrJsonObject = try? response.jsonObject() as? Array<Any>, arrJsonObject != nil else {
                completed(responseData)
                return
            }
            
            arrJsonObject?.forEach({ (jsonObject) in
                if let obj = PageDTO.fromObject(jsonObject) {
                    responseData.lstPage.append(obj)
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
