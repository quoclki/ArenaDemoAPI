//
//  SEUser.swift
//  ArenaDemoAPI
//
//  Created by Lu Kien Quoc on 6/14/18.
//  Copyright © 2018 Arena Design VN. All rights reserved.
//

import Foundation
import OAuthSwift

open class SEUser: SEBase {
    /// get List Customer get all
    open class func getList(_ request: GetUserRequest, animation: ((Bool) -> Void)? = nil, completed: @escaping ((GetUserResponse) -> Void)) -> OAuthSwiftRequestHandle? {
        let responseData = GetUserResponse()
        
        let info = getInfoRequest(request)
        animation?(true)
        let apiLink = request.special_link ?? (apiURL + "/wp-json/wp/v2/posts")
        return info.oauthswift.client.get(apiLink, parameters: info.parameters, success: { response in
            animation?(false)
            
            if request.special_link != nil {
                guard let jsonObject = try? response.jsonObject() else {
                    completed(responseData)
                    return
                }
                if let userDTO = UserDTO.fromObject(jsonObject) {
                    responseData.lstUser.append(userDTO)
                }
                
            } else {
                guard let arrJsonObject = try? response.jsonObject() as? Array<Any>, arrJsonObject != nil else {
                    completed(responseData)
                    return
                }
                
                arrJsonObject?.forEach({ (jsonObject) in
                    if let obj = UserDTO.fromObject(jsonObject) {
                        responseData.lstUser.append(obj)
                    }
                })

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
