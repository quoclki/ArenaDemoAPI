//
//  SEMedia.swift
//  ArenaDemoAPI
//
//  Created by Lu Kien Quoc on 6/27/18.
//  Copyright © 2018 Newstead Technologies VN. All rights reserved.
//

import Foundation
import OAuthSwift

open class SEMedia: SEBase {
    /// get List Customer get all
    open class func getList(_ request: GetMediaRequest, animation: ((Bool) -> Void)? = nil, completed: @escaping ((GetMediaResponse) -> Void)) -> OAuthSwiftRequestHandle? {
        let responseData = GetMediaResponse()
        
        let info = getInfoRequest(request)
        animation?(true)
        let apiLink = "wp/v2/media"
        
        return info.oauthswift.client.get(APIURL + apiLink, parameters: info.parameters, success: { response in
            animation?(false)
            
            guard let arrJsonObject = try? response.jsonObject() as? Array<Any>, arrJsonObject != nil else {
                completed(responseData)
                return
            }
            
            arrJsonObject?.forEach({ (jsonObject) in
                if let obj = MediaDTO.fromObject(jsonObject) {
                    responseData.lstMedia.append(obj)
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
    
    open class func createOrUpdate(_ request: MediaDTO, animation: ((Bool) -> Void)? = nil, completed: @escaping ((GetMediaResponse) -> Void)) -> OAuthSwiftRequestHandle? {
        let responseData = GetMediaResponse()
        
        let info = getInfoRequest(request)
        animation?(true)
        var apiLink = "wp/v2/media"
        
        // for update
        if let id = request.id {
            apiLink += "/\( id )"
        }
        
        return info.oauthswift.client.post(APIURL + apiLink, parameters: info.parameters, headers: headers, success: { response in
            animation?(false)
            
            guard let jsonObject = try? response.jsonObject() else {
                completed(responseData)
                return
            }
            
            if let obj = MediaDTO.fromObject(jsonObject) {
                responseData.lstMedia.append(obj)
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
    
    open class func delete(_ request: DeleteMediaRequest, animation: ((Bool) -> Void)? = nil, completed: @escaping ((GetMediaResponse) -> Void)) -> OAuthSwiftRequestHandle? {
        let responseData = GetMediaResponse()
        
        let info = getInfoRequest(request)
        animation?(true)
        let apiLink = "wp/v2/media/\( request.id ?? 0 )"
        
        return info.oauthswift.client.delete(APIURL + apiLink, parameters: info.parameters, success: { response in
            animation?(false)
            
            guard let jsonObject = try? response.jsonObject() else {
                completed(responseData)
                return
            }
            
            if let obj = MediaDTO.fromObject(jsonObject) {
                responseData.lstMedia.append(obj)
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
