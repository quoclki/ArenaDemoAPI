//
//  SEUser.swift
//  ArenaDemoAPI
//
//  Created by Lu Kien Quoc on 6/14/18.
//  Copyright © 2018 Newstead Technologies VN. All rights reserved.
//

import Foundation

open class SEUser: SEBase {
    /// get List Customer get all
    open class func getListUser(_ request: GetUserRequest, animation: ((Bool) -> Void)? = nil, completed: @escaping ((GetUserResponse?) -> Void)) {
        let responseData = GetUserResponse()
        func handleFail() {
            animation?(false)
            completed(nil)
        }
        
        let info = getInfoRequest(request)

        animation?(true)
        let apiLink = request.special_link ?? (APIURL + "wp/v2/posts")
        _ = info.oauthswift.client.get(apiLink, parameters: info.parameters, success: { response in
            animation?(false)
            
            if request.special_link != nil {
                guard let jsonObject = try? response.jsonObject() else { return }
                if let userDTO = UserDTO.fromObject(jsonObject) {
                    responseData.lstUser.append(userDTO)
                }
                
            } else {
                guard let arrJsonObject = try? response.jsonObject() as? Array<AnyObject>, arrJsonObject != nil else {
                    handleFail()
                    return
                }
                
                arrJsonObject?.forEach({ (jsonObject) in
                    if let obj = UserDTO.fromObject(jsonObject) {
                        responseData.lstUser.append(obj)
                    }
                })

            }
            
            animation?(false)
            completed(responseData)
            
        }, failure: { error in
            handleFail()
            print("Call service \(#function)() failed!. \(error)")
        })
        
    }
    
}