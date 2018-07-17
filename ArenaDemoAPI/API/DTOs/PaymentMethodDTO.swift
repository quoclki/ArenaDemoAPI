//
//  PaymentMethodDTO.swift
//  ArenaDemoAPI
//
//  Created by Lu Kien Quoc on 6/25/18.
//  Copyright © 2018 Arena Design VN. All rights reserved.
//

import Foundation
import ServiceStack

// MARK: Get All Payment Method
//Response
open class GetPaymentResponse: BaseResponse {
    public required init() {}
    open var lstPayment: [PaymentMethodDTO] = []
    
    open override class var typeName: String { return String(describing: self) }
    open override class var metadata: Metadata {
        return Metadata.create(super.metadata.properties, selfProperties:
            [
                Type<GetPaymentResponse>.arrayProperty("lstPayment", get: {return $0.lstPayment}, set: {$0.lstPayment = $1}),
                ]
        )
    }
}

open class PaymentMethodDTO: JsonSerializable {
    public required init() {}
    
    open var id : String?
    open var title : String?
    open var description : String?
    open var order : String?
    open var enabled : Bool?
    open var method_title : String?
    open var method_description : String?
    open var settings : PaymentSettings?
    open var _links : Links?
    
    // UI Only
    open var isCheck: Bool = false
    
    open class var typeName: String { return String(describing: self) }
    open class var metadata: Metadata {
        return Metadata.create(
            [
                Type<PaymentMethodDTO>.optionalProperty("id", get: {return $0.id}, set: {$0.id = $1}),
                Type<PaymentMethodDTO>.optionalProperty("title", get: {return $0.title}, set: {$0.title = $1}),
                Type<PaymentMethodDTO>.optionalProperty("description", get: {return $0.description}, set: {$0.description = $1}),
                Type<PaymentMethodDTO>.optionalProperty("order", get: {return $0.order}, set: {$0.order = $1}),
                Type<PaymentMethodDTO>.optionalProperty("enabled", get: {return $0.enabled}, set: {$0.enabled = $1}),
                Type<PaymentMethodDTO>.optionalProperty("method_title", get: {return $0.method_title}, set: {$0.method_title = $1}),
                Type<PaymentMethodDTO>.optionalProperty("method_description", get: {return $0.method_description}, set: {$0.method_description = $1}),
                Type<PaymentMethodDTO>.optionalProperty("settings", get: {return $0.settings}, set: {$0.settings = $1}),
                Type<PaymentMethodDTO>.optionalProperty("_links", get: {return $0._links}, set: {$0._links = $1}),
            ]
        )
    }
}

open class PaymentSettings: JsonSerializable {
    public required init() {}
    
    open var title: PaymentSettingsDTO?
    open var instructions: PaymentSettingsDTO?

    open class var typeName: String { return String(describing: self) }
    open class var metadata: Metadata {
        return Metadata.create(
            [
                Type<PaymentSettings>.optionalProperty("title", get: {return $0.title}, set: {$0.title = $1}),
                Type<PaymentSettings>.optionalProperty("instructions", get: {return $0.instructions}, set: {$0.instructions = $1}),
            ]
        )
    }

}

open class PaymentSettingsDTO: JsonSerializable {
    public required init() {}

    open var id: String?
    open var label: String?
    open var description: String?
    open var type: String?
    open var value: String?
    open var _default: String?
    open var tip: String?
    open var placeholder: String?
    
    open class var typeName: String { return String(describing: self) }
    open class var metadata: Metadata {
        return Metadata.create(
            [
                Type<PaymentSettingsDTO>.optionalProperty("id", get: {return $0.id}, set: {$0.id = $1}),
                Type<PaymentSettingsDTO>.optionalProperty("label", get: {return $0.label}, set: {$0.label = $1}),
                Type<PaymentSettingsDTO>.optionalProperty("description", get: {return $0.description}, set: {$0.description = $1}),
                Type<PaymentSettingsDTO>.optionalProperty("type", get: {return $0.type}, set: {$0.type = $1}),
                Type<PaymentSettingsDTO>.optionalProperty("value", get: {return $0.value}, set: {$0.value = $1}),
                Type<PaymentSettingsDTO>.optionalProperty("default", get: {return $0._default}, set: {$0._default = $1}),
                Type<PaymentSettingsDTO>.optionalProperty("tip", get: {return $0.tip}, set: {$0.tip = $1}),
                Type<PaymentSettingsDTO>.optionalProperty("placeholder", get: {return $0.placeholder}, set: {$0.placeholder = $1}),
            ]
        )
    }

}
