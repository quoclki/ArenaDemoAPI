//
//  OrderDTO.swift
//  ArenaDemoAPI
//
//  Created by Lu Kien Quoc on 6/22/18.
//  Copyright © 2018 Arena Design VN. All rights reserved.
//

import Foundation

// MARK: - Get List User
// Request
open class GetOrderRequest: BaseRequest {
    public required init() {}
    
    open var after: Date?
    open var before: Date?
    open var offset: Int?
    open var parent: [String] = []
    open var parent_exclude: [String] = []
    open var status: String?
    open var customer: Int?
    open var product: Int?
    open var dp: Int?
    
    open override class var typeName: String { return String(describing: self) }
    open override class var metadata: Metadata {
        return Metadata.create(super.metadata.properties, selfProperties:
            [
                Type<GetOrderRequest>.optionalProperty("after", get: {return $0.after}, set: {$0.after = $1}),
                Type<GetOrderRequest>.optionalProperty("before", get: {return $0.before}, set: {$0.before = $1}),
                Type<GetOrderRequest>.optionalProperty("offset", get: {return $0.offset}, set: {$0.offset = $1}),
                Type<GetOrderRequest>.arrayProperty("parent", get: {return $0.parent}, set: {$0.parent = $1}),
                Type<GetOrderRequest>.arrayProperty("parent_exclude", get: {return $0.parent_exclude}, set: {$0.parent_exclude = $1}),
                Type<GetOrderRequest>.optionalProperty("status", get: {return $0.status}, set: {$0.status = $1}),
                Type<GetOrderRequest>.optionalProperty("customer", get: {return $0.customer}, set: {$0.customer = $1}),
                Type<GetOrderRequest>.optionalProperty("product", get: {return $0.product}, set: {$0.product = $1}),
                Type<GetOrderRequest>.optionalProperty("dp", get: {return $0.dp}, set: {$0.dp = $1}),
                ]
        )
        
    }
}

// Response
open class GetOrderResponse: BaseResponse {
    public required init() {}
    
    open var lstOrder: [OrderDTO] = []
    
    open override class var typeName: String { return String(describing: self) }
    open override class var metadata: Metadata {
        return Metadata.create(super.metadata.properties, selfProperties:
            [
                Type<GetOrderResponse>.arrayProperty("lstOrder", get: {return $0.lstOrder}, set: {$0.lstOrder = $1}),
            ]
        )
    }
}

open class OrderDTO: JsonSerializable {
    public required init() {}
    
    open var id: Int?
    open var parent_id: Int?
    open var number: String?
    open var order_key: String?
    open var created_via: String?
    open var version: Int?
    open var status: String?
    open var currency: String?
    open var date_created: Date?
    open var date_created_gmt: Date?
    open var date_modified: Date?
    open var date_modified_gmt: Date?
    open var discount_total: String?
    open var discount_tax: String?
    open var shipping_total: String?
    open var shipping_tax: String?
    open var cart_tax: String?
    open var total: String?
    open var total_tax: String?
    open var prices_include_tax: Bool?
    open var customer_id: Int?
    open var customer_ip_address: String?
    open var customer_user_agent: String?
    open var customer_note: String?
    open var billing: AddressDTO?
    open var shipping: AddressDTO?
    open var payment_method: String?
    open var payment_method_title: String?
    open var transaction_id: String?
    open var date_paid: Date?
    open var date_paid_gmt: Date?
    open var date_completed: Date?
    open var date_completed_gmt: Date?
    open var cart_hash: String?
    open var meta_data: [MetaDataDTO] = []
    open var line_items: [OrderLineItemDTO] = []
    open var tax_lines: [TaxLineDTO] = []
    open var shipping_lines: [ShippingLineDTO] = []
    open var fee_lines: [FeeLineDTO] = []
    open var coupon_lines: [CouponLineDTO] = []
    open var refunds: [RefundDTO] = []
    open var set_paid: Bool?
    
    // UI Only
    open var payment_method_cellHeight: CGFloat = 0
    open var lstPayment: [PaymentMethodDTO] = []
    
    open class var typeName: String { return String(describing: self) }
    open class var metadata: Metadata {
        return Metadata.create(
            [
                Type<OrderDTO>.optionalProperty("id", get: {return $0.id}, set: {$0.id = $1}),
                Type<OrderDTO>.optionalProperty("parent_id", get: {return $0.parent_id}, set: {$0.parent_id = $1}),
                Type<OrderDTO>.optionalProperty("number", get: {return $0.number}, set: {$0.number = $1}),
                Type<OrderDTO>.optionalProperty("order_key", get: {return $0.order_key}, set: {$0.order_key = $1}),
                Type<OrderDTO>.optionalProperty("created_via", get: {return $0.created_via}, set: {$0.created_via = $1}),
                Type<OrderDTO>.optionalProperty("version", get: {return $0.version}, set: {$0.version = $1}),
                Type<OrderDTO>.optionalProperty("status", get: {return $0.status}, set: {$0.status = $1}),
                Type<OrderDTO>.optionalProperty("currency", get: {return $0.currency}, set: {$0.currency = $1}),
                Type<OrderDTO>.optionalProperty("date_created", get: {return $0.date_created}, set: {$0.date_created = $1}),
                Type<OrderDTO>.optionalProperty("date_created_gmt", get: {return $0.date_created_gmt}, set: {$0.date_created_gmt = $1}),
                Type<OrderDTO>.optionalProperty("date_modified", get: {return $0.date_modified}, set: {$0.date_modified = $1}),
                Type<OrderDTO>.optionalProperty("date_modified_gmt", get: {return $0.date_modified_gmt}, set: {$0.date_modified_gmt = $1}),
                Type<OrderDTO>.optionalProperty("discount_total", get: {return $0.discount_total}, set: {$0.discount_total = $1}),
                Type<OrderDTO>.optionalProperty("discount_tax", get: {return $0.discount_tax}, set: {$0.discount_tax = $1}),
                Type<OrderDTO>.optionalProperty("shipping_total", get: {return $0.shipping_total}, set: {$0.shipping_total = $1}),
                Type<OrderDTO>.optionalProperty("shipping_tax", get: {return $0.shipping_tax}, set: {$0.shipping_tax = $1}),
                Type<OrderDTO>.optionalProperty("cart_tax", get: {return $0.cart_tax}, set: {$0.cart_tax = $1}),
                Type<OrderDTO>.optionalProperty("total", get: {return $0.total}, set: {$0.total = $1}),
                Type<OrderDTO>.optionalProperty("total_tax", get: {return $0.total_tax}, set: {$0.total_tax = $1}),
                Type<OrderDTO>.optionalProperty("prices_include_tax", get: {return $0.prices_include_tax}, set: {$0.prices_include_tax = $1}),
                Type<OrderDTO>.optionalProperty("customer_id", get: {return $0.customer_id}, set: {$0.customer_id = $1}),
                Type<OrderDTO>.optionalProperty("customer_ip_address", get: {return $0.customer_ip_address}, set: {$0.customer_ip_address = $1}),
                Type<OrderDTO>.optionalProperty("customer_user_agent", get: {return $0.customer_user_agent}, set: {$0.customer_user_agent = $1}),
                Type<OrderDTO>.optionalProperty("customer_note", get: {return $0.customer_note}, set: {$0.customer_note = $1}),
                Type<OrderDTO>.optionalProperty("billing", get: {return $0.billing}, set: {$0.billing = $1}),
                Type<OrderDTO>.optionalProperty("shipping", get: {return $0.shipping}, set: {$0.shipping = $1}),
                Type<OrderDTO>.optionalProperty("payment_method", get: {return $0.payment_method}, set: {$0.payment_method = $1}),
                Type<OrderDTO>.optionalProperty("payment_method_title", get: {return $0.payment_method_title}, set: {$0.payment_method_title = $1}),
                Type<OrderDTO>.optionalProperty("transaction_id", get: {return $0.transaction_id}, set: {$0.transaction_id = $1}),
                Type<OrderDTO>.optionalProperty("date_paid", get: {return $0.date_paid}, set: {$0.date_paid = $1}),
                Type<OrderDTO>.optionalProperty("date_paid_gmt", get: {return $0.date_paid_gmt}, set: {$0.date_paid_gmt = $1}),
                Type<OrderDTO>.optionalProperty("date_completed", get: {return $0.date_completed}, set: {$0.date_completed = $1}),
                Type<OrderDTO>.optionalProperty("date_completed_gmt", get: {return $0.date_completed_gmt}, set: {$0.date_completed_gmt = $1}),
                Type<OrderDTO>.optionalProperty("cart_hash", get: {return $0.cart_hash}, set: {$0.cart_hash = $1}),
                Type<OrderDTO>.arrayProperty("meta_data", get: {return $0.meta_data}, set: {$0.meta_data = $1}),
                Type<OrderDTO>.arrayProperty("line_items", get: {return $0.line_items}, set: {$0.line_items = $1}),
                Type<OrderDTO>.arrayProperty("tax_lines", get: {return $0.tax_lines}, set: {$0.tax_lines = $1}),
                Type<OrderDTO>.arrayProperty("shipping_lines", get: {return $0.shipping_lines}, set: {$0.shipping_lines = $1}),
                Type<OrderDTO>.arrayProperty("fee_lines", get: {return $0.fee_lines}, set: {$0.fee_lines = $1}),
                Type<OrderDTO>.arrayProperty("coupon_lines", get: {return $0.coupon_lines}, set: {$0.coupon_lines = $1}),
                Type<OrderDTO>.arrayProperty("refunds", get: {return $0.refunds}, set: {$0.refunds = $1}),
                Type<OrderDTO>.optionalProperty("set_paid", get: {return $0.set_paid}, set: {$0.set_paid = $1}),
            ]
        )
    }
}

open class OrderLineItemDTO: JsonSerializable {
    public required init() {}
    
    open var id: Int = 0
    open var name: String?
    open var product_id: Int?
    open var variation_id: Int = 0
    open var quantity: Int = 0
    open var tax_class: String = ""
    open var subtotal: String = ""
    open var subtotal_tax: String = ""
    open var total: String = ""
    open var total_tax: String = ""
    open var taxes: [TaxesDTO] = []
    open var meta_data: [MetaDataDTO] = []
    open var sku: String = ""
    open var price: String?
    
    // UI Only
    open var isSend: Bool = false
    open var isLoading: Bool = false
    open var productDTO: ProductDTO?
    open var cellHeight: CGFloat = 0
    
    open class var typeName: String { return String(describing: self) }
    open class var metadata: Metadata {
        return Metadata.create(
            [
                Type<OrderLineItemDTO>.property("id", get: {return $0.id}, set: {$0.id = $1}),
                Type<OrderLineItemDTO>.optionalProperty("name", get: {return $0.name}, set: {$0.name = $1}),
                Type<OrderLineItemDTO>.optionalProperty("product_id", get: {return $0.product_id}, set: {$0.product_id = $1}),
                Type<OrderLineItemDTO>.property("variation_id", get: {return $0.variation_id}, set: {$0.variation_id = $1}),
                Type<OrderLineItemDTO>.property("quantity", get: {return $0.quantity}, set: {$0.quantity = $1}),
                Type<OrderLineItemDTO>.property("tax_class", get: {return $0.tax_class}, set: {$0.tax_class = $1}),
                Type<OrderLineItemDTO>.property("subtotal", get: {return $0.subtotal}, set: {$0.subtotal = $1}),
                Type<OrderLineItemDTO>.property("subtotal_tax", get: {return $0.subtotal_tax}, set: {$0.subtotal_tax = $1}),
                Type<OrderLineItemDTO>.property("total", get: {return $0.total}, set: {$0.total = $1}),
                Type<OrderLineItemDTO>.property("total_tax", get: {return $0.total_tax}, set: {$0.total_tax = $1}),
                Type<OrderLineItemDTO>.arrayProperty("taxes", get: {return $0.taxes}, set: {$0.taxes = $1}),
                Type<OrderLineItemDTO>.arrayProperty("meta_data", get: {return $0.meta_data}, set: {$0.meta_data = $1}),
                Type<OrderLineItemDTO>.property("sku", get: {return $0.sku}, set: {$0.sku = $1}),
                Type<OrderLineItemDTO>.optionalProperty("price", get: {return $0.price}, set: {$0.price = $1}),

                Type<OrderLineItemDTO>.property("isSend", get: {return $0.isSend}, set: {$0.isSend = $1}),
                Type<OrderLineItemDTO>.optionalProperty("productDTO", get: {return $0.productDTO}, set: {$0.productDTO = $1}),
                Type<OrderLineItemDTO>.optionalProperty("productDTO", get: {return $0.productDTO}, set: {$0.productDTO = $1}),
            ]
        )
    }
}

open class TaxesDTO: JsonSerializable {
    public required init() {}
    
    open var id : Int?
    open var total : String?
    open var subtotal : String?
    
    open class var typeName: String { return String(describing: self) }
    open class var metadata: Metadata {
        return Metadata.create(
            [
                Type<TaxesDTO>.optionalProperty("id", get: {return $0.id}, set: {$0.id = $1}),
                Type<TaxesDTO>.optionalProperty("total", get: {return $0.total}, set: {$0.total = $1}),
                Type<TaxesDTO>.optionalProperty("subtotal", get: {return $0.subtotal}, set: {$0.subtotal = $1}),
            ]
        )
    }
}

open class TaxLineDTO: JsonSerializable {
    public required init() {}
    
    open var id: Int?
    open var rate_code: String?
    open var rate_id: String?
    open var label: String?
    open var compound: Bool?
    open var tax_total: String?
    open var shipping_tax_total: String?
    open var meta_data: [MetaDataDTO] = []
    
    open class var typeName: String { return String(describing: self) }
    open class var metadata: Metadata {
        return Metadata.create(
            [
                Type<TaxLineDTO>.optionalProperty("id", get: {return $0.id}, set: {$0.id = $1}),
                Type<TaxLineDTO>.optionalProperty("rate_code", get: {return $0.rate_code}, set: {$0.rate_code = $1}),
                Type<TaxLineDTO>.optionalProperty("rate_id", get: {return $0.rate_id}, set: {$0.rate_id = $1}),
                Type<TaxLineDTO>.optionalProperty("label", get: {return $0.label}, set: {$0.label = $1}),
                Type<TaxLineDTO>.optionalProperty("compound", get: {return $0.compound}, set: {$0.compound = $1}),
                Type<TaxLineDTO>.optionalProperty("tax_total", get: {return $0.tax_total}, set: {$0.tax_total = $1}),
                Type<TaxLineDTO>.optionalProperty("shipping_tax_total", get: {return $0.shipping_tax_total}, set: {$0.shipping_tax_total = $1}),
                Type<TaxLineDTO>.arrayProperty("meta_data", get: {return $0.meta_data}, set: {$0.meta_data = $1}),
            ]
        )
    }
}

open class ShippingLineDTO: JsonSerializable {
    public required init() {}
    
    open var d: Int?
    open var method_title: String?
    open var method_id: String?
    open var total: String?
    open var total_tax: String?
    open var taxes: [TaxesDTO] = []
    open var meta_data: [MetaDataDTO] = []
    
    open class var typeName: String { return String(describing: self) }
    open class var metadata: Metadata {
        return Metadata.create(
            [
                Type<ShippingLineDTO>.optionalProperty("d", get: {return $0.d}, set: {$0.d = $1}),
                Type<ShippingLineDTO>.optionalProperty("method_title", get: {return $0.method_title}, set: {$0.method_title = $1}),
                Type<ShippingLineDTO>.optionalProperty("method_id", get: {return $0.method_id}, set: {$0.method_id = $1}),
                Type<ShippingLineDTO>.optionalProperty("total", get: {return $0.total}, set: {$0.total = $1}),
                Type<ShippingLineDTO>.optionalProperty("total_tax", get: {return $0.total_tax}, set: {$0.total_tax = $1}),
                Type<ShippingLineDTO>.arrayProperty("taxes", get: {return $0.taxes}, set: {$0.taxes = $1}),
                Type<ShippingLineDTO>.arrayProperty("meta_data", get: {return $0.meta_data}, set: {$0.meta_data = $1}),
            ]
        )
    }
}

open class FeeLineDTO: JsonSerializable {
    public required init() {}
    
    open var id: Int?
    open var name: String?
    open var tax_class: String?
    open var tax_status: String?
    open var total: String?
    open var total_tax: String?
    open var taxes: [TaxesDTO] = []
    open var meta_data: [MetaDataDTO] = []
    
    open class var typeName: String { return String(describing: self) }
    open class var metadata: Metadata {
        return Metadata.create(
            [
                Type<FeeLineDTO>.optionalProperty("id", get: {return $0.id}, set: {$0.id = $1}),
                Type<FeeLineDTO>.optionalProperty("name", get: {return $0.name}, set: {$0.name = $1}),
                Type<FeeLineDTO>.optionalProperty("tax_class", get: {return $0.tax_class}, set: {$0.tax_class = $1}),
                Type<FeeLineDTO>.optionalProperty("tax_status", get: {return $0.tax_status}, set: {$0.tax_status = $1}),
                Type<FeeLineDTO>.optionalProperty("total", get: {return $0.total}, set: {$0.total = $1}),
                Type<FeeLineDTO>.optionalProperty("total_tax", get: {return $0.total_tax}, set: {$0.total_tax = $1}),
                Type<FeeLineDTO>.arrayProperty("taxes", get: {return $0.taxes}, set: {$0.taxes = $1}),
                Type<FeeLineDTO>.arrayProperty("meta_data", get: {return $0.meta_data}, set: {$0.meta_data = $1}),
            ]
        )
    }
}

open class CouponLineDTO: JsonSerializable {
    public required init() {}
    
    open var id: Int?
    open var code: String?
    open var discount: String?
    open var discount_tax: String?
    open var meta_data: [MetaDataDTO] = []
    
    open class var typeName: String { return String(describing: self) }
    open class var metadata: Metadata {
        return Metadata.create(
            [
                Type<CouponLineDTO>.optionalProperty("id", get: {return $0.id}, set: {$0.id = $1}),
                Type<CouponLineDTO>.optionalProperty("code", get: {return $0.code}, set: {$0.code = $1}),
                Type<CouponLineDTO>.optionalProperty("discount", get: {return $0.discount}, set: {$0.discount = $1}),
                Type<CouponLineDTO>.optionalProperty("discount_tax", get: {return $0.discount_tax}, set: {$0.discount_tax = $1}),
                Type<CouponLineDTO>.arrayProperty("meta_data", get: {return $0.meta_data}, set: {$0.meta_data = $1}),
            ]
        )
    }
}

open class RefundDTO: JsonSerializable {
    public required init() {}
    
    open var id: Int?
    open var reason: String?
    open var total: String?
    
    open class var typeName: String { return String(describing: self) }
    open class var metadata: Metadata {
        return Metadata.create(
            [
                Type<RefundDTO>.optionalProperty("id", get: {return $0.id}, set: {$0.id = $1}),
                Type<RefundDTO>.optionalProperty("reason", get: {return $0.reason}, set: {$0.reason = $1}),
                Type<RefundDTO>.optionalProperty("total", get: {return $0.total}, set: {$0.total = $1}),
            ]
        )
    }
}


// Delete Order
// Request
open class DeleteOrderRequest: BaseRequest {
    public required init() {}
    open var force: String?
    
    open override class var typeName: String { return String(describing: self) }
    open override class var metadata: Metadata {
        return Metadata.create(super.metadata.properties, selfProperties:
            [
                Type<DeleteCustomerRequest>.optionalProperty("force", get: {return $0.force}, set: {$0.force = $1}),
                Type<DeleteCustomerRequest>.optionalProperty("reassign", get: {return $0.reassign}, set: {$0.reassign = $1}),
                ]
        )
        
    }
}

