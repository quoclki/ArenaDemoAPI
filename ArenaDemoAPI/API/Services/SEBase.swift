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
    static var apiURL: String = "http://www.arenaapp.vn/rnd"
    static var apiURLs: String = "https://www.arenaapp.vn/rnd"
    
    static let oauth_consumer_key = "ck_f20eabddec7d39e39cdab8a898cc3b66e058db8d"
    static let oauth_consumer_secret = "cs_0a9f62b1c01fb70978b8456b3e3ac5fc4760c83d"

    static var headers: [String: String] {
        return [
            "Content-Type": "application/json",
            "Cache-Control": "no-cache",
        ]
    }

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
        
        return (oauthswift, genParameters(request))

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
        
        guard let responseObject = e.userInfo["Response-Body"] else { return }
        guard let response = BaseResponse.fromObject(responseObject) else { return }
        self.code = response.code
        self.message = response.message ?? response.error // error only for auth api
        
        if let dicParam = response.data?.params, !dicParam.isEmpty {
            self.message = "\( self.message ?? "" )\n\( dicParam.map({ $0.key + " : " + $0.value }).joined(separator: ", ") )"
        }
        
    }
}
