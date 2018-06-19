//
//  SEPost.swift
//  ArenaDemoAPI
//
//  Created by Lu Kien Quoc on 6/12/18.
//  Copyright © 2018 Newstead Technologies VN. All rights reserved.
//

import Foundation

open class SEPost: SEBase {
    /// get List Customer get all
    open class func getListCategory(_ request: GetPostCategoryRequest, animation: ((Bool) -> Void)? = nil, completed: @escaping ((GetPostCategoryResponse?) -> Void)) {
        let responseData = GetPostCategoryResponse()
        func handleFail() {
            animation?(false)
            completed(nil)
        }
        
        let info = getInfoRequest(request)
        animation?(true)
        let apiLink = "wp/v2/categories"
        _ = info.oauthswift.client.get(APIURL + apiLink, parameters: info.parameters, success: { response in
            animation?(false)
            
            guard let arrJsonObject = try? response.jsonObject() as? Array<AnyObject>, arrJsonObject != nil else {
                handleFail()
                return
            }
            
            arrJsonObject?.forEach({ (jsonObject) in
                if let obj = PostCategoryDTO.fromObject(jsonObject) {
                    responseData.lstPostCategory.append(obj)
                }
            })
            animation?(false)
            completed(responseData)
            
        }, failure: { error in
            handleFail()
            print("Call service \(#function)() failed!. \(error)")
        })
        
    }
  
    open class func getListPost(_ request: GetPostRequest, animation: ((Bool) -> Void)? = nil, completed: @escaping ((GetPostResponse?) -> Void)) {
        let responseData = GetPostResponse()
        func handleFail() {
            animation?(false)
            completed(nil)
        }
        
        let info = getInfoRequest(request)
        animation?(true)
        let apiLink = "wp/v2/posts"
        _ = info.oauthswift.client.get(APIURL + apiLink, parameters: info.parameters, success: { response in
            animation?(false)
            
            guard let arrJsonObject = try? response.jsonObject() as? Array<AnyObject>, arrJsonObject != nil else {
                handleFail()
                return
            }
            
            arrJsonObject?.forEach({ (jsonObject) in
                if let obj = PostDTO.fromObject(jsonObject) {
                    responseData.lstPost.append(obj)
                }
            })
            animation?(false)
            completed(responseData)
            
        }, failure: { error in
            handleFail()
            print("Call service \(#function)() failed!. \(error)")
        })
        
    }
  
}

