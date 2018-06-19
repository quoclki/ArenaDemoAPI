//
//  SEProduct.swift
//  ArenaDemoAPI
//
//  Created by Lu Kien Quoc on 6/3/18.
//  Copyright © 2018 Newstead Technologies VN. All rights reserved.
//

import Foundation

open class SEProduct: SEBase {
    /// get List Customer get all
    open class func getListCategory(_ request: GetCategoryRequest, animation: ((Bool) -> Void)? = nil, completed: @escaping ((GetCategoryResponse?) -> Void)) {
        let responseData = GetCategoryResponse()
        responseData.success = false

        let info = getInfoRequest(request)
        animation?(true)
        let apiLink = "wc/v2/products/categories"
        _ = info.oauthswift.client.get(APIURL + apiLink, parameters: info.parameters, success: { response in
            animation?(false)
            
            guard let arrJsonObject = try? response.jsonObject() as? Array<AnyObject>, arrJsonObject != nil else {
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
            animation?(false)
            completed(responseData)
            print("Call service \(#function)() failed!. \(error)")
        })
        
    }
    
    // Get All Product
    open class func getListProduct(_ request: GetProductRequest, animation: ((Bool) -> Void)? = nil, completed: @escaping ((GetProductResponse?) -> Void)) {
        let responseData = GetProductResponse()
       func handleFail() {
            animation?(false)
            completed(nil)
        }

        let info = getInfoRequest(request)
        let apiLink = "wc/v2/products"
        animation?(true)
        _ = info.oauthswift.client.get(APIURL + apiLink, parameters: info.parameters, success: { response in
            animation?(false)
            guard let arrJsonObject = try? response.jsonObject() as? Array<AnyObject>, arrJsonObject != nil else {
                handleFail()
                return
            }
            arrJsonObject?.forEach({ (jsonObject) in
                if let obj = ProductDTO.fromObject(jsonObject) {
                    responseData.lstProduct.append(obj)
                }
            })
            completed(responseData)
            
            
        }, failure: { error in
            handleFail()
            print("Call service \(#function)() failed!. \(error)")
        })


    }

    // Get Product Review
    open class func getReview(_ id: Int, animation: ((Bool) -> Void)? = nil, completed: @escaping ((GetReviewResponse?) -> Void)) {
        let responseData = GetReviewResponse()
       func handleFail() {
            animation?(false)
            completed(nil)
        }

        let request = BaseRequest()
        let info = getInfoRequest(request)

        let apiLink = "wc/v2/products/\( id.toString() )/reviews"
        animation?(true)
        _ = info.oauthswift.client.get(APIURL + apiLink, parameters: info.parameters, success: { response in
            animation?(false)
            guard let arrJsonObject = try? response.jsonObject() as? Array<AnyObject>, arrJsonObject != nil else {
                handleFail()
                return
            }
            arrJsonObject?.forEach({ (jsonObject) in
                if let obj = ReviewDTO.fromObject(jsonObject) {
                    responseData.lstReview.append(obj)
                }
            })
            completed(responseData)
            
        }, failure: { error in
            handleFail()
            print("Call service \(#function)() failed!. \(error)")
        })

    }
}


