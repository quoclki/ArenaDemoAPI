//
//  EnumService.swift
//  ArenaDemoAPI
//
//  Created by Lu Kien Quoc on 6/19/18.
//  Copyright © 2018 Newstead Technologies VN. All rights reserved.
//

import Foundation

public enum EOrder: String {
    case asc = "asc"
    case desc = "desc"
}

public enum EContext: String {
    case view = "view"
    case embed = "embed"
    case edit = "edit"
}

public enum EProductCategoryOrderBy: String {
    case id = "id"
    case include = "include"
    case name = "name"
    case slug = "slug"
    case term_group = "term_group"
    case description = "description"
    case count = "count"
}

public enum EProductOrderBy: String {
    case date = "date"
    case id = "id"
    case include = "include"
    case title = "title"
    case slug = "slug"
}

public enum EProductStatus: String {
    case any = "any"
    case draft = "draft"
    case pending = "pending"
    case _private = "private"
    case publish = "publish"
}

public enum EProductType: String {
    case simple = "simple"
    case grouped = "grouped"
    case external = "external"
    case variable = "variable"
}

public enum EProductTaxClass: String {
    case standard = "standard"
    case reduced_rate = "reduced-rate"
    case zero_rate = "zero-rate"
}

public enum EPostOrderBy: String {
    case date = "date"
    case relevance = "relevance"
    case id = "id"
    case include = "include"
    case title = "title"
    case slug = "slug"
}

public enum ECustomerOrderBy: String {
    case id = "id"
    case include = "include"
    case name = "name"
    case registered_date = "registered_date"
}

public enum ECustomerRole: String {
    case all = "all"
    case administrator = "administrator"
    case editor = "editor"
    case author = "author"
    case contributor = "contributor"
    case subscriber = "subscriber"
    case customer = "customer"
    case shop_manager = "shop_manager"
}




