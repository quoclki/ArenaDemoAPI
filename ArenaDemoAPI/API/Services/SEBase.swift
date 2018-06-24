//
//  SEBase.swift
//  ArenaDemoAPI
//
//  Created by Lu Kien Quoc on 6/8/18.
//  Copyright © 2018 Newstead Technologies VN. All rights reserved.
//

import Foundation
import OAuthSwift
import ServiceStack

open class SEBase {
    static var oauth_consumer_key = "ck_f20eabddec7d39e39cdab8a898cc3b66e058db8d"
    static var oauth_consumer_secret = "cs_0a9f62b1c01fb70978b8456b3e3ac5fc4760c83d"

    // Get parameter not null
    class func genParameters<T: JsonSerializable>(_ request: T) -> [String: Any] {
        do {
            if let data = request.toJson().data(using: String.Encoding.utf8), let dict = try JSONSerialization.jsonObject(with: data) as? [String: Any?] {
                var para: [String: Any] = [:]
                for (key, value) in dict {
                    if let arr = value as? Array<Any>, arr.isEmpty {
                        continue
                    }
                    
                    guard let valueNotNull = value else {
                        continue
                    }
                    
                    para.updateValue(valueNotNull, forKey: key)
                    
                }
                return para
                
            }
            return [:]
            
        }catch let e as NSError{
            print("Format \(#function)() failed!. \(e.localizedDescription)")
            return [:]
        }
        
    }
    
    // Get request with OAuth1Swift and parameters
    class func getInfoRequest<T: JsonSerializable>(_ request: T) -> (oauthswift: OAuth1Swift, parameters: [String: Any]) {
        let oauthswift = OAuth1Swift(
            consumerKey:        oauth_consumer_key ,
            consumerSecret:     oauth_consumer_secret
        )
        let parameters = genParameters(request)
        return (oauthswift, parameters)
    }
}

extension BaseResponse {
    func updateError(error: Error) {
        guard let e = (error as NSError).userInfo["error"] as? NSError else { return }
        if let msg = e.userInfo[NSLocalizedDescriptionKey] as? String, !msg.isEmpty {
            self.code = e.responseStatus.errorCode
            self.message = msg
            return
        }
        
        guard let responseBody = e.userInfo["Response-Body"] else {
            return
        }
        
        guard let responseDTO = BaseResponse.fromObject(responseBody) else {
            return
        }
        
        self.code = responseDTO.code
        self.message = responseDTO.message
    }
}
