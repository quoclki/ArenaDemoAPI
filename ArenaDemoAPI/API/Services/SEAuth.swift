//
//  SEAuth.swift
//  ArenaDemoAPI
//
//  Created by Lu Kien Quoc on 6/29/18.
//  Copyright © 2018 Arena Design VN. All rights reserved.
//

import Foundation
import OAuthSwift

open class SEAuth: SEBase {
    /// get List Customer get all
    open class func authentication(_ request: GetAuthRequest, animation: ((Bool) -> Void)? = nil, completed: @escaping ((GetAuthResponse) -> Void)) -> OAuthSwiftRequestHandle? {
        let responseData = GetAuthResponse()
        
        let info = getInfoRequest(request)
        animation?(true)
        let apiLink = "/api/auth/generate_auth_cookie"
        return info.oauthswift.client.get(apiURLs + apiLink, parameters: info.parameters, success: { response in
            animation?(false)
            
            guard let jsonObject = try? response.jsonObject() else {
                completed(responseData)
                return
            }
            
            if let auth = AuthDTO.fromObject(jsonObject) {
                responseData.authDTO = AuthDTO.fromObject(jsonObject)
                if let error = auth.error, !error.isEmpty {
                    responseData.message = error
                } else {
                    responseData.success = true
                }
            }
            completed(responseData)
            
        }, failure: { error in
            responseData.updateError(error: error)
            animation?(false)
            completed(responseData)
            print("Call service \(#function)() failed!. \(error)")
        })
        
    }
    
}
