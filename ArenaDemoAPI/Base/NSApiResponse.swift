//
//  NSApiResponse.swift
//  NSNuPOSFnB_Service
//
//  Created by Lĩnh Lê on 8/31/16.
//  Copyright © 2016 Lĩnh Lê. All rights reserved.
//

import UIKit
import ServiceStack

open class NSApiResponseBase: JsonSerializable, HasMetadata {
    public required init() {}
    
    open var code: Bool?
    open var message: String?

    open class var typeName: String { return String(describing: self) }
    open class var metadata: Metadata {
        return Metadata.create(
            [
                Type<NSApiResponseBase>.optionalProperty("code", get: {return $0.code}, set: {$0.code = $1}),
                Type<NSApiResponseBase>.optionalProperty("message", get: {return $0.message}, set: {$0.message = $1}),
            ]
        )
    }
}
