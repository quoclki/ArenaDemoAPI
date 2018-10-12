//
//  CouponDTO.swift
//  ArenaDemoAPI
//
//  Created by Lu Kien Quoc on 10/12/18.
//  Copyright © 2018 Arena Design VN. All rights reserved.
//

import Foundation

// MARK: - Get coupon
// Request
open class GetCouponRequest: BaseRequest {
    public required init() {}
    
    open var before: Date?
    open var after: Date?
    open var offset: Int?
    open var code: String?
    
    open override class var typeName: String { return String(describing: self) }
    open override class var metadata: Metadata {
        return Metadata.create(super.metadata.properties, selfProperties:
            [
                Type<GetCouponRequest>.optionalProperty("before", get: {return $0.before}, set: {$0.before = $1}),
                Type<GetCouponRequest>.optionalProperty("after", get: {return $0.after}, set: {$0.after = $1}),
                Type<GetCouponRequest>.optionalProperty("offset", get: {return $0.offset}, set: {$0.offset = $1}),
                Type<GetCouponRequest>.optionalProperty("code", get: {return $0.code}, set: {$0.code = $1}),
            ]
        )
        
    }
}

//Response
open class GetCouponResponse: BaseResponse {
    public required init() {}
    
    open var lstCoupon: [CouponDTO] = []
    
    open override class var typeName: String { return String(describing: self) }
    open override class var metadata: Metadata {
        return Metadata.create(super.metadata.properties, selfProperties:
            [
                Type<GetCouponResponse>.arrayProperty("lstCoupon", get: {return $0.lstCoupon}, set: {$0.lstCoupon = $1}),
            ]
        )
    }
}


open class CouponDTO: JsonSerializable {
    public required init() {}
    
    open var id : Int?
    open var code : String?
    open var amount : String?
    open var date_created : Date?
    open var date_created_gmt : Date?
    open var date_modified : Date?
    open var date_modified_gmt : Date?
    open var discount_type: String?
    open var description: String?
    open var date_expires: Date?
    open var date_expires_gmt: Date?
    open var usage_count: Int?
    open var individual_use: Bool?
    open var product_ids: [Int] = []
    open var excluded_product_ids: [Int] = []
    open var usage_limit: Int?
    open var usage_limit_per_user: Int?
    open var limit_usage_to_x_items: Int?
    open var free_shipping: Bool?
    open var product_categories: [Int] = []
    open var excluded_product_categories: [Int] = []
    open var exclude_sale_items: Bool?
    open var minimum_amount: String?
    open var maximum_amount: String?
    open var email_restrictions: [String] = []
    open var used_by: [Int] = []
    open var meta_data: [MetaDataDTO] = []
    
    open class var typeName: String { return String(describing: self) }
    open class var metadata: Metadata {
        return Metadata.create(
            [
                Type<CouponDTO>.optionalProperty("id", get: {return $0.id}, set: {$0.id = $1}),
                Type<CouponDTO>.optionalProperty("code", get: {return $0.code}, set: {$0.code = $1}),
                Type<CouponDTO>.optionalProperty("amount", get: {return $0.amount}, set: {$0.amount = $1}),
                Type<CouponDTO>.optionalProperty("date_created", get: {return $0.date_created}, set: {$0.date_created = $1}),
                Type<CouponDTO>.optionalProperty("date_created_gmt", get: {return $0.date_created_gmt}, set: {$0.date_created_gmt = $1}),
                Type<CouponDTO>.optionalProperty("date_modified", get: {return $0.date_modified}, set: {$0.date_modified = $1}),
                Type<CouponDTO>.optionalProperty("date_modified_gmt", get: {return $0.date_modified_gmt}, set: {$0.date_modified_gmt = $1}),
                Type<CouponDTO>.optionalProperty("discount_type", get: {return $0.discount_type}, set: {$0.discount_type = $1}),
                Type<CouponDTO>.optionalProperty("description", get: {return $0.description}, set: {$0.description = $1}),
                Type<CouponDTO>.optionalProperty("date_expires", get: {return $0.date_expires}, set: {$0.date_expires = $1}),
                Type<CouponDTO>.optionalProperty("date_expires_gmt", get: {return $0.date_expires_gmt}, set: {$0.date_expires_gmt = $1}),
                Type<CouponDTO>.optionalProperty("usage_count", get: {return $0.usage_count}, set: {$0.usage_count = $1}),
                Type<CouponDTO>.optionalProperty("individual_use", get: {return $0.individual_use}, set: {$0.individual_use = $1}),
                Type<CouponDTO>.arrayProperty("product_ids", get: {return $0.product_ids}, set: {$0.product_ids = $1}),
                Type<CouponDTO>.arrayProperty("excluded_product_ids", get: {return $0.excluded_product_ids}, set: {$0.excluded_product_ids = $1}),
                Type<CouponDTO>.optionalProperty("usage_limit", get: {return $0.usage_limit}, set: {$0.usage_limit = $1}),
                Type<CouponDTO>.optionalProperty("usage_limit_per_user", get: {return $0.usage_limit_per_user}, set: {$0.usage_limit_per_user = $1}),
                Type<CouponDTO>.optionalProperty("limit_usage_to_x_items", get: {return $0.limit_usage_to_x_items}, set: {$0.limit_usage_to_x_items = $1}),
                Type<CouponDTO>.optionalProperty("free_shipping", get: {return $0.free_shipping}, set: {$0.free_shipping = $1}),
                Type<CouponDTO>.arrayProperty("product_categories", get: {return $0.product_categories}, set: {$0.product_categories = $1}),
                Type<CouponDTO>.arrayProperty("excluded_product_categories", get: {return $0.excluded_product_categories}, set: {$0.excluded_product_categories = $1}),
                Type<CouponDTO>.optionalProperty("exclude_sale_items", get: {return $0.exclude_sale_items}, set: {$0.exclude_sale_items = $1}),
                Type<CouponDTO>.optionalProperty("minimum_amount", get: {return $0.minimum_amount}, set: {$0.minimum_amount = $1}),
                Type<CouponDTO>.optionalProperty("maximum_amount", get: {return $0.maximum_amount}, set: {$0.maximum_amount = $1}),
                Type<CouponDTO>.arrayProperty("email_restrictions", get: {return $0.email_restrictions}, set: {$0.email_restrictions = $1}),
                Type<CouponDTO>.arrayProperty("used_by", get: {return $0.used_by}, set: {$0.used_by = $1}),
                Type<CouponDTO>.arrayProperty("meta_data", get: {return $0.meta_data}, set: {$0.meta_data = $1}),
            ]
        )
    }
}
