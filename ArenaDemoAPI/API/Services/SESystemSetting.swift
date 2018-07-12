//
//  SESystemSetting.swift
//  ArenaDemoAPI
//
//  Created by Lu Kien Quoc on 7/12/18.
//  Copyright © 2018 Arena Design VN. All rights reserved.
//

import Foundation
import OAuthSwift

open class SESystemSetting: SEBase {
    /// get List Customer get all
    open class func get(_ animation: ((Bool) -> Void)? = nil, completed: @escaping ((GetSystemSettingResponse) -> Void)) -> OAuthSwiftRequestHandle? {
        let responseData = GetSystemSettingResponse()
        
        let info = getInfoRequest(BaseRequest())
        animation?(true)
        let apiLink = "/wp-json/wc/v2/system_status"
        
        return info.oauthswift.client.get(apiURL + apiLink, success: { response in
            animation?(false)
            
            guard let object = try? response.jsonObject() else {
                completed(responseData)
                return
            }
            
            if let dto = SystemSettingDTO.fromObject(object) {
                responseData.systemSettingDTO = dto
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
