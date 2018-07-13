//
//  SESetting.swift
//  ArenaDemoAPI
//
//  Created by Lu Kien Quoc on 7/13/18.
//  Copyright © 2018 Arena Design VN. All rights reserved.
//

import Foundation
import OAuthSwift

open class SESetting: SEBase {
    /// get List Customer get all
    open class func getGeneral(_ animation: ((Bool) -> Void)? = nil, completed: @escaping ((GetGeneralSettingResponse) -> Void)) -> OAuthSwiftRequestHandle? {
        let responseData = GetGeneralSettingResponse()
        
        let info = getInfoRequest(BaseRequest())
        animation?(true)
        let apiLink = "/wp-json/wc/v2/settings/general"
        
        return info.oauthswift.client.get(apiURL + apiLink, success: { response in
            animation?(false)
            
            guard let arrJsonObject = try? response.jsonObject() as? Array<Any>, arrJsonObject != nil else {
                completed(responseData)
                return
            }
            
            arrJsonObject?.forEach({ (jsonObject) in
                if let obj = GeneralDTO.fromObject(jsonObject) {
                    responseData.lstSetting.append(obj)
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
