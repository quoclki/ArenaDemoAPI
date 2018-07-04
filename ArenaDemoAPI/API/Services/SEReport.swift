//
//  SEReport.swift
//  ArenaDemoAPI
//
//  Created by Lu Kien Quoc on 7/3/18.
//  Copyright © 2018 Arena Design VN. All rights reserved.
//

import Foundation
import OAuthSwift

open class SEReport: SEBase {
    /// get List Sales Report
    open class func getListSales(_ request: GetReportRequest, animation: ((Bool) -> Void)? = nil, completed: @escaping ((GetSaleResponse) -> Void)) -> OAuthSwiftRequestHandle? {
        let responseData = GetSaleResponse()
        
        let info = getInfoRequest(request)
        animation?(true)
        let apiLink = "/wp-json/wc/v2/reports/sales"
        return info.oauthswift.client.get(apiURL + apiLink, parameters: info.parameters, success: { response in
            animation?(false)
            guard let arrJsonObject = try? response.jsonObject() as? Array<Any>, arrJsonObject != nil else {
                completed(responseData)
                return
            }
            
            arrJsonObject?.forEach({ (jsonObject) in
                if let obj = SaleDTO.fromObject(jsonObject) {
                    responseData.lstSale.append(obj)
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
    
    // Get list Top Sales
    open class func getListTopSaller(_ request: GetReportRequest, animation: ((Bool) -> Void)? = nil, completed: @escaping ((GetTopSallerResponse) -> Void)) -> OAuthSwiftRequestHandle? {
        let responseData = GetTopSallerResponse()
        
        let info = getInfoRequest(request)
        animation?(true)
        let apiLink = "/wp-json/wc/v2/reports/top_sellers"
        return info.oauthswift.client.get(apiURL + apiLink, parameters: info.parameters, success: { response in
            animation?(false)
            guard let arrJsonObject = try? response.jsonObject() as? Array<Any>, arrJsonObject != nil else {
                completed(responseData)
                return
            }
            
            arrJsonObject?.forEach({ (jsonObject) in
                if let obj = TopSallerDTO.fromObject(jsonObject) {
                    responseData.lstTop.append(obj)
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
