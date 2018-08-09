//
//  SystemStatusDTO.swift
//  ArenaDemoAPI
//
//  Created by Lu Kien Quoc on 7/12/18.
//  Copyright © 2018 Arena Design VN. All rights reserved.
//

import Foundation

// MARK: Get System Status
open class GetSystemStatusResponse: BaseResponse {
    public required init() {}
    
    open var systemStatus: SystemStatusDTO?
    
    open override class var typeName: String { return String(describing: self) }
    open override class var metadata: Metadata {
        return Metadata.create(super.metadata.properties, selfProperties:
            [
                Type<GetSystemStatusResponse>.optionalProperty("systemStatus", get: {return $0.systemStatus}, set: {$0.systemStatus = $1}),
            ]
        )
    }
}

open class SystemStatusDTO: JsonSerializable {
    public required init() {}
    
    open var environment: EnvironmentDTO?
    open var database: DatabaseDTO?
    open var active_plugins: [ActivePluginDTO] = []
    open var theme: ThemeDTO?
    open var settings: SystemSettingDTO?
    open var security: SecurityDTO?
    open var pages: [SystemPageDTO] = []

    open class var typeName: String { return String(describing: self) }
    open class var metadata: Metadata {
        return Metadata.create(
            [
                Type<SystemStatusDTO>.optionalProperty("environment", get: {return $0.environment}, set: {$0.environment = $1}),
                Type<SystemStatusDTO>.optionalProperty("database", get: {return $0.database}, set: {$0.database = $1}),
                Type<SystemStatusDTO>.arrayProperty("active_plugins", get: {return $0.active_plugins}, set: {$0.active_plugins = $1}),
                Type<SystemStatusDTO>.optionalProperty("theme", get: {return $0.theme}, set: {$0.theme = $1}),
                Type<SystemStatusDTO>.optionalProperty("settings", get: {return $0.settings}, set: {$0.settings = $1}),
                Type<SystemStatusDTO>.optionalProperty("security", get: {return $0.security}, set: {$0.security = $1}),
                Type<SystemStatusDTO>.arrayProperty("pages", get: {return $0.pages}, set: {$0.pages = $1}),
            ]
        )
    }
}

open class EnvironmentDTO: JsonSerializable {
    public required init() {}
    
    open var home_url: String?
    open var site_url: String?
    open var wc_version: String?
    open var log_directory: String?
    open var log_directory_writable: Bool?
    open var wp_version: String?
    open var wp_multisite: Bool?
    open var wp_memory_limit: Int?
    open var wp_debug_mode: Bool?
    open var wp_cron: Bool?
    open var language: String?
    open var server_info: String?
    open var php_version: String?
    open var php_post_max_size: Int?
    open var php_max_execution_time: Int?
    open var php_max_input_vars: Int?
    open var curl_version: String?
    open var suhosin_installed: Bool?
    open var max_upload_size: Int?
    open var mysql_version: String?
    open var default_timezone: String?
    open var fsockopen_or_curl_enabled: Bool?
    open var soapclient_enabled: Bool?
    open var domdocument_enabled: Bool?
    open var gzip_enabled: Bool?
    open var mbstring_enabled: Bool?
    open var remote_post_successful: Bool?
    open var remote_post_response: String?
    open var remote_get_successful: Bool?
    open var remote_get_response: String?
    
    open class var typeName: String { return String(describing: self) }
    open class var metadata: Metadata {
        return Metadata.create(
            [
                Type<EnvironmentDTO>.optionalProperty("home_url", get: {return $0.home_url}, set: {$0.home_url = $1}),
                Type<EnvironmentDTO>.optionalProperty("site_url", get: {return $0.site_url}, set: {$0.site_url = $1}),
                Type<EnvironmentDTO>.optionalProperty("wc_version", get: {return $0.wc_version}, set: {$0.wc_version = $1}),
                Type<EnvironmentDTO>.optionalProperty("log_directory", get: {return $0.log_directory}, set: {$0.log_directory = $1}),
                Type<EnvironmentDTO>.optionalProperty("log_directory_writable", get: {return $0.log_directory_writable}, set: {$0.log_directory_writable = $1}),
                Type<EnvironmentDTO>.optionalProperty("wp_version", get: {return $0.wp_version}, set: {$0.wp_version = $1}),
                Type<EnvironmentDTO>.optionalProperty("wp_multisite", get: {return $0.wp_multisite}, set: {$0.wp_multisite = $1}),
                Type<EnvironmentDTO>.optionalProperty("wp_memory_limit", get: {return $0.wp_memory_limit}, set: {$0.wp_memory_limit = $1}),
                Type<EnvironmentDTO>.optionalProperty("wp_debug_mode", get: {return $0.wp_debug_mode}, set: {$0.wp_debug_mode = $1}),
                Type<EnvironmentDTO>.optionalProperty("wp_cron", get: {return $0.wp_cron}, set: {$0.wp_cron = $1}),
                Type<EnvironmentDTO>.optionalProperty("language", get: {return $0.language}, set: {$0.language = $1}),
                Type<EnvironmentDTO>.optionalProperty("server_info", get: {return $0.server_info}, set: {$0.server_info = $1}),
                Type<EnvironmentDTO>.optionalProperty("php_version", get: {return $0.php_version}, set: {$0.php_version = $1}),
                Type<EnvironmentDTO>.optionalProperty("php_post_max_size", get: {return $0.php_post_max_size}, set: {$0.php_post_max_size = $1}),
                Type<EnvironmentDTO>.optionalProperty("php_max_execution_time", get: {return $0.php_max_execution_time}, set: {$0.php_max_execution_time = $1}),
                Type<EnvironmentDTO>.optionalProperty("php_max_input_vars", get: {return $0.php_max_input_vars}, set: {$0.php_max_input_vars = $1}),
                Type<EnvironmentDTO>.optionalProperty("curl_version", get: {return $0.curl_version}, set: {$0.curl_version = $1}),
                Type<EnvironmentDTO>.optionalProperty("suhosin_installed", get: {return $0.suhosin_installed}, set: {$0.suhosin_installed = $1}),
                Type<EnvironmentDTO>.optionalProperty("max_upload_size", get: {return $0.max_upload_size}, set: {$0.max_upload_size = $1}),
                Type<EnvironmentDTO>.optionalProperty("mysql_version", get: {return $0.mysql_version}, set: {$0.mysql_version = $1}),
                Type<EnvironmentDTO>.optionalProperty("default_timezone", get: {return $0.default_timezone}, set: {$0.default_timezone = $1}),
                Type<EnvironmentDTO>.optionalProperty("fsockopen_or_curl_enabled", get: {return $0.fsockopen_or_curl_enabled}, set: {$0.fsockopen_or_curl_enabled = $1}),
                Type<EnvironmentDTO>.optionalProperty("soapclient_enabled", get: {return $0.soapclient_enabled}, set: {$0.soapclient_enabled = $1}),
                Type<EnvironmentDTO>.optionalProperty("domdocument_enabled", get: {return $0.domdocument_enabled}, set: {$0.domdocument_enabled = $1}),
                Type<EnvironmentDTO>.optionalProperty("gzip_enabled", get: {return $0.gzip_enabled}, set: {$0.gzip_enabled = $1}),
                Type<EnvironmentDTO>.optionalProperty("mbstring_enabled", get: {return $0.mbstring_enabled}, set: {$0.mbstring_enabled = $1}),
                Type<EnvironmentDTO>.optionalProperty("remote_post_successful", get: {return $0.remote_post_successful}, set: {$0.remote_post_successful = $1}),
                Type<EnvironmentDTO>.optionalProperty("remote_post_response", get: {return $0.remote_post_response}, set: {$0.remote_post_response = $1}),
                Type<EnvironmentDTO>.optionalProperty("remote_get_successful", get: {return $0.remote_get_successful}, set: {$0.remote_get_successful = $1}),
                Type<EnvironmentDTO>.optionalProperty("remote_get_response", get: {return $0.remote_get_response}, set: {$0.remote_get_response = $1}),
            ]
        )
    }
}

open class DatabaseDTO: JsonSerializable {
    public required init() {}
    
    open var wc_database_version: String?
    open var database_prefix: String?
    open var maxmind_geoip_database: String?
    open var database_tables: DatabaseTableDTO?
    open var database_size: SystemSettingDataDTO?

    open class var typeName: String { return String(describing: self) }
    open class var metadata: Metadata {
        return Metadata.create(
            [
                Type<DatabaseDTO>.optionalProperty("wc_database_version", get: {return $0.wc_database_version}, set: {$0.wc_database_version = $1}),
                Type<DatabaseDTO>.optionalProperty("database_prefix", get: {return $0.database_prefix}, set: {$0.database_prefix = $1}),
                Type<DatabaseDTO>.optionalProperty("maxmind_geoip_database", get: {return $0.maxmind_geoip_database}, set: {$0.maxmind_geoip_database = $1}),
                Type<DatabaseDTO>.optionalProperty("database_tables", get: {return $0.database_tables}, set: {$0.database_tables = $1}),
                Type<DatabaseDTO>.optionalProperty("database_size", get: {return $0.database_size}, set: {$0.database_size = $1}),
            ]
        )
    }
}

open class DatabaseTableDTO: JsonSerializable {
    public required init() {}
    
    open var woocommerce: WoocommerceDTO?
    open var other: OtherDTO?
    
    open class var typeName: String { return String(describing: self) }
    open class var metadata: Metadata {
        return Metadata.create(
            [
                Type<DatabaseTableDTO>.optionalProperty("woocommerce", get: {return $0.woocommerce}, set: {$0.woocommerce = $1}),
                Type<DatabaseTableDTO>.optionalProperty("other", get: {return $0.other}, set: {$0.other = $1}),
            ]
        )
    }
}

open class WoocommerceDTO: JsonSerializable {
    public required init() {}
    
    open var wp_12woocommerce_sessions: SystemSettingDataDTO?
    open var wp_12woocommerce_api_keys: SystemSettingDataDTO?
    open var wp_12woocommerce_attribute_taxonomies: SystemSettingDataDTO?
    open var wp_12woocommerce_downloadable_product_permissions: SystemSettingDataDTO?
    open var wp_12woocommerce_order_items: SystemSettingDataDTO?
    open var wp_12woocommerce_order_itemmeta: SystemSettingDataDTO?
    open var wp_12woocommerce_tax_rates: SystemSettingDataDTO?
    open var wp_12woocommerce_tax_rate_locations: SystemSettingDataDTO?
    open var wp_12woocommerce_shipping_zones: SystemSettingDataDTO?
    open var wp_12woocommerce_shipping_zone_locations: SystemSettingDataDTO?
    open var wp_12woocommerce_shipping_zone_methods: SystemSettingDataDTO?
    open var wp_12woocommerce_payment_tokens: SystemSettingDataDTO?
    open var wp_12woocommerce_payment_tokenmeta: SystemSettingDataDTO?
    open var wp_12woocommerce_log: SystemSettingDataDTO?
    
    open class var typeName: String { return String(describing: self) }
    open class var metadata: Metadata {
        return Metadata.create(
            [
                Type<WoocommerceDTO>.optionalProperty("wp_12woocommerce_sessions", get: {return $0.wp_12woocommerce_sessions}, set: {$0.wp_12woocommerce_sessions = $1}),
                Type<WoocommerceDTO>.optionalProperty("wp_12woocommerce_api_keys", get: {return $0.wp_12woocommerce_api_keys}, set: {$0.wp_12woocommerce_api_keys = $1}),
                Type<WoocommerceDTO>.optionalProperty("wp_12woocommerce_attribute_taxonomies", get: {return $0.wp_12woocommerce_attribute_taxonomies}, set: {$0.wp_12woocommerce_attribute_taxonomies = $1}),
                Type<WoocommerceDTO>.optionalProperty("wp_12woocommerce_downloadable_product_permissions", get: {return $0.wp_12woocommerce_downloadable_product_permissions}, set: {$0.wp_12woocommerce_downloadable_product_permissions = $1}),
                Type<WoocommerceDTO>.optionalProperty("wp_12woocommerce_order_items", get: {return $0.wp_12woocommerce_order_items}, set: {$0.wp_12woocommerce_order_items = $1}),
                Type<WoocommerceDTO>.optionalProperty("wp_12woocommerce_order_itemmeta", get: {return $0.wp_12woocommerce_order_itemmeta}, set: {$0.wp_12woocommerce_order_itemmeta = $1}),
                Type<WoocommerceDTO>.optionalProperty("wp_12woocommerce_tax_rates", get: {return $0.wp_12woocommerce_tax_rates}, set: {$0.wp_12woocommerce_tax_rates = $1}),
                Type<WoocommerceDTO>.optionalProperty("wp_12woocommerce_tax_rate_locations", get: {return $0.wp_12woocommerce_tax_rate_locations}, set: {$0.wp_12woocommerce_tax_rate_locations = $1}),
                Type<WoocommerceDTO>.optionalProperty("wp_12woocommerce_shipping_zones", get: {return $0.wp_12woocommerce_shipping_zones}, set: {$0.wp_12woocommerce_shipping_zones = $1}),
                Type<WoocommerceDTO>.optionalProperty("wp_12woocommerce_shipping_zone_locations", get: {return $0.wp_12woocommerce_shipping_zone_locations}, set: {$0.wp_12woocommerce_shipping_zone_locations = $1}),
                Type<WoocommerceDTO>.optionalProperty("wp_12woocommerce_shipping_zone_methods", get: {return $0.wp_12woocommerce_shipping_zone_methods}, set: {$0.wp_12woocommerce_shipping_zone_methods = $1}),
                Type<WoocommerceDTO>.optionalProperty("wp_12woocommerce_payment_tokens", get: {return $0.wp_12woocommerce_payment_tokens}, set: {$0.wp_12woocommerce_payment_tokens = $1}),
                Type<WoocommerceDTO>.optionalProperty("wp_12woocommerce_payment_tokenmeta", get: {return $0.wp_12woocommerce_payment_tokenmeta}, set: {$0.wp_12woocommerce_payment_tokenmeta = $1}),
                Type<WoocommerceDTO>.optionalProperty("wp_12woocommerce_log", get: {return $0.wp_12woocommerce_log}, set: {$0.wp_12woocommerce_log = $1}),
            ]
        )
    }
}

open class OtherDTO: JsonSerializable {
    public required init() {}
    
    open var wp_12commentmeta: SystemSettingDataDTO?
    open var wp_12comments: SystemSettingDataDTO?
    open var wp_12links: SystemSettingDataDTO?
    open var wp_12options: SystemSettingDataDTO?
    open var wp_12postmeta: SystemSettingDataDTO?
    open var wp_12posts: SystemSettingDataDTO?
    open var wp_12revslider_css: SystemSettingDataDTO?
    open var wp_12revslider_layer_animations: SystemSettingDataDTO?
    open var wp_12revslider_navigations: SystemSettingDataDTO?
    open var wp_12revslider_sliders: SystemSettingDataDTO?
    open var wp_12revslider_slides: SystemSettingDataDTO?
    open var wp_12revslider_static_slides: SystemSettingDataDTO?
    open var wp_12termmeta: SystemSettingDataDTO?
    open var wp_12terms: SystemSettingDataDTO?
    open var wp_12term_relationships: SystemSettingDataDTO?
    open var wp_12term_taxonomy: SystemSettingDataDTO?
    open var wp_12usermeta: SystemSettingDataDTO?
    open var wp_12users: SystemSettingDataDTO?
    open var wp_12wc_download_log: SystemSettingDataDTO?
    open var wp_12wc_webhooks: SystemSettingDataDTO?
    open var wp_12yith_wcwl: SystemSettingDataDTO?
    open var wp_12yith_wcwl_lists: SystemSettingDataDTO?

    open class var typeName: String { return String(describing: self) }
    open class var metadata: Metadata {
        return Metadata.create(
            [
                Type<OtherDTO>.optionalProperty("wp_12commentmeta", get: {return $0.wp_12commentmeta}, set: {$0.wp_12commentmeta = $1}),
                Type<OtherDTO>.optionalProperty("wp_12comments", get: {return $0.wp_12comments}, set: {$0.wp_12comments = $1}),
                Type<OtherDTO>.optionalProperty("wp_12links", get: {return $0.wp_12links}, set: {$0.wp_12links = $1}),
                Type<OtherDTO>.optionalProperty("wp_12options", get: {return $0.wp_12options}, set: {$0.wp_12options = $1}),
                Type<OtherDTO>.optionalProperty("wp_12postmeta", get: {return $0.wp_12postmeta}, set: {$0.wp_12postmeta = $1}),
                Type<OtherDTO>.optionalProperty("wp_12posts", get: {return $0.wp_12posts}, set: {$0.wp_12posts = $1}),
                Type<OtherDTO>.optionalProperty("wp_12revslider_css", get: {return $0.wp_12revslider_css}, set: {$0.wp_12revslider_css = $1}),
                Type<OtherDTO>.optionalProperty("wp_12revslider_layer_animations", get: {return $0.wp_12revslider_layer_animations}, set: {$0.wp_12revslider_layer_animations = $1}),
                Type<OtherDTO>.optionalProperty("wp_12revslider_navigations", get: {return $0.wp_12revslider_navigations}, set: {$0.wp_12revslider_navigations = $1}),
                Type<OtherDTO>.optionalProperty("wp_12revslider_sliders", get: {return $0.wp_12revslider_sliders}, set: {$0.wp_12revslider_sliders = $1}),
                Type<OtherDTO>.optionalProperty("wp_12revslider_slides", get: {return $0.wp_12revslider_slides}, set: {$0.wp_12revslider_slides = $1}),
                Type<OtherDTO>.optionalProperty("wp_12revslider_static_slides", get: {return $0.wp_12revslider_static_slides}, set: {$0.wp_12revslider_static_slides = $1}),
                Type<OtherDTO>.optionalProperty("wp_12termmeta", get: {return $0.wp_12termmeta}, set: {$0.wp_12termmeta = $1}),
                Type<OtherDTO>.optionalProperty("wp_12terms", get: {return $0.wp_12terms}, set: {$0.wp_12terms = $1}),
                Type<OtherDTO>.optionalProperty("wp_12term_relationships", get: {return $0.wp_12term_relationships}, set: {$0.wp_12term_relationships = $1}),
                Type<OtherDTO>.optionalProperty("wp_12term_taxonomy", get: {return $0.wp_12term_taxonomy}, set: {$0.wp_12term_taxonomy = $1}),
                Type<OtherDTO>.optionalProperty("wp_12usermeta", get: {return $0.wp_12usermeta}, set: {$0.wp_12usermeta = $1}),
                Type<OtherDTO>.optionalProperty("wp_12users", get: {return $0.wp_12users}, set: {$0.wp_12users = $1}),
                Type<OtherDTO>.optionalProperty("wp_12wc_download_log", get: {return $0.wp_12wc_download_log}, set: {$0.wp_12wc_download_log = $1}),
                Type<OtherDTO>.optionalProperty("wp_12wc_webhooks", get: {return $0.wp_12wc_webhooks}, set: {$0.wp_12wc_webhooks = $1}),
                Type<OtherDTO>.optionalProperty("wp_12yith_wcwl", get: {return $0.wp_12yith_wcwl}, set: {$0.wp_12yith_wcwl = $1}),
                Type<OtherDTO>.optionalProperty("wp_12yith_wcwl_lists", get: {return $0.wp_12yith_wcwl_lists}, set: {$0.wp_12yith_wcwl_lists = $1}),
            ]
        )
    }
}

open class SystemSettingDataDTO: JsonSerializable {
    public required init() {}
    
    open var data: Double?
    open var index: Double?
    
    open class var typeName: String { return String(describing: self) }
    open class var metadata: Metadata {
        return Metadata.create(
            [
                Type<SystemSettingDataDTO>.optionalProperty("data", get: {return $0.data}, set: {$0.data = $1}),
                Type<SystemSettingDataDTO>.optionalProperty("index", get: {return $0.index}, set: {$0.index = $1}),
            ]
        )
    }

}

open class ThemeDTO: JsonSerializable {
    public required init() {}
    
    open var name: String?
    open var version: String?
    open var version_latest: String?
    open var author_url: String?
    open var is_child_theme: Bool?
    open var has_woocommerce_support: Bool?
    open var has_woocommerce_file: Bool?
    open var has_outdated_templates: Bool?
    open var overrides: [OverridesDTO] = []
    open var parent_name: String?
    open var parent_version: String?
    open var parent_author_url: String?
    
    open class var typeName: String { return String(describing: self) }
    open class var metadata: Metadata {
        return Metadata.create(
            [
                Type<ThemeDTO>.optionalProperty("name", get: {return $0.name}, set: {$0.name = $1}),
                Type<ThemeDTO>.optionalProperty("version", get: {return $0.version}, set: {$0.version = $1}),
                Type<ThemeDTO>.optionalProperty("version_latest", get: {return $0.version_latest}, set: {$0.version_latest = $1}),
                Type<ThemeDTO>.optionalProperty("author_url", get: {return $0.author_url}, set: {$0.author_url = $1}),
                Type<ThemeDTO>.optionalProperty("is_child_theme", get: {return $0.is_child_theme}, set: {$0.is_child_theme = $1}),
                Type<ThemeDTO>.optionalProperty("has_woocommerce_support", get: {return $0.has_woocommerce_support}, set: {$0.has_woocommerce_support = $1}),
                Type<ThemeDTO>.optionalProperty("has_woocommerce_file", get: {return $0.has_woocommerce_file}, set: {$0.has_woocommerce_file = $1}),
                Type<ThemeDTO>.optionalProperty("has_outdated_templates", get: {return $0.has_outdated_templates}, set: {$0.has_outdated_templates = $1}),
                Type<ThemeDTO>.arrayProperty("overrides", get: {return $0.overrides}, set: {$0.overrides = $1}),
                Type<ThemeDTO>.optionalProperty("parent_name", get: {return $0.parent_name}, set: {$0.parent_name = $1}),
                Type<ThemeDTO>.optionalProperty("parent_version", get: {return $0.parent_version}, set: {$0.parent_version = $1}),
                Type<ThemeDTO>.optionalProperty("parent_author_url", get: {return $0.parent_author_url}, set: {$0.parent_author_url = $1}),
            ]
        )
    }
    
}

open class OverridesDTO: JsonSerializable {
    public required init() {}
    
    open var file: String?
    open var version: String?
    open var core_version: String?
    
    open class var typeName: String { return String(describing: self) }
    open class var metadata: Metadata {
        return Metadata.create(
            [
                Type<OverridesDTO>.optionalProperty("file", get: {return $0.file}, set: {$0.file = $1}),
                Type<OverridesDTO>.optionalProperty("version", get: {return $0.version}, set: {$0.version = $1}),
                Type<OverridesDTO>.optionalProperty("core_version", get: {return $0.core_version}, set: {$0.core_version = $1}),
            ]
        )
    }
    
}

open class ActivePluginDTO: JsonSerializable {
    public required init() {}
    
    open var plugin: String?
    open var name: String?
    open var version: String?
    open var version_latest: String?
    open var url: String?
    open var author_name: String?
    open var author_url: String?
    open var network_activated: Bool?
    
    open class var typeName: String { return String(describing: self) }
    open class var metadata: Metadata {
        return Metadata.create(
            [
                Type<ActivePluginDTO>.optionalProperty("plugin", get: {return $0.plugin}, set: {$0.plugin = $1}),
                Type<ActivePluginDTO>.optionalProperty("name", get: {return $0.name}, set: {$0.name = $1}),
                Type<ActivePluginDTO>.optionalProperty("version", get: {return $0.version}, set: {$0.version = $1}),
                Type<ActivePluginDTO>.optionalProperty("version_latest", get: {return $0.version_latest}, set: {$0.version_latest = $1}),
                Type<ActivePluginDTO>.optionalProperty("url", get: {return $0.url}, set: {$0.url = $1}),
                Type<ActivePluginDTO>.optionalProperty("author_name", get: {return $0.author_name}, set: {$0.author_name = $1}),
                Type<ActivePluginDTO>.optionalProperty("author_url", get: {return $0.author_url}, set: {$0.author_url = $1}),
                Type<ActivePluginDTO>.optionalProperty("network_activated", get: {return $0.network_activated}, set: {$0.network_activated = $1}),
            ]
        )
    }
    
}

open class SystemSettingDTO: JsonSerializable {
    public required init() {}
    
    open var api_enabled: Bool?
    open var force_ssl: Bool?
    open var currency: String?
    open var currency_symbol: String?
    open var currency_position: String?
    open var thousand_separator: String?
    open var decimal_separator: String?
    open var number_of_decimals: Int?
    open var geolocation_enabled: Bool?
    open var taxonomies: TaxonomiesDTO?
    open var product_visibility_terms: Product_visibility_termsDTO?
    
    open class var typeName: String { return String(describing: self) }
    open class var metadata: Metadata {
        return Metadata.create(
            [
                Type<SystemSettingDTO>.optionalProperty("api_enabled", get: {return $0.api_enabled}, set: {$0.api_enabled = $1}),
                Type<SystemSettingDTO>.optionalProperty("force_ssl", get: {return $0.force_ssl}, set: {$0.force_ssl = $1}),
                Type<SystemSettingDTO>.optionalProperty("currency", get: {return $0.currency}, set: {$0.currency = $1}),
                Type<SystemSettingDTO>.optionalProperty("currency_symbol", get: {return $0.currency_symbol}, set: {$0.currency_symbol = $1}),
                Type<SystemSettingDTO>.optionalProperty("currency_position", get: {return $0.currency_position}, set: {$0.currency_position = $1}),
                Type<SystemSettingDTO>.optionalProperty("thousand_separator", get: {return $0.thousand_separator}, set: {$0.thousand_separator = $1}),
                Type<SystemSettingDTO>.optionalProperty("decimal_separator", get: {return $0.decimal_separator}, set: {$0.decimal_separator = $1}),
                Type<SystemSettingDTO>.optionalProperty("number_of_decimals", get: {return $0.number_of_decimals}, set: {$0.number_of_decimals = $1}),
                Type<SystemSettingDTO>.optionalProperty("geolocation_enabled", get: {return $0.geolocation_enabled}, set: {$0.geolocation_enabled = $1}),
                Type<SystemSettingDTO>.optionalProperty("taxonomies", get: {return $0.taxonomies}, set: {$0.taxonomies = $1}),
                Type<SystemSettingDTO>.optionalProperty("product_visibility_terms", get: {return $0.product_visibility_terms}, set: {$0.product_visibility_terms = $1}),
            ]
        )
    }

}

open class TaxonomiesDTO: JsonSerializable {
    public required init() {}
    
    open var external: String?
    open var grouped: String?
    open var simple: String?
    open var variable: String?
    
    open class var typeName: String { return String(describing: self) }
    open class var metadata: Metadata {
        return Metadata.create(
            [
                Type<TaxonomiesDTO>.optionalProperty("external", get: {return $0.external}, set: {$0.external = $1}),
                Type<TaxonomiesDTO>.optionalProperty("grouped", get: {return $0.grouped}, set: {$0.grouped = $1}),
                Type<TaxonomiesDTO>.optionalProperty("simple", get: {return $0.simple}, set: {$0.simple = $1}),
                Type<TaxonomiesDTO>.optionalProperty("variable", get: {return $0.variable}, set: {$0.variable = $1}),
            ]
        )
    }
    
}

open class Product_visibility_termsDTO: JsonSerializable {
    public required init() {}
    
    open var exclude_from_catalog: String?
    open var exclude_from_search: String?
    open var featured: String?
    open var outofstock: String?
    open var rated_1: String?
    open var rated_2: String?
    open var rated_3: String?
    open var rated_4: String?
    open var rated_5: String?
    
    open class var typeName: String { return String(describing: self) }
    open class var metadata: Metadata {
        return Metadata.create(
            [
                Type<Product_visibility_termsDTO>.optionalProperty("exclude-from-catalog", get: {return $0.exclude_from_catalog}, set: {$0.exclude_from_catalog = $1}),
                Type<Product_visibility_termsDTO>.optionalProperty("exclude-from-search", get: {return $0.exclude_from_search}, set: {$0.exclude_from_search = $1}),
                Type<Product_visibility_termsDTO>.optionalProperty("featured", get: {return $0.featured}, set: {$0.featured = $1}),
                Type<Product_visibility_termsDTO>.optionalProperty("outofstock", get: {return $0.outofstock}, set: {$0.outofstock = $1}),
                Type<Product_visibility_termsDTO>.optionalProperty("rated-1", get: {return $0.rated_1}, set: {$0.rated_1 = $1}),
                Type<Product_visibility_termsDTO>.optionalProperty("rated-2", get: {return $0.rated_2}, set: {$0.rated_2 = $1}),
                Type<Product_visibility_termsDTO>.optionalProperty("rated-3", get: {return $0.rated_3}, set: {$0.rated_3 = $1}),
                Type<Product_visibility_termsDTO>.optionalProperty("rated-4", get: {return $0.rated_4}, set: {$0.rated_4 = $1}),
                Type<Product_visibility_termsDTO>.optionalProperty("rated-5", get: {return $0.rated_5}, set: {$0.rated_5 = $1}),
            ]
        )
    }
    
}

open class SecurityDTO: JsonSerializable {
    public required init() {}
    
    open var secure_connection: Bool?
    open var hide_errors: Bool?
    
    open class var typeName: String { return String(describing: self) }
    open class var metadata: Metadata {
        return Metadata.create(
            [
                Type<SecurityDTO>.optionalProperty("secure_connection", get: {return $0.secure_connection}, set: {$0.secure_connection = $1}),
                Type<SecurityDTO>.optionalProperty("hide_errors", get: {return $0.hide_errors}, set: {$0.hide_errors = $1}),
            ]
        )
    }
    
}

open class SystemPageDTO: JsonSerializable {
    public required init() {}
    
    open var page_name: String?
    open var page_id: String?
    open var page_set: Bool?
    open var page_exists: Bool?
    open var page_visible: Bool?
    open var shortcode: String?
    open var shortcode_required: Bool?
    open var shortcode_present: Bool?

    open class var typeName: String { return String(describing: self) }
    open class var metadata: Metadata {
        return Metadata.create(
            [
                Type<SystemPageDTO>.optionalProperty("page_name", get: {return $0.page_name}, set: {$0.page_name = $1}),
                Type<SystemPageDTO>.optionalProperty("page_id", get: {return $0.page_id}, set: {$0.page_id = $1}),
                Type<SystemPageDTO>.optionalProperty("page_set", get: {return $0.page_set}, set: {$0.page_set = $1}),
                Type<SystemPageDTO>.optionalProperty("page_exists", get: {return $0.page_exists}, set: {$0.page_exists = $1}),
                Type<SystemPageDTO>.optionalProperty("page_visible", get: {return $0.page_visible}, set: {$0.page_visible = $1}),
                Type<SystemPageDTO>.optionalProperty("shortcode", get: {return $0.shortcode}, set: {$0.shortcode = $1}),
                Type<SystemPageDTO>.optionalProperty("shortcode_required", get: {return $0.shortcode_required}, set: {$0.shortcode_required = $1}),
                Type<SystemPageDTO>.optionalProperty("shortcode_present", get: {return $0.shortcode_present}, set: {$0.shortcode_present = $1}),
            ]
        )
    }
    
}





