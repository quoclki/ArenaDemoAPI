//
//  NSApiRequest.swift
//  NSNuPOSFnB_Service
//
//  Created by Lĩnh Lê on 8/31/16.
//  Copyright © 2016 Lĩnh Lê. All rights reserved.
//

import UIKit

open class BaseRequest: JsonSerializable {
    public required init() {}

    open var id: Int?
    open var context: String?
    open var page: Int?
    open var per_page: Int?
    open var search: String?
    open var exclude: [Int] = []
    open var include: [Int] = []
    open var order: String?
    open var orderby: String?
    open var hide_empty: Bool?
    open var slug: String?
    
    // use this variable for get only 1 object from 1 special link
    open var special_link: String?
    
    open class var typeName: String { return String(describing: self) }
    open class var metadata: Metadata {
        return Metadata.create(
            [
                Type<BaseRequest>.optionalProperty("context", get: {return $0.context}, set: {$0.context = $1}),
                Type<BaseRequest>.optionalProperty("page", get: {return $0.page}, set: {$0.page = $1}),
                Type<BaseRequest>.optionalProperty("per_page", get: {return $0.per_page}, set: {$0.per_page = $1}),
                Type<BaseRequest>.optionalProperty("search", get: {return $0.search}, set: {$0.search = $1}),
                Type<BaseRequest>.arrayProperty("exclude", get: {return $0.exclude}, set: {$0.exclude = $1}),
                Type<BaseRequest>.arrayProperty("include", get: {return $0.include}, set: {$0.include = $1}),
                Type<BaseRequest>.optionalProperty("order", get: {return $0.order}, set: {$0.order = $1}),
                Type<BaseRequest>.optionalProperty("orderby", get: {return $0.orderby}, set: {$0.orderby = $1}),
                Type<BaseRequest>.optionalProperty("hide_empty", get: {return $0.hide_empty}, set: {$0.hide_empty = $1}),
                Type<BaseRequest>.optionalProperty("slug", get: {return $0.slug}, set: {$0.slug = $1}),
            ]
        )
    }
}

open class BaseResponse: JsonSerializable, HasMetadata {
    public required init() {}
    
    open var success: Bool = false
    open var code: String?
    open var message: String?
    open var error: String?
    open var data: DataDTO?
    open var isCancel = false
    
    open class var typeName: String { return String(describing: self) }
    open class var metadata: Metadata {
        return Metadata.create(
            [
                Type<BaseResponse>.property("success", get: {return $0.success}, set: {$0.success = $1}),
                Type<BaseResponse>.optionalProperty("code", get: {return $0.code}, set: {$0.code = $1}),
                Type<BaseResponse>.optionalProperty("message", get: {return $0.message}, set: {$0.message = $1}),
                Type<BaseResponse>.optionalProperty("error", get: {return $0.error}, set: {$0.error = $1}),
                Type<BaseResponse>.optionalProperty("data", get: {return $0.data}, set: {$0.data = $1}),
            ]
        )
    }
}

open class DataDTO: JsonSerializable {
    public required init() {}
    
    open var status: Int?
    open var params: [String: String] = [:]
    
    open class var typeName: String { return String(describing: self) }
    open class var metadata: Metadata {
        return Metadata.create(
            [
                Type<DataDTO>.optionalProperty("status", get: {return $0.status}, set: {$0.status = $1}),
                Type<DataDTO>.objectProperty("params", get: {return $0.params}, set: {$0.params = $1}),
            ]
        )
    }
}

open class MetaDataDTO: JsonSerializable {
    public required init() {}
    
    open var id : Int?
    open var key : String?
    open var value : String?
    
    open class var typeName: String { return String(describing: self) }
    open class var metadata: Metadata {
        return Metadata.create(
            [
                Type<MetaDataDTO>.optionalProperty("id", get: {return $0.id}, set: {$0.id = $1}),
                Type<MetaDataDTO>.optionalProperty("key", get: {return $0.key}, set: {$0.key = $1}),
                Type<MetaDataDTO>.optionalProperty("value", get: {return $0.value}, set: {$0.value = $1}),
                ]
        )
    }
}

