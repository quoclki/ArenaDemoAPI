//
//  MediaDTO.swift
//  ArenaDemoAPI
//
//  Created by Lu Kien Quoc on 6/27/18.
//  Copyright © 2018 Newstead Technologies VN. All rights reserved.
//

import Foundation
import ServiceStack

// MARK: - Get List Media
// Request
open class GetMediaRequest: BaseRequest {
    public required init() {}
    
    open var before: Date?
    open var after: Date?
    open var author: String?
    open var author_exclude: String?
    open var offset: Int?
    open var status: String?
    open var categories: [Int] = []
    open var categories_exclude: [Int] = []
    open var tags: [String] = []
    open var tags_exclude: [String] = []
    open var sticky: Int?
    
    open override class var typeName: String { return String(describing: self) }
    open override class var metadata: Metadata {
        return Metadata.create(super.metadata.properties, selfProperties:
            [
                Type<GetMediaRequest>.optionalProperty("before", get: {return $0.before}, set: {$0.before = $1}),
                Type<GetMediaRequest>.optionalProperty("after", get: {return $0.after}, set: {$0.after = $1}),
                Type<GetMediaRequest>.optionalProperty("author", get: {return $0.author}, set: {$0.author = $1}),
                Type<GetMediaRequest>.optionalProperty("author_exclude", get: {return $0.author_exclude}, set: {$0.author_exclude = $1}),
                Type<GetMediaRequest>.optionalProperty("offset", get: {return $0.offset}, set: {$0.offset = $1}),
                Type<GetMediaRequest>.optionalProperty("status", get: {return $0.status}, set: {$0.status = $1}),
                Type<GetMediaRequest>.arrayProperty("categories", get: {return $0.categories}, set: {$0.categories = $1}),
                Type<GetMediaRequest>.arrayProperty("categories_exclude", get: {return $0.categories_exclude}, set: {$0.categories_exclude = $1}),
                Type<GetMediaRequest>.arrayProperty("tags", get: {return $0.tags}, set: {$0.tags = $1}),
                Type<GetMediaRequest>.arrayProperty("tags_exclude", get: {return $0.tags_exclude}, set: {$0.tags_exclude = $1}),
                Type<GetMediaRequest>.optionalProperty("sticky", get: {return $0.sticky}, set: {$0.sticky = $1}),
            ]
        )
    }
}

// Response
open class GetMediaResponse: BaseResponse {
    public required init() {}
    
    open var lstMedia: [MediaDTO] = []
    
    open override class var typeName: String { return String(describing: self) }
    open override class var metadata: Metadata {
        return Metadata.create(super.metadata.properties, selfProperties:
            [
                Type<GetMediaResponse>.arrayProperty("lstMedia", get: {return $0.lstMedia}, set: {$0.lstMedia = $1}),
            ]
        )
    }
}


open class MediaDTO: JsonSerializable {
    public required init() {}
    
    open var id : Int?
    open var date : String?
    open var date_gmt : String?
    open var guid : RenderDTO?
    open var modified : String?
    open var modified_gmt : String?
    open var slug : String?
    open var status : String?
    open var type : String?
    open var link : String?
    open var title : RenderDTO?
    open var author : Int?
    open var comment_status : String?
    open var ping_status : String?
    open var template : String?
    open var meta : [String] = []
    open var description : RenderDTO?
    open var caption : RenderDTO?
    open var alt_text : String?
    open var media_type : String?
    open var mime_type : String?
    open var media_details : Media_details?
    open var post : String?
    open var source_url : String?
    open var _links : Links?

    open class var typeName: String { return String(describing: self) }
    open class var metadata: Metadata {
        return Metadata.create(
            [
                Type<MediaDTO>.optionalProperty("id", get: {return $0.id}, set: {$0.id = $1}),
                Type<MediaDTO>.optionalProperty("date", get: {return $0.date}, set: {$0.date = $1}),
                Type<MediaDTO>.optionalProperty("date_gmt", get: {return $0.date_gmt}, set: {$0.date_gmt = $1}),
                Type<MediaDTO>.optionalProperty("guid", get: {return $0.guid}, set: {$0.guid = $1}),
                Type<MediaDTO>.optionalProperty("modified", get: {return $0.modified}, set: {$0.modified = $1}),
                Type<MediaDTO>.optionalProperty("modified_gmt", get: {return $0.modified_gmt}, set: {$0.modified_gmt = $1}),
                Type<MediaDTO>.optionalProperty("slug", get: {return $0.slug}, set: {$0.slug = $1}),
                Type<MediaDTO>.optionalProperty("status", get: {return $0.status}, set: {$0.status = $1}),
                Type<MediaDTO>.optionalProperty("type", get: {return $0.type}, set: {$0.type = $1}),
                Type<MediaDTO>.optionalProperty("link", get: {return $0.link}, set: {$0.link = $1}),
                Type<MediaDTO>.optionalProperty("title", get: {return $0.title}, set: {$0.title = $1}),
                Type<MediaDTO>.optionalProperty("author", get: {return $0.author}, set: {$0.author = $1}),
                Type<MediaDTO>.optionalProperty("comment_status", get: {return $0.comment_status}, set: {$0.comment_status = $1}),
                Type<MediaDTO>.optionalProperty("ping_status", get: {return $0.ping_status}, set: {$0.ping_status = $1}),
                Type<MediaDTO>.optionalProperty("template", get: {return $0.template}, set: {$0.template = $1}),
                Type<MediaDTO>.arrayProperty("meta", get: {return $0.meta}, set: {$0.meta = $1}),
                Type<MediaDTO>.optionalProperty("description", get: {return $0.description}, set: {$0.description = $1}),
                Type<MediaDTO>.optionalProperty("caption", get: {return $0.caption}, set: {$0.caption = $1}),
                Type<MediaDTO>.optionalProperty("alt_text", get: {return $0.alt_text}, set: {$0.alt_text = $1}),
                Type<MediaDTO>.optionalProperty("media_type", get: {return $0.media_type}, set: {$0.media_type = $1}),
                Type<MediaDTO>.optionalProperty("mime_type", get: {return $0.mime_type}, set: {$0.mime_type = $1}),
                Type<MediaDTO>.optionalProperty("media_details", get: {return $0.media_details}, set: {$0.media_details = $1}),
                Type<MediaDTO>.optionalProperty("post", get: {return $0.post}, set: {$0.post = $1}),
                Type<MediaDTO>.optionalProperty("source_url", get: {return $0.source_url}, set: {$0.source_url = $1}),
                Type<MediaDTO>.optionalProperty("_links", get: {return $0._links}, set: {$0._links = $1}),
            ]
        )
    }
}

open class Media_details: JsonSerializable {
    public required init() {}
    
    open var width : Int?
    open var height : Int?
    open var file : String?
    open var sizes : SizesDTO?
    open var image_meta : ImageMetaDTO?

    open class var typeName: String { return String(describing: self) }
    open class var metadata: Metadata {
        return Metadata.create(
            [
                Type<Media_details>.optionalProperty("width", get: {return $0.width}, set: {$0.width = $1}),
                Type<Media_details>.optionalProperty("height", get: {return $0.height}, set: {$0.height = $1}),
                Type<Media_details>.optionalProperty("file", get: {return $0.file}, set: {$0.file = $1}),
                Type<Media_details>.optionalProperty("sizes", get: {return $0.sizes}, set: {$0.sizes = $1}),
                Type<Media_details>.optionalProperty("image_meta", get: {return $0.image_meta}, set: {$0.image_meta = $1}),
            ]
        )
    }
}

open class SizesDTO: JsonSerializable {
    public required init() {}
    
    open var thumbnail : ImageFileDTO?
    open var medium : ImageFileDTO?
    open var yith_woocompare_image : ImageFileDTO?
    open var woocommerce_thumbnail : ImageFileDTO?
    open var woocommerce_gallery_thumbnail : ImageFileDTO?
    open var shop_catalog : ImageFileDTO?
    open var shop_thumbnail : ImageFileDTO?
    open var full : ImageFileDTO?

    open class var typeName: String { return String(describing: self) }
    open class var metadata: Metadata {
        return Metadata.create(
            [
                Type<SizesDTO>.optionalProperty("thumbnail", get: {return $0.thumbnail}, set: {$0.thumbnail = $1}),
                Type<SizesDTO>.optionalProperty("medium", get: {return $0.medium}, set: {$0.medium = $1}),
                Type<SizesDTO>.optionalProperty("yith-woocompare-image", get: {return $0.yith_woocompare_image}, set: {$0.yith_woocompare_image = $1}),
                Type<SizesDTO>.optionalProperty("woocommerce_thumbnail", get: {return $0.woocommerce_thumbnail}, set: {$0.woocommerce_thumbnail = $1}),
                Type<SizesDTO>.optionalProperty("woocommerce_gallery_thumbnail", get: {return $0.woocommerce_gallery_thumbnail}, set: {$0.woocommerce_gallery_thumbnail = $1}),
                Type<SizesDTO>.optionalProperty("shop_catalog", get: {return $0.shop_catalog}, set: {$0.shop_catalog = $1}),
                Type<SizesDTO>.optionalProperty("shop_thumbnail", get: {return $0.shop_thumbnail}, set: {$0.shop_thumbnail = $1}),
                Type<SizesDTO>.optionalProperty("full", get: {return $0.full}, set: {$0.full = $1}),
            ]
        )
    }
}

open class ImageFileDTO: JsonSerializable {
    public required init() {}
    
    open var file : String?
    open var width : Int?
    open var height : Int?
    open var mime_type : String?
    open var source_url : String?
    open var uncropped: Bool?
    
    open class var typeName: String { return String(describing: self) }
    open class var metadata: Metadata {
        return Metadata.create(
            [
                Type<ImageFileDTO>.optionalProperty("file", get: {return $0.file}, set: {$0.file = $1}),
                Type<ImageFileDTO>.optionalProperty("width", get: {return $0.width}, set: {$0.width = $1}),
                Type<ImageFileDTO>.optionalProperty("height", get: {return $0.height}, set: {$0.height = $1}),
                Type<ImageFileDTO>.optionalProperty("mime_type", get: {return $0.mime_type}, set: {$0.mime_type = $1}),
                Type<ImageFileDTO>.optionalProperty("source_url", get: {return $0.source_url}, set: {$0.source_url = $1}),
                Type<ImageFileDTO>.optionalProperty("uncropped", get: {return $0.uncropped}, set: {$0.uncropped = $1}),
            ]
        )
    }
}

open class ImageMetaDTO: JsonSerializable {
    public required init() {}
    
    open var aperture : String?
    open var credit : String?
    open var camera : String?
    open var caption : String?
    open var created_timestamp : String?
    open var copyright : String?
    open var focal_length : String?
    open var iso : String?
    open var shutter_speed : String?
    open var title : String?
    open var orientation : String?
    open var keywordswords : [String] = []

    open class var typeName: String { return String(describing: self) }
    open class var metadata: Metadata {
        return Metadata.create(
            [
                Type<ImageMetaDTO>.optionalProperty("aperture", get: {return $0.aperture}, set: {$0.aperture = $1}),
                Type<ImageMetaDTO>.optionalProperty("credit", get: {return $0.credit}, set: {$0.credit = $1}),
                Type<ImageMetaDTO>.optionalProperty("camera", get: {return $0.camera}, set: {$0.camera = $1}),
                Type<ImageMetaDTO>.optionalProperty("caption", get: {return $0.caption}, set: {$0.caption = $1}),
                Type<ImageMetaDTO>.optionalProperty("created_timestamp", get: {return $0.created_timestamp}, set: {$0.created_timestamp = $1}),
                Type<ImageMetaDTO>.optionalProperty("copyright", get: {return $0.copyright}, set: {$0.copyright = $1}),
                Type<ImageMetaDTO>.optionalProperty("focal_length", get: {return $0.focal_length}, set: {$0.focal_length = $1}),
                Type<ImageMetaDTO>.optionalProperty("iso", get: {return $0.iso}, set: {$0.iso = $1}),
                Type<ImageMetaDTO>.optionalProperty("shutter_speed", get: {return $0.shutter_speed}, set: {$0.shutter_speed = $1}),
                Type<ImageMetaDTO>.optionalProperty("title", get: {return $0.title}, set: {$0.title = $1}),
                Type<ImageMetaDTO>.optionalProperty("orientation", get: {return $0.orientation}, set: {$0.orientation = $1}),
                Type<ImageMetaDTO>.arrayProperty("keywordswords", get: {return $0.keywordswords}, set: {$0.keywordswords = $1}),
            ]
        )
    }
}


// Delete Customer
// Request
open class DeleteMediaRequest: BaseRequest {
    public required init() {}
    open var id: Int?
    open var force: String?
    
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

