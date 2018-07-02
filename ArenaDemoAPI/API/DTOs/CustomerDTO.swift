//
//  CustomerDTO.swift
//  ArenaDemoAPI
//
//  Created by Lu Kien Quoc on 6/19/18.
//  Copyright © 2018 Arena Design VN. All rights reserved.
//

import Foundation
import ServiceStack

/// MARK: - Get All Customer
// Request
open class GetCustomerRequest: BaseRequest {
    public required init() {}
    open var offset: Int?
    open var email: String?
    open var role: String?

    open override class var typeName: String { return String(describing: self) }
    open override class var metadata: Metadata {
        return Metadata.create(super.metadata.properties, selfProperties:
            [
                Type<GetCustomerRequest>.optionalProperty("offset", get: {return $0.offset}, set: {$0.offset = $1}),
                Type<GetCustomerRequest>.optionalProperty("email", get: {return $0.email}, set: {$0.email = $1}),
                Type<GetCustomerRequest>.optionalProperty("role", get: {return $0.role}, set: {$0.role = $1}),
            ]
        )
        
    }
}

//Response
open class GetCustomerResponse: BaseResponse {
    public required init() {}
    
    open var lstCustomer: [CustomerDTO] = []
    
    open override class var typeName: String { return String(describing: self) }
    open override class var metadata: Metadata {
        return Metadata.create(super.metadata.properties, selfProperties:
            [
                Type<GetCustomerResponse>.arrayProperty("lstCustomer", get: {return $0.lstCustomer}, set: {$0.lstCustomer = $1}),
            ]
        )
    }
}

open class CustomerDTO: JsonSerializable {
    public required init() {}
    
    open var id : Int?
    open var date_created : Date?
    open var date_created_gmt : Date?
    open var date_modified : Date?
    open var date_modified_gmt : Date?
    open var email : String?
    open var first_name : String?
    open var last_name : String?
    open var role : String?
    open var username : String?
    open var password : String?
    open var billing : AddressDTO?
    open var shipping : AddressDTO?
    open var is_paying_customer : Bool?
    open var orders_count : Int?
    open var total_spent : Double?
    open var avatar_url : String?
    open var meta_data : [MetaDataDTO] = []
    open var _links : Links?
    
    open class var typeName: String { return String(describing: self) }
    open class var metadata: Metadata {
        return Metadata.create(
            [
                Type<CustomerDTO>.optionalProperty("id", get: {return $0.id}, set: {$0.id = $1}),
                Type<CustomerDTO>.optionalProperty("date_created", get: {return $0.date_created}, set: {$0.date_created = $1}),
                Type<CustomerDTO>.optionalProperty("date_created_gmt", get: {return $0.date_created_gmt}, set: {$0.date_created_gmt = $1}),
                Type<CustomerDTO>.optionalProperty("date_modified", get: {return $0.date_modified}, set: {$0.date_modified = $1}),
                Type<CustomerDTO>.optionalProperty("date_modified_gmt", get: {return $0.date_modified_gmt}, set: {$0.date_modified_gmt = $1}),
                Type<CustomerDTO>.optionalProperty("email", get: {return $0.email}, set: {$0.email = $1}),
                Type<CustomerDTO>.optionalProperty("first_name", get: {return $0.first_name}, set: {$0.first_name = $1}),
                Type<CustomerDTO>.optionalProperty("last_name", get: {return $0.last_name}, set: {$0.last_name = $1}),
                Type<CustomerDTO>.optionalProperty("role", get: {return $0.role}, set: {$0.role = $1}),
                Type<CustomerDTO>.optionalProperty("username", get: {return $0.username}, set: {$0.username = $1}),
                Type<CustomerDTO>.optionalProperty("password", get: {return $0.password}, set: {$0.password = $1}),
                Type<CustomerDTO>.optionalProperty("billing", get: {return $0.billing}, set: {$0.billing = $1}),
                Type<CustomerDTO>.optionalProperty("shipping", get: {return $0.shipping}, set: {$0.shipping = $1}),
                Type<CustomerDTO>.optionalProperty("is_paying_customer", get: {return $0.is_paying_customer}, set: {$0.is_paying_customer = $1}),
                Type<CustomerDTO>.optionalProperty("orders_count", get: {return $0.orders_count}, set: {$0.orders_count = $1}),
                Type<CustomerDTO>.optionalProperty("total_spent", get: {return $0.total_spent}, set: {$0.total_spent = $1}),
                Type<CustomerDTO>.optionalProperty("avatar_url", get: {return $0.avatar_url}, set: {$0.avatar_url = $1}),
                Type<CustomerDTO>.arrayProperty("meta_data", get: {return $0.meta_data}, set: {$0.meta_data = $1}),
                Type<CustomerDTO>.optionalProperty("_links", get: {return $0._links}, set: {$0._links = $1}),
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


open class AddressDTO: JsonSerializable {
    public required init() {}
    
    open var first_name : String = ""
    open var last_name : String = ""
    open var company : String = ""
    open var address_1 : String = ""
    open var address_2 : String = ""
    open var city : String = ""
    open var state : String = ""
    open var postcode : String = ""
    open var country : String = ""
    open var email : String = ""
    open var phone : String = ""

    open class var typeName: String { return String(describing: self) }
    open class var metadata: Metadata {
        return Metadata.create(
            [
                Type<AddressDTO>.property("first_name", get: {return $0.first_name}, set: {$0.first_name = $1}),
                Type<AddressDTO>.property("last_name", get: {return $0.last_name}, set: {$0.last_name = $1}),
                Type<AddressDTO>.property("company", get: {return $0.company}, set: {$0.company = $1}),
                Type<AddressDTO>.property("address_1", get: {return $0.address_1}, set: {$0.address_1 = $1}),
                Type<AddressDTO>.property("address_2", get: {return $0.address_2}, set: {$0.address_2 = $1}),
                Type<AddressDTO>.property("city", get: {return $0.city}, set: {$0.city = $1}),
                Type<AddressDTO>.property("state", get: {return $0.state}, set: {$0.state = $1}),
                Type<AddressDTO>.property("postcode", get: {return $0.postcode}, set: {$0.postcode = $1}),
                Type<AddressDTO>.property("country", get: {return $0.country}, set: {$0.country = $1}),
                Type<AddressDTO>.property("email", get: {return $0.email}, set: {$0.email = $1}),
                Type<AddressDTO>.property("phone", get: {return $0.phone}, set: {$0.phone = $1}),
            ]
        )
    }
}


// Delete Customer
// Request
open class DeleteCustomerRequest: BaseRequest {
    public required init() {}
    open var id: Int?
    open var force: String?
    open var reassign: Int?
    
    open override class var typeName: String { return String(describing: self) }
    open override class var metadata: Metadata {
        return Metadata.create(super.metadata.properties, selfProperties:
            [
                Type<DeleteCustomerRequest>.optionalProperty("id", get: {return $0.id}, set: {$0.id = $1}),
                Type<DeleteCustomerRequest>.optionalProperty("force", get: {return $0.force}, set: {$0.force = $1}),
                Type<DeleteCustomerRequest>.optionalProperty("reassign", get: {return $0.reassign}, set: {$0.reassign = $1}),
                ]
        )
        
    }
}

