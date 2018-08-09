//
//  SettingDTO.swift
//  ArenaDemoAPI
//
//  Created by Lu Kien Quoc on 7/13/18.
//  Copyright © 2018 Arena Design VN. All rights reserved.
//

import Foundation

// MARK: Get General Setting
open class GetGeneralSettingResponse: BaseResponse {
    public required init() {}
    
    open var lstSetting: [GeneralDTO] = []
    
    open override class var typeName: String { return String(describing: self) }
    open override class var metadata: Metadata {
        return Metadata.create(super.metadata.properties, selfProperties:
            [
                Type<GetGeneralSettingResponse>.arrayProperty("lstSetting", get: {return $0.lstSetting}, set: {$0.lstSetting = $1}),
            ]
        )
    }
}


open class GeneralDTO: JsonSerializable {
    public required init() {}
    
    open var id: String?
    open var label: String?
    open var description: String?
    open var type: String?
    open var _default: String?
    open var tip: String?
    open var value: String?
    open var options: [String: String] = [:]
    open var _links: Links?

    // for Currency Only
    open var symbol: String?

    open class var typeName: String { return String(describing: self) }
    open class var metadata: Metadata {
        return Metadata.create(
            [
                Type<GeneralDTO>.optionalProperty("id", get: {return $0.id}, set: {$0.id = $1}),
                Type<GeneralDTO>.optionalProperty("label", get: {return $0.label}, set: {$0.label = $1}),
                Type<GeneralDTO>.optionalProperty("description", get: {return $0.description}, set: {$0.description = $1}),
                Type<GeneralDTO>.optionalProperty("type", get: {return $0.type}, set: {$0.type = $1}),
                Type<GeneralDTO>.optionalProperty("default", get: {return $0._default}, set: {$0._default = $1}),
                Type<GeneralDTO>.optionalProperty("tip", get: {return $0.tip}, set: {$0.tip = $1}),
                Type<GeneralDTO>.optionalProperty("value", get: {return $0.value}, set: {$0.value = $1}),
                Type<GeneralDTO>.objectProperty("options", get: {return $0.options}, set: {$0.options = $1}),
                Type<GeneralDTO>.optionalProperty("_links", get: {return $0._links}, set: {$0._links = $1}),

            ]
        )
    }
    
}
