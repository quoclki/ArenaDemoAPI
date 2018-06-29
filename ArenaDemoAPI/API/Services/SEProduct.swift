//
//  SEProduct.swift
//  ArenaDemoAPI
//
//  Created by Lu Kien Quoc on 6/3/18.
//  Copyright © 2018 Newstead Technologies VN. All rights reserved.
//

import Foundation
import OAuthSwift

open class SEProduct: SEBase {
    /// get List Customer get all
    open class func getListCategory(_ request: GetCategoryRequest, animation: ((Bool) -> Void)? = nil, completed: @escaping ((GetCategoryResponse) -> Void)) -> OAuthSwiftRequestHandle? {
        let responseData = GetCategoryResponse()

        let info = getInfoRequest(request)
        animation?(true)
        let apiLink = "/wp-json/wc/v2/products/categories"
        return info.oauthswift.client.get(apiURL + apiLink, parameters: info.parameters, headers: headers, success: { response in
            animation?(false)
            
            guard let arrJsonObject = try? response.jsonObject() as? Array<Any>, arrJsonObject != nil else {
                completed(responseData)
                return
            }
            
            arrJsonObject?.forEach({ (jsonObject) in
                if let obj = CategoryDTO.fromObject(jsonObject) {
                    responseData.lstCategory.append(obj)
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
    
    // Get All Product
    open class func getListProduct(_ request: GetProductRequest, animation: ((Bool) -> Void)? = nil, completed: @escaping ((GetProductResponse) -> Void)) -> OAuthSwiftRequestHandle? {
        let responseData = GetProductResponse()

        let info = getInfoRequest(request)
        let apiLink = "/wp-json/wc/v2/products"
        animation?(true)
        return info.oauthswift.client.get(apiURL + apiLink, parameters: info.parameters, success: { response in
            animation?(false)
            guard let arrJsonObject = try? response.jsonObject() as? Array<Any>, arrJsonObject != nil else {
                completed(responseData)
                return
            }
            arrJsonObject?.forEach({ (jsonObject) in
                if let obj = ProductDTO.fromObject(jsonObject) {
                    responseData.lstProduct.append(obj)
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

    // Get Product Review
    open class func getReview(_ id: Int, animation: ((Bool) -> Void)? = nil, completed: @escaping ((GetReviewResponse) -> Void)) -> OAuthSwiftRequestHandle? {
        let responseData = GetReviewResponse()
        
        let request = BaseRequest()
        let info = getInfoRequest(request)

        let apiLink = "/wp-json/wc/v2/products/\( id.toString() )/reviews"
        animation?(true)
        return info.oauthswift.client.get(apiURL + apiLink, parameters: info.parameters, success: { response in
            animation?(false)
            guard let arrJsonObject = try? response.jsonObject() as? Array<Any>, arrJsonObject != nil else {
                completed(responseData)
                return
            }
            arrJsonObject?.forEach({ (jsonObject) in
                if let obj = ReviewDTO.fromObject(jsonObject) {
                    responseData.lstReview.append(obj)
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


