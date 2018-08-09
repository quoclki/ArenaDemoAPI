//
//  PageDTO.swift
//  ArenaDemoAPI
//
//  Created by Lu Kien Quoc on 8/8/18.
//  Copyright © 2018 Arena Design VN. All rights reserved.
//

import Foundation

/// MARK: - Get All Pages
// Request
open class GetPageRequest: BaseRequest {
    public required init() {}

    open var after: Date?
    open var author: String?
    open var author_exclude: String?
    open var before: Date?
    open var menu_order: String?
    open var offset: Int?
    open var parent: String?
    open var parent_exclude: String?
    open var status: String?
    
    open override class var typeName: String { return String(describing: self) }
    open override class var metadata: Metadata {
        return Metadata.create(super.metadata.properties, selfProperties:
            [
                Type<GetPageRequest>.optionalProperty("after", get: {return $0.after}, set: {$0.after = $1}),
                Type<GetPageRequest>.optionalProperty("author", get: {return $0.author}, set: {$0.author = $1}),
                Type<GetPageRequest>.optionalProperty("author_exclude", get: {return $0.author_exclude}, set: {$0.author_exclude = $1}),
                Type<GetPageRequest>.optionalProperty("before", get: {return $0.before}, set: {$0.before = $1}),
                Type<GetPageRequest>.optionalProperty("menu_order", get: {return $0.menu_order}, set: {$0.menu_order = $1}),
                Type<GetPageRequest>.optionalProperty("offset", get: {return $0.offset}, set: {$0.offset = $1}),
                Type<GetPageRequest>.optionalProperty("parent", get: {return $0.parent}, set: {$0.parent = $1}),
                Type<GetPageRequest>.optionalProperty("parent_exclude", get: {return $0.parent_exclude}, set: {$0.parent_exclude = $1}),
                Type<GetPageRequest>.optionalProperty("status", get: {return $0.status}, set: {$0.status = $1}),
            ]
        )
        
    }
}

//Response
open class GetPageResponse: BaseResponse {
    public required init() {}
    
    open var lstPage: [PageDTO] = []
    
    open override class var typeName: String { return String(describing: self) }
    open override class var metadata: Metadata {
        return Metadata.create(super.metadata.properties, selfProperties:
            [
                Type<GetPageResponse>.arrayProperty("lstPage", get: {return $0.lstPage}, set: {$0.lstPage = $1}),
            ]
        )
    }
}

open class PageDTO: JsonSerializable {
    public required init() {}
    
    open var date: Date?
    open var date_gmt: Date?
    open var guid: RenderDTO?
    open var id: Int?
    open var link: String?
    open var modified: Date?
    open var modified_gmt: Date?
    open var slug: String?
    open var status: String?
    open var type: String?
    open var password: String?
    open var parent: String?
    open var title: RenderDTO?
    open var content: RenderDTO?
    open var author: Int?
    open var excerpt: RenderDTO?
    open var featured_media: Int?
    open var comment_status: String?
    open var ping_status: String?
    open var menu_order: Int?
    open var meta: [String] = []
    open var _links: Links?
    
    open class var typeName: String { return String(describing: self) }
    open class var metadata: Metadata {
        return Metadata.create(
            [
                Type<PageDTO>.optionalProperty("date", get: {return $0.date}, set: {$0.date = $1}),
                Type<PageDTO>.optionalProperty("date_gmt", get: {return $0.date_gmt}, set: {$0.date_gmt = $1}),
                Type<PageDTO>.optionalProperty("guid", get: {return $0.guid}, set: {$0.guid = $1}),
                Type<PageDTO>.optionalProperty("id", get: {return $0.id}, set: {$0.id = $1}),
                Type<PageDTO>.optionalProperty("link", get: {return $0.link}, set: {$0.link = $1}),
                Type<PageDTO>.optionalProperty("modified", get: {return $0.modified}, set: {$0.modified = $1}),
                Type<PageDTO>.optionalProperty("modified_gmt", get: {return $0.modified_gmt}, set: {$0.modified_gmt = $1}),
                Type<PageDTO>.optionalProperty("slug", get: {return $0.slug}, set: {$0.slug = $1}),
                Type<PageDTO>.optionalProperty("status", get: {return $0.status}, set: {$0.status = $1}),
                Type<PageDTO>.optionalProperty("type", get: {return $0.type}, set: {$0.type = $1}),
                Type<PageDTO>.optionalProperty("password", get: {return $0.password}, set: {$0.password = $1}),
                Type<PageDTO>.optionalProperty("parent", get: {return $0.parent}, set: {$0.parent = $1}),
                Type<PageDTO>.optionalProperty("title", get: {return $0.title}, set: {$0.title = $1}),
                Type<PageDTO>.optionalProperty("content", get: {return $0.content}, set: {$0.content = $1}),
                Type<PageDTO>.optionalProperty("author", get: {return $0.author}, set: {$0.author = $1}),
                Type<PageDTO>.optionalProperty("excerpt", get: {return $0.excerpt}, set: {$0.excerpt = $1}),
                Type<PageDTO>.optionalProperty("featured_media", get: {return $0.featured_media}, set: {$0.featured_media = $1}),
                Type<PageDTO>.optionalProperty("comment_status", get: {return $0.comment_status}, set: {$0.comment_status = $1}),
                Type<PageDTO>.optionalProperty("ping_status", get: {return $0.ping_status}, set: {$0.ping_status = $1}),
                Type<PageDTO>.optionalProperty("menu_order", get: {return $0.menu_order}, set: {$0.menu_order = $1}),
                Type<PageDTO>.arrayProperty("meta", get: {return $0.meta}, set: {$0.meta = $1}),
                Type<PageDTO>.optionalProperty("_links", get: {return $0._links}, set: {$0._links = $1}),
            ]
        )
    }
}
