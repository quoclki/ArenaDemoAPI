//
//  PostDTO.swift
//  ArenaDemoAPI
//
//  Created by Lu Kien Quoc on 6/12/18.
//  Copyright © 2018 Newstead Technologies VN. All rights reserved.
//

import Foundation
import ServiceStack

/// MARK: - Get All Category
// Request
open class GetPostCategoryRequest: BaseRequest {
    public required init() {}
    open var parent: Int?
    open var post: Int?
    
    open override class var typeName: String { return String(describing: self) }
    open override class var metadata: Metadata {
        return Metadata.create(super.metadata.properties, selfProperties:
            [
                Type<GetPostCategoryRequest>.optionalProperty("parent", get: {return $0.parent}, set: {$0.parent = $1}),
                Type<GetPostCategoryRequest>.optionalProperty("post", get: {return $0.post}, set: {$0.post = $1}),
            ]
        )
        
    }
}

//Response
open class GetPostCategoryResponse: BaseResponse {
    public required init() {}
    
    open var lstPostCategory: [PostCategoryDTO] = []
    
    open override class var typeName: String { return String(describing: self) }
    open override class var metadata: Metadata {
        return Metadata.create(super.metadata.properties, selfProperties:
            [
                Type<GetPostCategoryResponse>.arrayProperty("lstPostCategory", get: { $0.lstPostCategory }, set: { $0.lstPostCategory = $1 }),
                ]
        )
    }
}

open class PostCategoryDTO: JsonSerializable {
    public required init() {}
    
    open var id : Int?
    open var count : Int?
    open var description : String?
    open var link : String?
    open var name : String?
    open var slug : String?
    open var taxonomy : String?
    open var parent : Int?
    open var meta : [String] = []
    open var _links : Links?

    open class var typeName: String { return String(describing: self) }
    open class var metadata: Metadata {
        return Metadata.create(
            [
                Type<PostCategoryDTO>.optionalProperty("id", get: {return $0.id}, set: {$0.id = $1}),
                Type<PostCategoryDTO>.optionalProperty("count", get: {return $0.count}, set: {$0.count = $1}),
                Type<PostCategoryDTO>.optionalProperty("description", get: {return $0.description}, set: {$0.description = $1}),
                Type<PostCategoryDTO>.optionalProperty("link", get: {return $0.link}, set: {$0.link = $1}),
                Type<PostCategoryDTO>.optionalProperty("name", get: {return $0.name}, set: {$0.name = $1}),
                Type<PostCategoryDTO>.optionalProperty("slug", get: {return $0.slug}, set: {$0.slug = $1}),
                Type<PostCategoryDTO>.optionalProperty("taxonomy", get: {return $0.taxonomy}, set: {$0.taxonomy = $1}),
                Type<PostCategoryDTO>.optionalProperty("parent", get: {return $0.parent}, set: {$0.parent = $1}),
                Type<PostCategoryDTO>.arrayProperty("meta", get: {return $0.meta}, set: {$0.meta = $1}),
                Type<PostCategoryDTO>.optionalProperty("_links", get: {return $0._links}, set: {$0._links = $1}),
            ]
        )
    }
}


/// MARK: - Get All Category
// Request
open class GetPostRequest: BaseRequest {
    public required init() {}

    open var after: Date?
    open var author: String?
    open var author_exclude: String?
    open var before: Date?
    open var offset: Int?
    open var status: String?
    open var categories: Int?
    open var categories_exclude: [Int] = []
    open var tags: [String] = []
    open var tags_exclude: [String] = []
    open var sticky: Int?
    
    open override class var typeName: String { return String(describing: self) }
    open override class var metadata: Metadata {
        return Metadata.create(super.metadata.properties, selfProperties:
            [
                Type<GetPostRequest>.optionalProperty("after", get: {return $0.after}, set: {$0.after = $1}),
                Type<GetPostRequest>.optionalProperty("author", get: {return $0.author}, set: {$0.author = $1}),
                Type<GetPostRequest>.optionalProperty("author_exclude", get: {return $0.author_exclude}, set: {$0.author_exclude = $1}),
                Type<GetPostRequest>.optionalProperty("before", get: {return $0.before}, set: {$0.before = $1}),
                Type<GetPostRequest>.optionalProperty("offset", get: {return $0.offset}, set: {$0.offset = $1}),
                Type<GetPostRequest>.optionalProperty("status", get: {return $0.status}, set: {$0.status = $1}),
                Type<GetPostRequest>.optionalProperty("categories", get: {return $0.categories}, set: {$0.categories = $1}),
                Type<GetPostRequest>.arrayProperty("categories_exclude", get: {return $0.categories_exclude}, set: {$0.categories_exclude = $1}),
                Type<GetPostRequest>.arrayProperty("tags", get: {return $0.tags}, set: {$0.tags = $1}),
                Type<GetPostRequest>.arrayProperty("tags_exclude", get: {return $0.tags_exclude}, set: {$0.tags_exclude = $1}),
                Type<GetPostRequest>.optionalProperty("sticky", get: {return $0.sticky}, set: {$0.sticky = $1}),
            ]
        )
        
    }
}


// Response
open class GetPostResponse: BaseResponse {
    public required init() {}
    
    open var lstPost: [PostDTO] = []
    
    open override class var typeName: String { return String(describing: self) }
    open override class var metadata: Metadata {
        return Metadata.create(super.metadata.properties, selfProperties:
            [
                Type<GetReviewResponse>.arrayProperty("lstReview", get: {return $0.lstReview}, set: {$0.lstReview = $1}),
                ]
        )
    }
}

open class PostDTO: JsonSerializable {
    public required init() {}
    
    open var id : Int?
    open var date : String?
    open var date_gmt : String?
    open var guid : RenderDTO?
    open var modified : String?
    open var modified_gmt : String?
    open var status : String?
    open var type : String?
    open var link : String?
    open var title : RenderDTO?
    open var content : RenderDTO?
    open var excerpt : RenderDTO?
    open var author : Int?
    open var featured_media : Int?
    open var comment_status : String?
    open var ping_status : String?
    open var sticky : Bool?
    open var template : String?
    open var format : String?
    open var meta : [String] = []
    open var categories : [Int] = []
    open var tags : [Int] = []
    open var _links : Links?

    open class var typeName: String { return String(describing: self) }
    open class var metadata: Metadata {
        return Metadata.create(
            [
                Type<PostDTO>.optionalProperty("id", get: {return $0.id}, set: {$0.id = $1}),
                Type<PostDTO>.optionalProperty("date", get: {return $0.date}, set: {$0.date = $1}),
                Type<PostDTO>.optionalProperty("date_gmt", get: {return $0.date_gmt}, set: {$0.date_gmt = $1}),
                Type<PostDTO>.optionalProperty("guid", get: {return $0.guid}, set: {$0.guid = $1}),
                Type<PostDTO>.optionalProperty("modified", get: {return $0.modified}, set: {$0.modified = $1}),
                Type<PostDTO>.optionalProperty("modified_gmt", get: {return $0.modified_gmt}, set: {$0.modified_gmt = $1}),
                Type<PostDTO>.optionalProperty("status", get: {return $0.status}, set: {$0.status = $1}),
                Type<PostDTO>.optionalProperty("type", get: {return $0.type}, set: {$0.type = $1}),
                Type<PostDTO>.optionalProperty("link", get: {return $0.link}, set: {$0.link = $1}),
                Type<PostDTO>.optionalProperty("title", get: {return $0.title}, set: {$0.title = $1}),
                Type<PostDTO>.optionalProperty("content", get: {return $0.content}, set: {$0.content = $1}),
                Type<PostDTO>.optionalProperty("excerpt", get: {return $0.excerpt}, set: {$0.excerpt = $1}),
                Type<PostDTO>.optionalProperty("author", get: {return $0.author}, set: {$0.author = $1}),
                Type<PostDTO>.optionalProperty("featured_media", get: {return $0.featured_media}, set: {$0.featured_media = $1}),
                Type<PostDTO>.optionalProperty("comment_status", get: {return $0.comment_status}, set: {$0.comment_status = $1}),
                Type<PostDTO>.optionalProperty("ping_status", get: {return $0.ping_status}, set: {$0.ping_status = $1}),
                Type<PostDTO>.optionalProperty("sticky", get: {return $0.sticky}, set: {$0.sticky = $1}),
                Type<PostDTO>.optionalProperty("template", get: {return $0.template}, set: {$0.template = $1}),
                Type<PostDTO>.optionalProperty("format", get: {return $0.format}, set: {$0.format = $1}),
                Type<PostDTO>.arrayProperty("meta", get: {return $0.meta}, set: {$0.meta = $1}),
                Type<PostDTO>.arrayProperty("categories", get: {return $0.categories}, set: {$0.categories = $1}),
                Type<PostDTO>.arrayProperty("tags", get: {return $0.tags}, set: {$0.tags = $1}),
                Type<PostDTO>.optionalProperty("_links", get: {return $0._links}, set: {$0._links = $1}),
                ]
        )
    }
    
}

open class RenderDTO: JsonSerializable {
    public required init() {}
    
    open var rendered : String?
    open var protected : Bool?
    
    open class var typeName: String { return String(describing: self) }
    open class var metadata: Metadata {
        return Metadata.create(
            [
                Type<RenderDTO>.optionalProperty("rendered", get: {return $0.rendered}, set: {$0.rendered = $1}),
                Type<RenderDTO>.optionalProperty("protected", get: {return $0.protected}, set: {$0.protected = $1}),
                ]
        )
    }
}



