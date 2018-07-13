//
//  SESystemStatus.swift
//  ArenaDemoAPI
//
//  Created by Lu Kien Quoc on 7/12/18.
//  Copyright © 2018 Arena Design VN. All rights reserved.
//

import Foundation
import OAuthSwift

open class SESystemStatus: SEBase {
    /// get List Customer get all
    open class func get(_ animation: ((Bool) -> Void)? = nil, completed: @escaping ((GetSystemStatusResponse) -> Void)) -> OAuthSwiftRequestHandle? {
        let responseData = GetSystemStatusResponse()
        
        let info = getInfoRequest(BaseRequest())
        animation?(true)
        let apiLink = "/wp-json/wc/v2/system_status"
        
        return info.oauthswift.client.get(apiURL + apiLink, success: { response in
            animation?(false)
            
            guard let object = try? response.jsonObject() else {
                completed(responseData)
                return
            }
            
            if let dto = SystemStatusDTO.fromObject(object) {
                responseData.systemStatus = dto
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
