//
//  ReportDTO.swift
//  ArenaDemoAPI
//
//  Created by Lu Kien Quoc on 7/3/18.
//  Copyright © 2018 Arena Design VN. All rights reserved.
//

import Foundation

// MARK: - Get List Report
// Request
open class GetReportRequest: BaseRequest {
    public required init() {}
    
    open var period: String?
    open var date_min: Date?
    open var date_max: Date?
    
    open override class var typeName: String { return String(describing: self) }
    open override class var metadata: Metadata {
        return Metadata.create(super.metadata.properties, selfProperties:
            [
                Type<GetReportRequest>.optionalProperty("period", get: {return $0.period}, set: {$0.period = $1}),
                Type<GetReportRequest>.optionalProperty("date_min", get: {return $0.date_min}, set: {$0.date_min = $1}),
                Type<GetReportRequest>.optionalProperty("date_max", get: {return $0.date_max}, set: {$0.date_max = $1}),
            ]
        )
        
    }
}

// Response
open class GetSaleResponse: BaseResponse {
    public required init() {}
    
    open var lstSale: [SaleDTO] = []
    
    open override class var typeName: String { return String(describing: self) }
    open override class var metadata: Metadata {
        return Metadata.create(super.metadata.properties, selfProperties:
            [
                Type<GetSaleResponse>.arrayProperty("lstSale", get: {return $0.lstSale}, set: {$0.lstSale = $1}),
            ]
        )
    }
}

open class SaleDTO: JsonSerializable {
    public required init() {}
    
    open var total_sales : String?
    open var net_sales : String?
    open var average_sales : String?
    open var total_orders : Int?
    open var total_items : Int?
    open var total_tax : String?
    open var total_shipping : String?
    open var total_refunds : Int?
    open var total_discount : Int?
    open var totals_grouped_by : String?
    open var totals : [String: TotalDTO] = [:]
    open var _links : Links?

    open class var typeName: String { return String(describing: self) }
    open class var metadata: Metadata {
        return Metadata.create(
            [
                Type<SaleDTO>.optionalProperty("total_sales", get: {return $0.total_sales}, set: {$0.total_sales = $1}),
                Type<SaleDTO>.optionalProperty("net_sales", get: {return $0.net_sales}, set: {$0.net_sales = $1}),
                Type<SaleDTO>.optionalProperty("average_sales", get: {return $0.average_sales}, set: {$0.average_sales = $1}),
                Type<SaleDTO>.optionalProperty("total_orders", get: {return $0.total_orders}, set: {$0.total_orders = $1}),
                Type<SaleDTO>.optionalProperty("total_items", get: {return $0.total_items}, set: {$0.total_items = $1}),
                Type<SaleDTO>.optionalProperty("total_tax", get: {return $0.total_tax}, set: {$0.total_tax = $1}),
                Type<SaleDTO>.optionalProperty("total_shipping", get: {return $0.total_shipping}, set: {$0.total_shipping = $1}),
                Type<SaleDTO>.optionalProperty("total_refunds", get: {return $0.total_refunds}, set: {$0.total_refunds = $1}),
                Type<SaleDTO>.optionalProperty("total_discount", get: {return $0.total_discount}, set: {$0.total_discount = $1}),
                Type<SaleDTO>.optionalProperty("totals_grouped_by", get: {return $0.totals_grouped_by}, set: {$0.totals_grouped_by = $1}),
                Type<SaleDTO>.objectProperty("totals", get: {return $0.totals}, set: {$0.totals = $1}),
                Type<SaleDTO>.optionalProperty("_links", get: {return $0._links}, set: {$0._links = $1}),
            ]
        )
    }
    
}

open class TotalDTO: JsonSerializable {
    public required init() {}
    
    open var sales : String?
    open var orders : Int?
    open var items : Int?
    open var tax : String?
    open var shipping : String?
    open var discount : String?
    open var customers : Int?
    
    open class var typeName: String { return String(describing: self) }
    open class var metadata: Metadata {
        return Metadata.create(
            [
                Type<TotalDTO>.optionalProperty("sales", get: {return $0.sales}, set: {$0.sales = $1}),
                Type<TotalDTO>.optionalProperty("orders", get: {return $0.orders}, set: {$0.orders = $1}),
                Type<TotalDTO>.optionalProperty("items", get: {return $0.items}, set: {$0.items = $1}),
                Type<TotalDTO>.optionalProperty("tax", get: {return $0.tax}, set: {$0.tax = $1}),
                Type<TotalDTO>.optionalProperty("shipping", get: {return $0.shipping}, set: {$0.shipping = $1}),
                Type<TotalDTO>.optionalProperty("discount", get: {return $0.discount}, set: {$0.discount = $1}),
                Type<TotalDTO>.optionalProperty("customers", get: {return $0.customers}, set: {$0.customers = $1}),
            ]
        )
    }
    
}


// Get List Top Saller
// Response
open class GetTopSallerResponse: BaseResponse {
    public required init() {}
    
    open var lstTop: [TopSallerDTO] = []
    
    open override class var typeName: String { return String(describing: self) }
    open override class var metadata: Metadata {
        return Metadata.create(super.metadata.properties, selfProperties:
            [
                Type<GetTopSallerResponse>.arrayProperty("lstTop", get: {return $0.lstTop}, set: {$0.lstTop = $1}),
            ]
        )
    }
}

open class TopSallerDTO: JsonSerializable {
    public required init() {}
    
    open var name : String?
    open var product_id : Int?
    open var quantity : Int?
    open var _links : Links?
    
    open class var typeName: String { return String(describing: self) }
    open class var metadata: Metadata {
        return Metadata.create(
            [
                Type<TopSallerDTO>.optionalProperty("name", get: {return $0.name}, set: {$0.name = $1}),
                Type<TopSallerDTO>.optionalProperty("product_id", get: {return $0.product_id}, set: {$0.product_id = $1}),
                Type<TopSallerDTO>.optionalProperty("quantity", get: {return $0.quantity}, set: {$0.quantity = $1}),
                Type<TopSallerDTO>.optionalProperty("_links", get: {return $0._links}, set: {$0._links = $1}),
            ]
        )
    }
    
}

