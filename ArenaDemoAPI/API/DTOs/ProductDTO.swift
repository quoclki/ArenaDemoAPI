//
//  ProductDTO.swift
//  ArenaDemoAPI
//
//  Created by Lu Kien Quoc on 6/3/18.
//  Copyright © 2018 Newstead Technologies VN. All rights reserved.
//

import Foundation
import ServiceStack

/// MARK: - Get All Category
// Request
open class GetCategoryRequest: BaseRequest {
    public required init() {}
    open var parent: Int?
    open var product: Int?
    
    open override class var typeName: String { return String(describing: self) }
    open override class var metadata: Metadata {
        return Metadata.create(super.metadata.properties, selfProperties:
            [
                Type<GetCategoryRequest>.optionalProperty("parent", get: {return $0.parent}, set: {$0.parent = $1}),
                Type<GetCategoryRequest>.optionalProperty("product", get: {return $0.product}, set: {$0.product = $1}),
            ]
        )
        
    }
}

//Response
open class GetCategoryResponse: BaseResponse {
    public required init() {}
    
    open var lstCategory: [CategoryDTO] = []

    open override class var typeName: String { return String(describing: self) }
    open override class var metadata: Metadata {
        return Metadata.create(super.metadata.properties, selfProperties:
            [
                Type<GetCategoryResponse>.arrayProperty("lstCategory", get: { $0.lstCategory }, set: { $0.lstCategory = $1 }),
            ]
        )
    }
}

open class CategoryDTO: JsonSerializable {
    public required init() {}
    
    open var id: Int?
    open var name: String?
    open var slug: String?
    open var parent: Int?
    open var description: String?
    open var display: String?
    open var image: [CategoryImageDTO] = []
    open var menu_order: Int?
    open var count: Int?
    open var _link: Links?
    
    open class var typeName: String { return String(describing: self) }
    open class var metadata: Metadata {
        return Metadata.create(
            [
                Type<CategoryDTO>.optionalProperty("id", get: {return $0.id}, set: {$0.id = $1}),
                Type<CategoryDTO>.optionalProperty("name", get: {return $0.name}, set: {$0.name = $1}),
                Type<CategoryDTO>.optionalProperty("slug", get: {return $0.slug}, set: {$0.slug = $1}),
                Type<CategoryDTO>.optionalProperty("parent", get: {return $0.parent}, set: {$0.parent = $1}),
                Type<CategoryDTO>.optionalProperty("description", get: {return $0.description}, set: {$0.description = $1}),
                Type<CategoryDTO>.optionalProperty("display", get: {return $0.display}, set: {$0.display = $1}),
                Type<CategoryDTO>.arrayProperty("image", get: {return $0.image}, set: {$0.image = $1}),
                Type<CategoryDTO>.optionalProperty("menu_order", get: {return $0.menu_order}, set: {$0.menu_order = $1}),
                Type<CategoryDTO>.optionalProperty("count", get: {return $0.count}, set: {$0.count = $1}),
                Type<CategoryDTO>.optionalProperty("_link", get: {return $0._link}, set: {$0._link = $1}),
            ]
        )
    }
}

open class CategoryImageDTO: JsonSerializable {
    public required init() {}

    open var id: Int?
    open var date_created: Date?
    open var date_created_gmt: Date?
    open var date_modified: Date?
    open var date_modified_gmt: Date?
    open var src: String?
    open var title: String?
    open var alt: String?
    
    open class var typeName: String { return String(describing: self) }
    open class var metadata: Metadata {
        return Metadata.create(
            [
                Type<CategoryImageDTO>.optionalProperty("id", get: {return $0.id}, set: {$0.id = $1}),
                Type<CategoryImageDTO>.optionalProperty("date_created", get: {return $0.date_created}, set: {$0.date_created = $1}),
                Type<CategoryImageDTO>.optionalProperty("date_created_gmt", get: {return $0.date_created_gmt}, set: {$0.date_created_gmt = $1}),
                Type<CategoryImageDTO>.optionalProperty("date_modified", get: {return $0.date_modified}, set: {$0.date_modified = $1}),
                Type<CategoryImageDTO>.optionalProperty("date_modified_gmt", get: {return $0.date_modified_gmt}, set: {$0.date_modified_gmt = $1}),
                Type<CategoryImageDTO>.optionalProperty("src", get: {return $0.src}, set: {$0.src = $1}),
                Type<CategoryImageDTO>.optionalProperty("title", get: {return $0.title}, set: {$0.title = $1}),
                Type<CategoryImageDTO>.optionalProperty("alt", get: {return $0.alt}, set: {$0.alt = $1}),
                
            ]
        )
    }
}

open class LinkDTO: JsonSerializable {
    public required init() {}
    
    open var href: String?
    open var name : String?
    open var templated : Bool?
    open var embeddable: Bool?
    open var taxonomy: String?

    open class var typeName: String { return String(describing: self) }
    open class var metadata: Metadata {
        return Metadata.create(
            [
                Type<LinkDTO>.optionalProperty("href", get: {return $0.href}, set: {$0.href = $1}),
                Type<LinkDTO>.optionalProperty("name", get: {return $0.name}, set: {$0.name = $1}),
                Type<LinkDTO>.optionalProperty("templated", get: {return $0.templated}, set: {$0.templated = $1}),
                Type<LinkDTO>.optionalProperty("embeddable", get: {return $0.embeddable}, set: {$0.embeddable = $1}),
                Type<LinkDTO>.optionalProperty("taxonomy", get: {return $0.taxonomy}, set: {$0.taxonomy = $1}),
            ]
        )
    }
}


// MARK: - Get All Product
open class GetProductRequest: BaseRequest {
    public required init() {}
    
    open var after: Date?
    open var before: Date?
    open var offset: Int?
    open var parent: [String] = []
    open var parent_exclude: [String] = []
    open var status: String?
    open var type: String?
    open var sku: String?
    open var featured: Bool?
    open var category: String?
    open var tag: String?
    open var shipping_class: String?
    open var attribute: String?
    open var attribute_term: String?
    open var tax_class: String?
    open var in_stock: Bool?
    open var on_sale: Bool?
    open var min_price: String?
    open var max_price: String?
    
    open override class var typeName: String { return String(describing: self) }
    open override class var metadata: Metadata {
        return Metadata.create(super.metadata.properties, selfProperties:
            [
                Type<GetProductRequest>.optionalProperty("after", get: {return $0.after}, set: {$0.after = $1}),
                Type<GetProductRequest>.optionalProperty("before", get: {return $0.before}, set: {$0.before = $1}),
                Type<GetProductRequest>.optionalProperty("offset", get: {return $0.offset}, set: {$0.offset = $1}),
                Type<GetProductRequest>.arrayProperty("parent", get: {return $0.parent}, set: {$0.parent = $1}),
                Type<GetProductRequest>.arrayProperty("parent_exclude", get: {return $0.parent_exclude}, set: {$0.parent_exclude = $1}),
                Type<GetProductRequest>.optionalProperty("status", get: {return $0.status}, set: {$0.status = $1}),
                Type<GetProductRequest>.optionalProperty("type", get: {return $0.type}, set: {$0.type = $1}),
                Type<GetProductRequest>.optionalProperty("sku", get: {return $0.sku}, set: {$0.sku = $1}),
                Type<GetProductRequest>.optionalProperty("featured", get: {return $0.featured}, set: {$0.featured = $1}),
                Type<GetProductRequest>.optionalProperty("category", get: {return $0.category}, set: {$0.category = $1}),
                Type<GetProductRequest>.optionalProperty("tag", get: {return $0.tag}, set: {$0.tag = $1}),
                Type<GetProductRequest>.optionalProperty("shipping_class", get: {return $0.shipping_class}, set: {$0.shipping_class = $1}),
                Type<GetProductRequest>.optionalProperty("attribute", get: {return $0.attribute}, set: {$0.attribute = $1}),
                Type<GetProductRequest>.optionalProperty("attribute_term", get: {return $0.attribute_term}, set: {$0.attribute_term = $1}),
                Type<GetProductRequest>.optionalProperty("tax_class", get: {return $0.tax_class}, set: {$0.tax_class = $1}),
                Type<GetProductRequest>.optionalProperty("in_stock", get: {return $0.in_stock}, set: {$0.in_stock = $1}),
                Type<GetProductRequest>.optionalProperty("on_sale", get: {return $0.on_sale}, set: {$0.on_sale = $1}),
                Type<GetProductRequest>.optionalProperty("min_price", get: {return $0.min_price}, set: {$0.min_price = $1}),
                Type<GetProductRequest>.optionalProperty("max_price", get: {return $0.max_price}, set: {$0.max_price = $1}),
            ]
        )
    }

}

//Response
open class GetProductResponse: BaseResponse {
    public required init() {}
    
    open var lstProduct: [ProductDTO] = []
    
    open override class var typeName: String { return String(describing: self) }
    open override class var metadata: Metadata {
        return Metadata.create(super.metadata.properties, selfProperties:
            [
                Type<GetProductResponse>.arrayProperty("lstProduct", get: {return $0.lstProduct}, set: {$0.lstProduct = $1}),
            ]
        )
    }
}


open class ProductDTO: JsonSerializable {
    public required init() {}
    
    open var id : Int?
    open var name : String?
    open var slug : String?
    open var permalink : String?
    open var date_created : Date?
    open var date_created_gmt : Date?
    open var date_modified : Date?
    open var date_modified_gmt : Date?
    open var type : String?
    open var status : String?
    open var featured : Bool?
    open var catalog_visibility : String?
    open var description : String?
    open var short_description : String?
    open var sku : String?
    open var price : String?
    open var regular_price : String?
    open var sale_price : String?
    open var date_on_sale_from : String?
    open var date_on_sale_from_gmt : String?
    open var date_on_sale_to : String?
    open var date_on_sale_to_gmt : String?
    open var price_html : String?
    open var on_sale : Bool?
    open var purchasable : Bool?
    open var total_sales : Int?
    open var virtual : Bool?
    open var downloadable : Bool?
    open var downloads : [String] = []
    open var download_limit : Int?
    open var download_expiry : Int?
    open var external_url : String?
    open var button_text : String?
    open var tax_status : String?
    open var tax_class : String?
    open var manage_stock : Bool?
    open var stock_quantity : String?
    open var in_stock : Bool?
    open var backorders : String?
    open var backorders_allowed : Bool?
    open var backordered : Bool?
    open var sold_individually : Bool?
    open var weight : String?
    open var dimensions : DimensionsDTO?
    open var shipping_required : Bool?
    open var shipping_taxable : Bool?
    open var shipping_class : String?
    open var shipping_class_id : Int?
    open var reviews_allowed : Bool?
    open var average_rating : Double?
    open var rating_count : Int?
    open var related_ids : [Int] = []
    open var upsell_ids : [String] = []
    open var cross_sell_ids : [String] = []
    open var parent_id : Int?
    open var purchase_note : String?
    open var categories : [Categories] = []
    open var tags : [String] = []
    open var images : [Images] = []
    open var attributes : [Attributes] = []
    open var default_attributes : [String] = []
    open var variations : [String] = []
    open var grouped_products : [String] = []
    open var menu_order : Int?
    open var meta_data : [MetaDataDTO] = []
    open var _links : Links?
    
    open class var typeName: String { return String(describing: self) }
    open class var metadata: Metadata {
        return Metadata.create(
            [
                Type<ProductDTO>.optionalProperty("id", get: {return $0.id}, set: {$0.id = $1}),
                Type<ProductDTO>.optionalProperty("name", get: {return $0.name}, set: {$0.name = $1}),
                Type<ProductDTO>.optionalProperty("slug", get: {return $0.slug}, set: {$0.slug = $1}),
                Type<ProductDTO>.optionalProperty("permalink", get: {return $0.permalink}, set: {$0.permalink = $1}),
                Type<ProductDTO>.optionalProperty("date_created", get: {return $0.date_created}, set: {$0.date_created = $1}),
                Type<ProductDTO>.optionalProperty("date_created_gmt", get: {return $0.date_created_gmt}, set: {$0.date_created_gmt = $1}),
                Type<ProductDTO>.optionalProperty("date_modified", get: {return $0.date_modified}, set: {$0.date_modified = $1}),
                Type<ProductDTO>.optionalProperty("date_modified_gmt", get: {return $0.date_modified_gmt}, set: {$0.date_modified_gmt = $1}),
                Type<ProductDTO>.optionalProperty("type", get: {return $0.type}, set: {$0.type = $1}),
                Type<ProductDTO>.optionalProperty("status", get: {return $0.status}, set: {$0.status = $1}),
                Type<ProductDTO>.optionalProperty("featured", get: {return $0.featured}, set: {$0.featured = $1}),
                Type<ProductDTO>.optionalProperty("catalog_visibility", get: {return $0.catalog_visibility}, set: {$0.catalog_visibility = $1}),
                Type<ProductDTO>.optionalProperty("description", get: {return $0.description}, set: {$0.description = $1}),
                Type<ProductDTO>.optionalProperty("short_description", get: {return $0.short_description}, set: {$0.short_description = $1}),
                Type<ProductDTO>.optionalProperty("sku", get: {return $0.sku}, set: {$0.sku = $1}),
                Type<ProductDTO>.optionalProperty("price", get: {return $0.price}, set: {$0.price = $1}),
                Type<ProductDTO>.optionalProperty("regular_price", get: {return $0.regular_price}, set: {$0.regular_price = $1}),
                Type<ProductDTO>.optionalProperty("sale_price", get: {return $0.sale_price}, set: {$0.sale_price = $1}),
                Type<ProductDTO>.optionalProperty("date_on_sale_from", get: {return $0.date_on_sale_from}, set: {$0.date_on_sale_from = $1}),
                Type<ProductDTO>.optionalProperty("date_on_sale_from_gmt", get: {return $0.date_on_sale_from_gmt}, set: {$0.date_on_sale_from_gmt = $1}),
                Type<ProductDTO>.optionalProperty("date_on_sale_to", get: {return $0.date_on_sale_to}, set: {$0.date_on_sale_to = $1}),
                Type<ProductDTO>.optionalProperty("date_on_sale_to_gmt", get: {return $0.date_on_sale_to_gmt}, set: {$0.date_on_sale_to_gmt = $1}),
                Type<ProductDTO>.optionalProperty("price_html", get: {return $0.price_html}, set: {$0.price_html = $1}),
                Type<ProductDTO>.optionalProperty("on_sale", get: {return $0.on_sale}, set: {$0.on_sale = $1}),
                Type<ProductDTO>.optionalProperty("purchasable", get: {return $0.purchasable}, set: {$0.purchasable = $1}),
                Type<ProductDTO>.optionalProperty("total_sales", get: {return $0.total_sales}, set: {$0.total_sales = $1}),
                Type<ProductDTO>.optionalProperty("virtual", get: {return $0.virtual}, set: {$0.virtual = $1}),
                Type<ProductDTO>.optionalProperty("downloadable", get: {return $0.downloadable}, set: {$0.downloadable = $1}),
                Type<ProductDTO>.arrayProperty("downloads", get: {return $0.downloads}, set: {$0.downloads = $1}),
                Type<ProductDTO>.optionalProperty("download_limit", get: {return $0.download_limit}, set: {$0.download_limit = $1}),
                Type<ProductDTO>.optionalProperty("download_expiry", get: {return $0.download_expiry}, set: {$0.download_expiry = $1}),
                Type<ProductDTO>.optionalProperty("external_url", get: {return $0.external_url}, set: {$0.external_url = $1}),
                Type<ProductDTO>.optionalProperty("button_text", get: {return $0.button_text}, set: {$0.button_text = $1}),
                Type<ProductDTO>.optionalProperty("tax_status", get: {return $0.tax_status}, set: {$0.tax_status = $1}),
                Type<ProductDTO>.optionalProperty("tax_class", get: {return $0.tax_class}, set: {$0.tax_class = $1}),
                Type<ProductDTO>.optionalProperty("manage_stock", get: {return $0.manage_stock}, set: {$0.manage_stock = $1}),
                Type<ProductDTO>.optionalProperty("stock_quantity", get: {return $0.stock_quantity}, set: {$0.stock_quantity = $1}),
                Type<ProductDTO>.optionalProperty("in_stock", get: {return $0.in_stock}, set: {$0.in_stock = $1}),
                Type<ProductDTO>.optionalProperty("backorders", get: {return $0.backorders}, set: {$0.backorders = $1}),
                Type<ProductDTO>.optionalProperty("backorders_allowed", get: {return $0.backorders_allowed}, set: {$0.backorders_allowed = $1}),
                Type<ProductDTO>.optionalProperty("backordered", get: {return $0.backordered}, set: {$0.backordered = $1}),
                Type<ProductDTO>.optionalProperty("sold_individually", get: {return $0.sold_individually}, set: {$0.sold_individually = $1}),
                Type<ProductDTO>.optionalProperty("weight", get: {return $0.weight}, set: {$0.weight = $1}),
                Type<ProductDTO>.optionalProperty("dimensions", get: {return $0.dimensions}, set: {$0.dimensions = $1}),
                Type<ProductDTO>.optionalProperty("shipping_required", get: {return $0.shipping_required}, set: {$0.shipping_required = $1}),
                Type<ProductDTO>.optionalProperty("shipping_taxable", get: {return $0.shipping_taxable}, set: {$0.shipping_taxable = $1}),
                Type<ProductDTO>.optionalProperty("shipping_class", get: {return $0.shipping_class}, set: {$0.shipping_class = $1}),
                Type<ProductDTO>.optionalProperty("shipping_class_id", get: {return $0.shipping_class_id}, set: {$0.shipping_class_id = $1}),
                Type<ProductDTO>.optionalProperty("reviews_allowed", get: {return $0.reviews_allowed}, set: {$0.reviews_allowed = $1}),
                Type<ProductDTO>.optionalProperty("average_rating", get: {return $0.average_rating}, set: {$0.average_rating = $1}),
                Type<ProductDTO>.optionalProperty("rating_count", get: {return $0.rating_count}, set: {$0.rating_count = $1}),
                Type<ProductDTO>.arrayProperty("related_ids", get: {return $0.related_ids}, set: {$0.related_ids = $1}),
                Type<ProductDTO>.arrayProperty("upsell_ids", get: {return $0.upsell_ids}, set: {$0.upsell_ids = $1}),
                Type<ProductDTO>.arrayProperty("cross_sell_ids", get: {return $0.cross_sell_ids}, set: {$0.cross_sell_ids = $1}),
                Type<ProductDTO>.optionalProperty("parent_id", get: {return $0.parent_id}, set: {$0.parent_id = $1}),
                Type<ProductDTO>.optionalProperty("purchase_note", get: {return $0.purchase_note}, set: {$0.purchase_note = $1}),
                Type<ProductDTO>.arrayProperty("categories", get: {return $0.categories}, set: {$0.categories = $1}),
                Type<ProductDTO>.arrayProperty("tags", get: {return $0.tags}, set: {$0.tags = $1}),
                Type<ProductDTO>.arrayProperty("images", get: {return $0.images}, set: {$0.images = $1}),
                Type<ProductDTO>.arrayProperty("attributes", get: {return $0.attributes}, set: {$0.attributes = $1}),
                Type<ProductDTO>.arrayProperty("default_attributes", get: {return $0.default_attributes}, set: {$0.default_attributes = $1}),
                Type<ProductDTO>.arrayProperty("variations", get: {return $0.variations}, set: {$0.variations = $1}),
                Type<ProductDTO>.arrayProperty("grouped_products", get: {return $0.grouped_products}, set: {$0.grouped_products = $1}),
                Type<ProductDTO>.optionalProperty("menu_order", get: {return $0.menu_order}, set: {$0.menu_order = $1}),
                Type<ProductDTO>.arrayProperty("meta_data", get: {return $0.meta_data}, set: {$0.meta_data = $1}),
                Type<ProductDTO>.optionalProperty("_links", get: {return $0._links}, set: {$0._links = $1}),
            ]
        )
    }
}

open class DimensionsDTO: JsonSerializable {
    public required init() {}

    open var length : String?
    open var width : String?
    open var height : String?

    open class var typeName: String { return String(describing: self) }
    open class var metadata: Metadata {
        return Metadata.create(
            [
                Type<DimensionsDTO>.optionalProperty("length", get: {return $0.length}, set: {$0.length = $1}),
                Type<DimensionsDTO>.optionalProperty("width", get: {return $0.width}, set: {$0.width = $1}),
                Type<DimensionsDTO>.optionalProperty("height", get: {return $0.height}, set: {$0.height = $1}),
            ]
        )
    }

}

open class Categories: JsonSerializable {
    public required init() {}
    
    open var id : Int?
    open var name : String?
    open var slug : String?

    open class var typeName: String { return String(describing: self) }
    open class var metadata: Metadata {
        return Metadata.create(
            [
                Type<Categories>.optionalProperty("id", get: {return $0.id}, set: {$0.id = $1}),
                Type<Categories>.optionalProperty("name", get: {return $0.name}, set: {$0.name = $1}),
                Type<Categories>.optionalProperty("slug", get: {return $0.slug}, set: {$0.slug = $1}),
            ]
        )
    }
}

open class Images: JsonSerializable {
    public required init() {}
    
    open var id : Int?
    open var date_created : Date?
    open var date_created_gmt : Date?
    open var date_modified : Date?
    open var date_modified_gmt : Date?
    open var src : String?
    open var name : String?
    open var alt : String?
    open var position : Int?

    open class var typeName: String { return String(describing: self) }
    open class var metadata: Metadata {
        return Metadata.create(
            [
                Type<Images>.optionalProperty("id", get: {return $0.id}, set: {$0.id = $1}),
                Type<Images>.optionalProperty("date_created", get: {return $0.date_created}, set: {$0.date_created = $1}),
                Type<Images>.optionalProperty("date_created_gmt", get: {return $0.date_created_gmt}, set: {$0.date_created_gmt = $1}),
                Type<Images>.optionalProperty("date_modified", get: {return $0.date_modified}, set: {$0.date_modified = $1}),
                Type<Images>.optionalProperty("date_modified_gmt", get: {return $0.date_modified_gmt}, set: {$0.date_modified_gmt = $1}),
                Type<Images>.optionalProperty("src", get: {return $0.src}, set: {$0.src = $1}),
                Type<Images>.optionalProperty("name", get: {return $0.name}, set: {$0.name = $1}),
                Type<Images>.optionalProperty("alt", get: {return $0.alt}, set: {$0.alt = $1}),
                Type<Images>.optionalProperty("position", get: {return $0.position}, set: {$0.position = $1}),
            ]
        )
    }
    
}

open class Attributes: JsonSerializable {
    public required init() {}
    
    open var id : Int?
    open var name : String?
    open var position : Int?
    open var visible : Bool?
    open var variation : Bool?
    open var options : [String] = []

    open class var typeName: String { return String(describing: self) }
    open class var metadata: Metadata {
        return Metadata.create(
            [
                Type<Attributes>.optionalProperty("id", get: {return $0.id}, set: {$0.id = $1}),
                Type<Attributes>.optionalProperty("name", get: {return $0.name}, set: {$0.name = $1}),
                Type<Attributes>.optionalProperty("position", get: {return $0.position}, set: {$0.position = $1}),
                Type<Attributes>.optionalProperty("visible", get: {return $0.visible}, set: {$0.visible = $1}),
                Type<Attributes>.optionalProperty("variation", get: {return $0.variation}, set: {$0.variation = $1}),
                Type<Attributes>.arrayProperty("options", get: {return $0.options}, set: {$0.options = $1}),
            ]
        )
    }
    
}

open class Links: JsonSerializable {
    public required init() {}
    
    open var _self : [LinkDTO] = []
    open var collection : [LinkDTO] = []
    open var about : [LinkDTO] = []
    open var up: [LinkDTO] = []
    open var _open: [LinkDTO] = []
    open var wp_post_type: [LinkDTO] = []
    open var curies: [LinkDTO] = []
    open var author: [LinkDTO] = []
    open var replies: [LinkDTO] = []
    open var version_history: [LinkDTO] = []
    open var wp_featuredmedia: [LinkDTO] = []
    open var wp_attachment: [LinkDTO] = []
    open var wp_term: [LinkDTO] = []

    open class var typeName: String { return String(describing: self) }
    open class var metadata: Metadata {
        return Metadata.create(
            [
                Type<Links>.arrayProperty("self", get: {return $0._self}, set: {$0._self = $1}),
                Type<Links>.arrayProperty("collection", get: {return $0.collection}, set: {$0.collection = $1}),
                Type<Links>.arrayProperty("about", get: {return $0.about}, set: {$0.about = $1}),
                Type<Links>.arrayProperty("up", get: {return $0.up}, set: {$0.up = $1}),
                Type<Links>.arrayProperty("open", get: {return $0._open}, set: {$0._open = $1}),
                Type<Links>.arrayProperty("wp:post_type", get: {return $0.wp_post_type}, set: {$0.wp_post_type = $1}),
                Type<Links>.arrayProperty("curies", get: {return $0.curies}, set: {$0.curies = $1}),
                Type<Links>.arrayProperty("author", get: {return $0.author}, set: {$0.author = $1}),
                Type<Links>.arrayProperty("replies", get: {return $0.replies}, set: {$0.replies = $1}),
                Type<Links>.arrayProperty("version-history", get: {return $0.version_history}, set: {$0.version_history = $1}),
                Type<Links>.arrayProperty("wp:featuredmedia", get: {return $0.wp_featuredmedia}, set: {$0.wp_featuredmedia = $1}),
                Type<Links>.arrayProperty("wp:attachment", get: {return $0.wp_attachment}, set: {$0.wp_attachment = $1}),
                Type<Links>.arrayProperty("wp:term", get: {return $0.wp_term}, set: {$0.wp_term = $1}),
            ]
        )
    }
    
}


// Get Review Response
open class GetReviewResponse: BaseResponse {
    public required init() {}
    
    open var lstReview: [ReviewDTO] = []
    
    open override class var typeName: String { return String(describing: self) }
    open override class var metadata: Metadata {
        return Metadata.create(super.metadata.properties, selfProperties:
            [
                Type<GetReviewResponse>.arrayProperty("lstReview", get: {return $0.lstReview}, set: {$0.lstReview = $1}),
            ]
        )
    }
}


open class ReviewDTO: JsonSerializable {
    public required init() {}
    
    open var id : Int?
    open var date_created : Date?
    open var date_created_gmt : Date?
    open var review : String?
    open var rating : Int?
    open var name : String?
    open var email : String?
    open var verified : Bool?
    open var _links : Links?

    open class var typeName: String { return String(describing: self) }
    open class var metadata: Metadata {
        return Metadata.create(
            [
                Type<ReviewDTO>.optionalProperty("id", get: {return $0.id}, set: {$0.id = $1}),
                Type<ReviewDTO>.optionalProperty("date_created", get: {return $0.date_created}, set: {$0.date_created = $1}),
                Type<ReviewDTO>.optionalProperty("date_created_gmt", get: {return $0.date_created_gmt}, set: {$0.date_created_gmt = $1}),
                Type<ReviewDTO>.optionalProperty("review", get: {return $0.review}, set: {$0.review = $1}),
                Type<ReviewDTO>.optionalProperty("rating", get: {return $0.rating}, set: {$0.rating = $1}),
                Type<ReviewDTO>.optionalProperty("name", get: {return $0.name}, set: {$0.name = $1}),
                Type<ReviewDTO>.optionalProperty("email", get: {return $0.email}, set: {$0.email = $1}),
                Type<ReviewDTO>.optionalProperty("verified", get: {return $0.verified}, set: {$0.verified = $1}),
                Type<ReviewDTO>.optionalProperty("_links", get: {return $0._links}, set: {$0._links = $1}),
            ]
        )
    }
    
}
