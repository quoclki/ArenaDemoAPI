//
//  AuthDTO.swift
//  ArenaDemoAPI
//
//  Created by Lu Kien Quoc on 6/29/18.
//  Copyright © 2018 Newstead Technologies VN. All rights reserved.
//

import Foundation
import ServiceStack

// MARK: - Get Auth Info
// Request
open class GetAuthRequest: BaseRequest {
    public required init() {}
    
    open var username: String?
    open var password: String?
    open var second: Int?
    
    open override class var typeName: String { return String(describing: self) }
    open override class var metadata: Metadata {
        return Metadata.create(super.metadata.properties, selfProperties:
            [
                Type<GetAuthRequest>.optionalProperty("username", get: {return $0.username}, set: {$0.username = $1}),
                Type<GetAuthRequest>.optionalProperty("password", get: {return $0.password}, set: {$0.password = $1}),
                Type<GetAuthRequest>.optionalProperty("second", get: {return $0.second}, set: {$0.second = $1}),
            ]
        )
    }
}

// Response
open class GetAuthResponse: BaseResponse {
    public required init() {}
    
    open var authDTO: AuthDTO?
    
    open override class var typeName: String { return String(describing: self) }
    open override class var metadata: Metadata {
        return Metadata.create(super.metadata.properties, selfProperties:
            [
                Type<GetAuthResponse>.optionalProperty("authDTO", get: {return $0.authDTO}, set: {$0.authDTO = $1}),
            ]
        )
    }
}

open class AuthDTO: JsonSerializable {
    public required init() {}
    
    open var status: String?
    open var error: String?
    open var cookie: String?
    open var cookie_name: String?
    open var user: AuthUserDTO?
    
    open class var typeName: String { return String(describing: self) }
    open class var metadata: Metadata {
        return Metadata.create(
            [
                Type<AuthDTO>.optionalProperty("status", get: {return $0.status}, set: {$0.status = $1}),
                Type<AuthDTO>.optionalProperty("error", get: {return $0.error}, set: {$0.error = $1}),
                Type<AuthDTO>.optionalProperty("cookie", get: {return $0.cookie}, set: {$0.cookie = $1}),
                Type<AuthDTO>.optionalProperty("cookie_name", get: {return $0.cookie_name}, set: {$0.cookie_name = $1}),
                Type<AuthDTO>.optionalProperty("user", get: {return $0.user}, set: {$0.user = $1}),
            ]
        )
    }
}

open class AuthUserDTO: JsonSerializable {
    public required init() {}
    
    open var id: Int?
    open var username: String?
    open var nicename: String?
    open var email: String?
    open var url: String?
    open var registered: Date?
    open var displayname: String?
    open var firstname: String?
    open var lastname: String?
    open var nickname: String?
    open var description: String?
    open var capabilities: String?
    open var avatar: String?
    
    open class var typeName: String { return String(describing: self) }
    open class var metadata: Metadata {
        return Metadata.create(
            [
                Type<AuthUserDTO>.optionalProperty("id", get: {return $0.id}, set: {$0.id = $1}),
                Type<AuthUserDTO>.optionalProperty("username", get: {return $0.username}, set: {$0.username = $1}),
                Type<AuthUserDTO>.optionalProperty("nicename", get: {return $0.nicename}, set: {$0.nicename = $1}),
                Type<AuthUserDTO>.optionalProperty("email", get: {return $0.email}, set: {$0.email = $1}),
                Type<AuthUserDTO>.optionalProperty("url", get: {return $0.url}, set: {$0.url = $1}),
                Type<AuthUserDTO>.optionalProperty("registered", get: {return $0.registered}, set: {$0.registered = $1}),
                Type<AuthUserDTO>.optionalProperty("displayname", get: {return $0.displayname}, set: {$0.displayname = $1}),
                Type<AuthUserDTO>.optionalProperty("firstname", get: {return $0.firstname}, set: {$0.firstname = $1}),
                Type<AuthUserDTO>.optionalProperty("lastname", get: {return $0.lastname}, set: {$0.lastname = $1}),
                Type<AuthUserDTO>.optionalProperty("nickname", get: {return $0.nickname}, set: {$0.nickname = $1}),
                Type<AuthUserDTO>.optionalProperty("description", get: {return $0.description}, set: {$0.description = $1}),
                Type<AuthUserDTO>.optionalProperty("capabilities", get: {return $0.capabilities}, set: {$0.capabilities = $1}),
                Type<AuthUserDTO>.optionalProperty("avatar", get: {return $0.avatar}, set: {$0.avatar = $1}),
            ]
        )
    }
}
