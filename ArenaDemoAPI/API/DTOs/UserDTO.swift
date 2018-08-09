//
//  UserDTO.swift
//  ArenaDemoAPI
//
//  Created by Lu Kien Quoc on 6/14/18.
//  Copyright © 2018 Arena Design VN. All rights reserved.
//

import Foundation

// MARK: - Get List User
// Request
open class GetUserRequest: BaseRequest {
    public required init() {}
    
    open var offset: Int?
    open var roles: String?
    
    open override class var typeName: String { return String(describing: self) }
    open override class var metadata: Metadata {
        return Metadata.create(super.metadata.properties, selfProperties:
            [
                Type<GetUserRequest>.optionalProperty("offset", get: {return $0.offset}, set: {$0.offset = $1}),
                Type<GetUserRequest>.optionalProperty("roles", get: {return $0.roles}, set: {$0.roles = $1}),
                ]
        )
        
    }
}

// Response
open class GetUserResponse: BaseResponse {
    public required init() {}
    
    open var lstUser: [UserDTO] = []
    
    open override class var typeName: String { return String(describing: self) }
    open override class var metadata: Metadata {
        return Metadata.create(super.metadata.properties, selfProperties:
            [
                Type<GetUserResponse>.arrayProperty("lstUser", get: {return $0.lstUser}, set: {$0.lstUser = $1}),
                ]
        )
    }
}

open class UserDTO: JsonSerializable {
    public required init() {}
    
    open var id : Int?
    open var name : String?
    open var userName : String?
    open var first_name : String?
    open var last_name : String?
    open var email : String?
    open var url : String?
    open var description : String?
    open var link : String?
    open var locale : String?
    open var nickname : String?
    open var slug : String?
    open var registered_date : Date?
    open var roles: [String] = []
    open var password: String?
    open var avatar_urls : Avatar_urls?
    open var meta : [String] = []
    open var _links : Links?
    
    open class var typeName: String { return String(describing: self) }
    open class var metadata: Metadata {
        return Metadata.create(
            [
                Type<UserDTO>.optionalProperty("id", get: {return $0.id}, set: {$0.id = $1}),
                Type<UserDTO>.optionalProperty("name", get: {return $0.name}, set: {$0.name = $1}),
                Type<UserDTO>.optionalProperty("userName", get: {return $0.userName}, set: {$0.userName = $1}),
                Type<UserDTO>.optionalProperty("first_name", get: {return $0.first_name}, set: {$0.first_name = $1}),
                Type<UserDTO>.optionalProperty("last_name", get: {return $0.last_name}, set: {$0.last_name = $1}),
                Type<UserDTO>.optionalProperty("email", get: {return $0.email}, set: {$0.email = $1}),
                Type<UserDTO>.optionalProperty("url", get: {return $0.url}, set: {$0.url = $1}),
                Type<UserDTO>.optionalProperty("description", get: {return $0.description}, set: {$0.description = $1}),
                Type<UserDTO>.optionalProperty("link", get: {return $0.link}, set: {$0.link = $1}),
                Type<UserDTO>.optionalProperty("locale", get: {return $0.locale}, set: {$0.locale = $1}),
                Type<UserDTO>.optionalProperty("nickname", get: {return $0.nickname}, set: {$0.nickname = $1}),
                Type<UserDTO>.optionalProperty("slug", get: {return $0.slug}, set: {$0.slug = $1}),
                Type<UserDTO>.optionalProperty("registered_date", get: {return $0.registered_date}, set: {$0.registered_date = $1}),
                Type<UserDTO>.arrayProperty("roles", get: {return $0.roles}, set: {$0.roles = $1}),
                Type<UserDTO>.optionalProperty("password", get: {return $0.password}, set: {$0.password = $1}),
                Type<UserDTO>.optionalProperty("avatar_urls", get: {return $0.avatar_urls}, set: {$0.avatar_urls = $1}),
                Type<UserDTO>.arrayProperty("meta", get: {return $0.meta}, set: {$0.meta = $1}),
                Type<UserDTO>.optionalProperty("_links", get: {return $0._links}, set: {$0._links = $1}),
                ]
        )
    }
    
}

open class Avatar_urls: JsonSerializable {
    public required init() {}
    
    open var _24 : String?
    open var _48 : String?
    open var _96 : String?
    
    open class var typeName: String { return String(describing: self) }
    open class var metadata: Metadata {
        return Metadata.create(
            [
                Type<Avatar_urls>.optionalProperty("24", get: {return $0._24}, set: {$0._24 = $1}),
                Type<Avatar_urls>.optionalProperty("48", get: {return $0._48}, set: {$0._48 = $1}),
                Type<Avatar_urls>.optionalProperty("96", get: {return $0._96}, set: {$0._96 = $1}),
                ]
        )
    }
    
}
