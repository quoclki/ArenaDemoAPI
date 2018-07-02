//
//  SEPost.swift
//  ArenaDemoAPI
//
//  Created by Lu Kien Quoc on 6/12/18.
//  Copyright © 2018 Arena Design VN. All rights reserved.
//

import Foundation
import OAuthSwift

open class SEPost: SEBase {
    /// get List Customer get all
    open class func getListCategory(_ request: GetPostCategoryRequest, animation: ((Bool) -> Void)? = nil, completed: @escaping ((GetPostCategoryResponse) -> Void)) -> OAuthSwiftRequestHandle? {
        let responseData = GetPostCategoryResponse()
        
        let info = getInfoRequest(request)
        animation?(true)
        let apiLink = "wp/v2/categories"
        return info.oauthswift.client.get(apiURL + apiLink, parameters: info.parameters, success: { response in
            animation?(false)
            
            guard let arrJsonObject = try? response.jsonObject() as? Array<Any>, arrJsonObject != nil else {
                completed(responseData)
                return
            }
            
            arrJsonObject?.forEach({ (jsonObject) in
                if let obj = PostCategoryDTO.fromObject(jsonObject) {
                    responseData.lstPostCategory.append(obj)
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
  
    open class func getListPost(_ request: GetPostRequest, animation: ((Bool) -> Void)? = nil, completed: @escaping ((GetPostResponse) -> Void)) -> OAuthSwiftRequestHandle? {
        let responseData = GetPostResponse()
        
        let info = getInfoRequest(request)
        animation?(true)
        let apiLink = "wp/v2/posts"
        return info.oauthswift.client.get(apiURL + apiLink, parameters: info.parameters, success: { response in
            animation?(false)
            
            guard let arrJsonObject = try? response.jsonObject() as? Array<Any>, arrJsonObject != nil else {
                completed(responseData)
                return
            }
            
            arrJsonObject?.forEach({ (jsonObject) in
                if let obj = PostDTO.fromObject(jsonObject) {
                    responseData.lstPost.append(obj)
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

