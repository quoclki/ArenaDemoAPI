//
//  BaseService.swift
//  API-POinSWallet
//
//  Created by Lu Kien Quoc on 1/10/17.
//  Copyright © 2017 Newstead Technologies VN. All rights reserved.
//

import Foundation
import UIKit
import ServiceStack

public var APIURL: String = "http://www.arenaapp.vn/rnd/wp-json/" {
    didSet {
        if !APIURL.isEmpty {
            BaseService.client = JsonServiceClient(baseUrl: APIURL)
        }
    }
}

open class BaseService {
    static var client = JsonServiceClient(baseUrl: APIURL)
    public init() {}
}
