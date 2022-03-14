import Foundation


import Foundation
public extension ApplicationClient {
  
        /*
            Model: ProductListingActionPage
            Used By: Catalog
        */
        class ProductListingActionPage: Codable {
            
            public var params: [String: Any]?
            
            public var type: String?
            
            public var query: [String: Any]?
            

            public enum CodingKeys: String, CodingKey {
                
                case params = "params"
                
                case type = "type"
                
                case query = "query"
                
            }

            public init(params: [String: Any]?, query: [String: Any]?, type: String?) {
                
                self.params = params
                
                self.type = type
                
                self.query = query
                
            }

            public func duplicate() -> ProductListingActionPage {
                let dict = self.dictionary!
                let copy = ProductListingActionPage(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    params = try container.decode([String: Any].self, forKey: .params)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    type = try container.decode(String.self, forKey: .type)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    query = try container.decode([String: Any].self, forKey: .query)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(params, forKey: .params)
                
                
                
                
                try? container.encodeIfPresent(type, forKey: .type)
                
                
                
                
                try? container.encodeIfPresent(query, forKey: .query)
                
                
            }
            
        }
        
        /*
            Model: ProductListingAction
            Used By: Catalog
        */
        class ProductListingAction: Codable {
            
            public var type: String?
            
            public var page: ProductListingActionPage?
            

            public enum CodingKeys: String, CodingKey {
                
                case type = "type"
                
                case page = "page"
                
            }

            public init(page: ProductListingActionPage?, type: String?) {
                
                self.type = type
                
                self.page = page
                
            }

            public func duplicate() -> ProductListingAction {
                let dict = self.dictionary!
                let copy = ProductListingAction(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    type = try container.decode(String.self, forKey: .type)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    page = try container.decode(ProductListingActionPage.self, forKey: .page)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(type, forKey: .type)
                
                
                
                
                try? container.encodeIfPresent(page, forKey: .page)
                
                
            }
            
        }
        
        /*
            Model: Price
            Used By: Catalog
        */
        class Price: Codable {
            
            public var currencySymbol: String?
            
            public var min: Double?
            
            public var currencyCode: String?
            
            public var max: Double?
            

            public enum CodingKeys: String, CodingKey {
                
                case currencySymbol = "currency_symbol"
                
                case min = "min"
                
                case currencyCode = "currency_code"
                
                case max = "max"
                
            }

            public init(currencyCode: String?, currencySymbol: String?, max: Double?, min: Double?) {
                
                self.currencySymbol = currencySymbol
                
                self.min = min
                
                self.currencyCode = currencyCode
                
                self.max = max
                
            }

            public func duplicate() -> Price {
                let dict = self.dictionary!
                let copy = Price(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    currencySymbol = try container.decode(String.self, forKey: .currencySymbol)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    min = try container.decode(Double.self, forKey: .min)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    currencyCode = try container.decode(String.self, forKey: .currencyCode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    max = try container.decode(Double.self, forKey: .max)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(currencySymbol, forKey: .currencySymbol)
                
                
                
                
                try? container.encodeIfPresent(min, forKey: .min)
                
                
                
                
                try? container.encodeIfPresent(currencyCode, forKey: .currencyCode)
                
                
                
                
                try? container.encodeIfPresent(max, forKey: .max)
                
                
            }
            
        }
        
        /*
            Model: ProductListingPrice
            Used By: Catalog
        */
        class ProductListingPrice: Codable {
            
            public var marked: Price?
            
            public var effective: Price?
            

            public enum CodingKeys: String, CodingKey {
                
                case marked = "marked"
                
                case effective = "effective"
                
            }

            public init(effective: Price?, marked: Price?) {
                
                self.marked = marked
                
                self.effective = effective
                
            }

            public func duplicate() -> ProductListingPrice {
                let dict = self.dictionary!
                let copy = ProductListingPrice(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    marked = try container.decode(Price.self, forKey: .marked)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    effective = try container.decode(Price.self, forKey: .effective)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(marked, forKey: .marked)
                
                
                
                
                try? container.encodeIfPresent(effective, forKey: .effective)
                
                
            }
            
        }
        
        /*
            Model: ProductDetailAttribute
            Used By: Catalog
        */
        class ProductDetailAttribute: Codable {
            
            public var key: String?
            
            public var type: String?
            
            public var value: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case key = "key"
                
                case type = "type"
                
                case value = "value"
                
            }

            public init(key: String?, type: String?, value: String?) {
                
                self.key = key
                
                self.type = type
                
                self.value = value
                
            }

            public func duplicate() -> ProductDetailAttribute {
                let dict = self.dictionary!
                let copy = ProductDetailAttribute(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    key = try container.decode(String.self, forKey: .key)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    type = try container.decode(String.self, forKey: .type)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    value = try container.decode(String.self, forKey: .value)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(key, forKey: .key)
                
                
                
                
                try? container.encodeIfPresent(type, forKey: .type)
                
                
                
                
                try? container.encodeIfPresent(value, forKey: .value)
                
                
            }
            
        }
        
        /*
            Model: ProductDetailGroupedAttribute
            Used By: Catalog
        */
        class ProductDetailGroupedAttribute: Codable {
            
            public var details: [ProductDetailAttribute]?
            
            public var title: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case details = "details"
                
                case title = "title"
                
            }

            public init(details: [ProductDetailAttribute]?, title: String?) {
                
                self.details = details
                
                self.title = title
                
            }

            public func duplicate() -> ProductDetailGroupedAttribute {
                let dict = self.dictionary!
                let copy = ProductDetailGroupedAttribute(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    details = try container.decode([ProductDetailAttribute].self, forKey: .details)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    title = try container.decode(String.self, forKey: .title)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(details, forKey: .details)
                
                
                
                
                try? container.encodeIfPresent(title, forKey: .title)
                
                
            }
            
        }
        
        /*
            Model: Meta
            Used By: Catalog
        */
        class Meta: Codable {
            
            public var source: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case source = "source"
                
            }

            public init(source: String?) {
                
                self.source = source
                
            }

            public func duplicate() -> Meta {
                let dict = self.dictionary!
                let copy = Meta(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    source = try container.decode(String.self, forKey: .source)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(source, forKey: .source)
                
                
            }
            
        }
        
        /*
            Model: Media
            Used By: Catalog
        */
        class Media: Codable {
            
            public var url: String?
            
            public var meta: Meta?
            
            public var type: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case url = "url"
                
                case meta = "meta"
                
                case type = "type"
                
            }

            public init(meta: Meta?, type: String?, url: String?) {
                
                self.url = url
                
                self.meta = meta
                
                self.type = type
                
            }

            public func duplicate() -> Media {
                let dict = self.dictionary!
                let copy = Media(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    url = try container.decode(String.self, forKey: .url)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    meta = try container.decode(Meta.self, forKey: .meta)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    type = try container.decode(String.self, forKey: .type)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(url, forKey: .url)
                
                
                
                
                try? container.encodeIfPresent(meta, forKey: .meta)
                
                
                
                
                try? container.encodeIfPresent(type, forKey: .type)
                
                
            }
            
        }
        
        /*
            Model: ProductBrand
            Used By: Catalog
        */
        class ProductBrand: Codable {
            
            public var name: String?
            
            public var uid: Int?
            
            public var action: ProductListingAction?
            
            public var logo: Media?
            

            public enum CodingKeys: String, CodingKey {
                
                case name = "name"
                
                case uid = "uid"
                
                case action = "action"
                
                case logo = "logo"
                
            }

            public init(action: ProductListingAction?, logo: Media?, name: String?, uid: Int?) {
                
                self.name = name
                
                self.uid = uid
                
                self.action = action
                
                self.logo = logo
                
            }

            public func duplicate() -> ProductBrand {
                let dict = self.dictionary!
                let copy = ProductBrand(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    name = try container.decode(String.self, forKey: .name)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    uid = try container.decode(Int.self, forKey: .uid)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    action = try container.decode(ProductListingAction.self, forKey: .action)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    logo = try container.decode(Media.self, forKey: .logo)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(name, forKey: .name)
                
                
                
                
                try? container.encodeIfPresent(uid, forKey: .uid)
                
                
                
                
                try? container.encodeIfPresent(action, forKey: .action)
                
                
                
                
                try? container.encodeIfPresent(logo, forKey: .logo)
                
                
            }
            
        }
        
        /*
            Model: MetaFields
            Used By: Catalog
        */
        class MetaFields: Codable {
            
            public var key: String
            
            public var value: String
            

            public enum CodingKeys: String, CodingKey {
                
                case key = "key"
                
                case value = "value"
                
            }

            public init(key: String, value: String) {
                
                self.key = key
                
                self.value = value
                
            }

            public func duplicate() -> MetaFields {
                let dict = self.dictionary!
                let copy = MetaFields(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                key = try container.decode(String.self, forKey: .key)
                
                
                
                
                value = try container.decode(String.self, forKey: .value)
                
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(key, forKey: .key)
                
                
                
                
                try? container.encodeIfPresent(value, forKey: .value)
                
                
            }
            
        }
        
        /*
            Model: ProductDetail
            Used By: Catalog
        */
        class ProductDetail: Codable {
            
            public var shortDescription: String?
            
            public var action: ProductListingAction?
            
            public var price: ProductListingPrice?
            
            public var productOnlineDate: String?
            
            public var highlights: [String]?
            
            public var groupedAttributes: [ProductDetailGroupedAttribute]?
            
            public var slug: String
            
            public var discount: String?
            
            public var medias: [Media]?
            
            public var description: String?
            
            public var type: String?
            
            public var itemType: String?
            
            public var brand: ProductBrand?
            
            public var color: String?
            
            public var similars: [String]?
            
            public var imageNature: String?
            
            public var teaserTag: String?
            
            public var ratingCount: Int?
            
            public var hasVariant: Bool?
            
            public var tryouts: [String]?
            
            public var itemCode: String?
            
            public var customMeta: [MetaFields]?
            
            public var name: String?
            
            public var attributes: [String: Any]?
            
            public var uid: Int?
            
            public var categories: [ProductBrand]?
            
            public var rating: Double?
            

            public enum CodingKeys: String, CodingKey {
                
                case shortDescription = "short_description"
                
                case action = "action"
                
                case price = "price"
                
                case productOnlineDate = "product_online_date"
                
                case highlights = "highlights"
                
                case groupedAttributes = "grouped_attributes"
                
                case slug = "slug"
                
                case discount = "discount"
                
                case medias = "medias"
                
                case description = "description"
                
                case type = "type"
                
                case itemType = "item_type"
                
                case brand = "brand"
                
                case color = "color"
                
                case similars = "similars"
                
                case imageNature = "image_nature"
                
                case teaserTag = "teaser_tag"
                
                case ratingCount = "rating_count"
                
                case hasVariant = "has_variant"
                
                case tryouts = "tryouts"
                
                case itemCode = "item_code"
                
                case customMeta = "_custom_meta"
                
                case name = "name"
                
                case attributes = "attributes"
                
                case uid = "uid"
                
                case categories = "categories"
                
                case rating = "rating"
                
            }

            public init(action: ProductListingAction?, attributes: [String: Any]?, brand: ProductBrand?, categories: [ProductBrand]?, color: String?, description: String?, discount: String?, groupedAttributes: [ProductDetailGroupedAttribute]?, hasVariant: Bool?, highlights: [String]?, imageNature: String?, itemCode: String?, itemType: String?, medias: [Media]?, name: String?, price: ProductListingPrice?, productOnlineDate: String?, rating: Double?, ratingCount: Int?, shortDescription: String?, similars: [String]?, slug: String, teaserTag: String?, tryouts: [String]?, type: String?, uid: Int?, customMeta: [MetaFields]?) {
                
                self.shortDescription = shortDescription
                
                self.action = action
                
                self.price = price
                
                self.productOnlineDate = productOnlineDate
                
                self.highlights = highlights
                
                self.groupedAttributes = groupedAttributes
                
                self.slug = slug
                
                self.discount = discount
                
                self.medias = medias
                
                self.description = description
                
                self.type = type
                
                self.itemType = itemType
                
                self.brand = brand
                
                self.color = color
                
                self.similars = similars
                
                self.imageNature = imageNature
                
                self.teaserTag = teaserTag
                
                self.ratingCount = ratingCount
                
                self.hasVariant = hasVariant
                
                self.tryouts = tryouts
                
                self.itemCode = itemCode
                
                self.customMeta = customMeta
                
                self.name = name
                
                self.attributes = attributes
                
                self.uid = uid
                
                self.categories = categories
                
                self.rating = rating
                
            }

            public func duplicate() -> ProductDetail {
                let dict = self.dictionary!
                let copy = ProductDetail(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    shortDescription = try container.decode(String.self, forKey: .shortDescription)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    action = try container.decode(ProductListingAction.self, forKey: .action)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    price = try container.decode(ProductListingPrice.self, forKey: .price)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    productOnlineDate = try container.decode(String.self, forKey: .productOnlineDate)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    highlights = try container.decode([String].self, forKey: .highlights)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    groupedAttributes = try container.decode([ProductDetailGroupedAttribute].self, forKey: .groupedAttributes)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                slug = try container.decode(String.self, forKey: .slug)
                
                
                
                
                do {
                    discount = try container.decode(String.self, forKey: .discount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    medias = try container.decode([Media].self, forKey: .medias)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    description = try container.decode(String.self, forKey: .description)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    type = try container.decode(String.self, forKey: .type)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    itemType = try container.decode(String.self, forKey: .itemType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    brand = try container.decode(ProductBrand.self, forKey: .brand)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    color = try container.decode(String.self, forKey: .color)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    similars = try container.decode([String].self, forKey: .similars)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    imageNature = try container.decode(String.self, forKey: .imageNature)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    teaserTag = try container.decode(String.self, forKey: .teaserTag)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    ratingCount = try container.decode(Int.self, forKey: .ratingCount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    hasVariant = try container.decode(Bool.self, forKey: .hasVariant)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    tryouts = try container.decode([String].self, forKey: .tryouts)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    itemCode = try container.decode(String.self, forKey: .itemCode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    customMeta = try container.decode([MetaFields].self, forKey: .customMeta)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    name = try container.decode(String.self, forKey: .name)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    attributes = try container.decode([String: Any].self, forKey: .attributes)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    uid = try container.decode(Int.self, forKey: .uid)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    categories = try container.decode([ProductBrand].self, forKey: .categories)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    rating = try container.decode(Double.self, forKey: .rating)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(shortDescription, forKey: .shortDescription)
                
                
                
                
                try? container.encodeIfPresent(action, forKey: .action)
                
                
                
                
                try? container.encodeIfPresent(price, forKey: .price)
                
                
                
                
                try? container.encodeIfPresent(productOnlineDate, forKey: .productOnlineDate)
                
                
                
                
                try? container.encodeIfPresent(highlights, forKey: .highlights)
                
                
                
                
                try? container.encodeIfPresent(groupedAttributes, forKey: .groupedAttributes)
                
                
                
                
                try? container.encodeIfPresent(slug, forKey: .slug)
                
                
                
                
                try? container.encodeIfPresent(discount, forKey: .discount)
                
                
                
                
                try? container.encodeIfPresent(medias, forKey: .medias)
                
                
                
                
                try? container.encodeIfPresent(description, forKey: .description)
                
                
                
                
                try? container.encodeIfPresent(type, forKey: .type)
                
                
                
                
                try? container.encodeIfPresent(itemType, forKey: .itemType)
                
                
                
                
                try? container.encodeIfPresent(brand, forKey: .brand)
                
                
                
                
                try? container.encodeIfPresent(color, forKey: .color)
                
                
                
                
                try? container.encodeIfPresent(similars, forKey: .similars)
                
                
                
                
                try? container.encodeIfPresent(imageNature, forKey: .imageNature)
                
                
                
                
                try? container.encodeIfPresent(teaserTag, forKey: .teaserTag)
                
                
                
                
                try? container.encodeIfPresent(ratingCount, forKey: .ratingCount)
                
                
                
                
                try? container.encodeIfPresent(hasVariant, forKey: .hasVariant)
                
                
                
                
                try? container.encodeIfPresent(tryouts, forKey: .tryouts)
                
                
                
                
                try? container.encodeIfPresent(itemCode, forKey: .itemCode)
                
                
                
                
                try? container.encodeIfPresent(customMeta, forKey: .customMeta)
                
                
                
                
                try? container.encodeIfPresent(name, forKey: .name)
                
                
                
                
                try? container.encodeIfPresent(attributes, forKey: .attributes)
                
                
                
                
                try? container.encodeIfPresent(uid, forKey: .uid)
                
                
                
                
                try? container.encodeIfPresent(categories, forKey: .categories)
                
                
                
                
                try? container.encodeIfPresent(rating, forKey: .rating)
                
                
            }
            
        }
        
        /*
            Model: ErrorResponse
            Used By: Catalog
        */
        class ErrorResponse: Codable {
            
            public var error: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case error = "error"
                
            }

            public init(error: String?) {
                
                self.error = error
                
            }

            public func duplicate() -> ErrorResponse {
                let dict = self.dictionary!
                let copy = ErrorResponse(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    error = try container.decode(String.self, forKey: .error)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(error, forKey: .error)
                
                
            }
            
        }
        
        /*
            Model: ProductSizeStores
            Used By: Catalog
        */
        class ProductSizeStores: Codable {
            
            public var count: Int?
            

            public enum CodingKeys: String, CodingKey {
                
                case count = "count"
                
            }

            public init(count: Int?) {
                
                self.count = count
                
            }

            public func duplicate() -> ProductSizeStores {
                let dict = self.dictionary!
                let copy = ProductSizeStores(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    count = try container.decode(Int.self, forKey: .count)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(count, forKey: .count)
                
                
            }
            
        }
        
        /*
            Model: ColumnHeader
            Used By: Catalog
        */
        class ColumnHeader: Codable {
            
            public var convertable: Bool?
            
            public var value: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case convertable = "convertable"
                
                case value = "value"
                
            }

            public init(convertable: Bool?, value: String?) {
                
                self.convertable = convertable
                
                self.value = value
                
            }

            public func duplicate() -> ColumnHeader {
                let dict = self.dictionary!
                let copy = ColumnHeader(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    convertable = try container.decode(Bool.self, forKey: .convertable)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    value = try container.decode(String.self, forKey: .value)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(convertable, forKey: .convertable)
                
                
                
                
                try? container.encodeIfPresent(value, forKey: .value)
                
                
            }
            
        }
        
        /*
            Model: ColumnHeaders
            Used By: Catalog
        */
        class ColumnHeaders: Codable {
            
            public var col1: ColumnHeader?
            
            public var col3: ColumnHeader?
            
            public var col4: ColumnHeader?
            
            public var col6: ColumnHeader?
            
            public var col5: ColumnHeader?
            
            public var col2: ColumnHeader?
            

            public enum CodingKeys: String, CodingKey {
                
                case col1 = "col_1"
                
                case col3 = "col_3"
                
                case col4 = "col_4"
                
                case col6 = "col_6"
                
                case col5 = "col_5"
                
                case col2 = "col_2"
                
            }

            public init(col1: ColumnHeader?, col2: ColumnHeader?, col3: ColumnHeader?, col4: ColumnHeader?, col5: ColumnHeader?, col6: ColumnHeader?) {
                
                self.col1 = col1
                
                self.col3 = col3
                
                self.col4 = col4
                
                self.col6 = col6
                
                self.col5 = col5
                
                self.col2 = col2
                
            }

            public func duplicate() -> ColumnHeaders {
                let dict = self.dictionary!
                let copy = ColumnHeaders(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    col1 = try container.decode(ColumnHeader.self, forKey: .col1)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    col3 = try container.decode(ColumnHeader.self, forKey: .col3)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    col4 = try container.decode(ColumnHeader.self, forKey: .col4)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    col6 = try container.decode(ColumnHeader.self, forKey: .col6)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    col5 = try container.decode(ColumnHeader.self, forKey: .col5)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    col2 = try container.decode(ColumnHeader.self, forKey: .col2)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(col1, forKey: .col1)
                
                
                
                
                try? container.encodeIfPresent(col3, forKey: .col3)
                
                
                
                
                try? container.encodeIfPresent(col4, forKey: .col4)
                
                
                
                
                try? container.encodeIfPresent(col6, forKey: .col6)
                
                
                
                
                try? container.encodeIfPresent(col5, forKey: .col5)
                
                
                
                
                try? container.encodeIfPresent(col2, forKey: .col2)
                
                
            }
            
        }
        
        /*
            Model: SizeChartValues
            Used By: Catalog
        */
        class SizeChartValues: Codable {
            
            public var col1: String?
            
            public var col3: String?
            
            public var col4: String?
            
            public var col6: String?
            
            public var col5: String?
            
            public var col2: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case col1 = "col_1"
                
                case col3 = "col_3"
                
                case col4 = "col_4"
                
                case col6 = "col_6"
                
                case col5 = "col_5"
                
                case col2 = "col_2"
                
            }

            public init(col1: String?, col2: String?, col3: String?, col4: String?, col5: String?, col6: String?) {
                
                self.col1 = col1
                
                self.col3 = col3
                
                self.col4 = col4
                
                self.col6 = col6
                
                self.col5 = col5
                
                self.col2 = col2
                
            }

            public func duplicate() -> SizeChartValues {
                let dict = self.dictionary!
                let copy = SizeChartValues(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    col1 = try container.decode(String.self, forKey: .col1)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    col3 = try container.decode(String.self, forKey: .col3)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    col4 = try container.decode(String.self, forKey: .col4)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    col6 = try container.decode(String.self, forKey: .col6)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    col5 = try container.decode(String.self, forKey: .col5)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    col2 = try container.decode(String.self, forKey: .col2)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(col1, forKey: .col1)
                
                
                
                
                try? container.encodeIfPresent(col3, forKey: .col3)
                
                
                
                
                try? container.encodeIfPresent(col4, forKey: .col4)
                
                
                
                
                try? container.encodeIfPresent(col6, forKey: .col6)
                
                
                
                
                try? container.encodeIfPresent(col5, forKey: .col5)
                
                
                
                
                try? container.encodeIfPresent(col2, forKey: .col2)
                
                
            }
            
        }
        
        /*
            Model: SizeChart
            Used By: Catalog
        */
        class SizeChart: Codable {
            
            public var image: String?
            
            public var title: String?
            
            public var sizeTip: String?
            
            public var headers: ColumnHeaders?
            
            public var unit: String?
            
            public var description: String?
            
            public var sizes: [SizeChartValues]?
            

            public enum CodingKeys: String, CodingKey {
                
                case image = "image"
                
                case title = "title"
                
                case sizeTip = "size_tip"
                
                case headers = "headers"
                
                case unit = "unit"
                
                case description = "description"
                
                case sizes = "sizes"
                
            }

            public init(description: String?, headers: ColumnHeaders?, image: String?, sizes: [SizeChartValues]?, sizeTip: String?, title: String?, unit: String?) {
                
                self.image = image
                
                self.title = title
                
                self.sizeTip = sizeTip
                
                self.headers = headers
                
                self.unit = unit
                
                self.description = description
                
                self.sizes = sizes
                
            }

            public func duplicate() -> SizeChart {
                let dict = self.dictionary!
                let copy = SizeChart(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    image = try container.decode(String.self, forKey: .image)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    title = try container.decode(String.self, forKey: .title)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    sizeTip = try container.decode(String.self, forKey: .sizeTip)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    headers = try container.decode(ColumnHeaders.self, forKey: .headers)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    unit = try container.decode(String.self, forKey: .unit)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    description = try container.decode(String.self, forKey: .description)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    sizes = try container.decode([SizeChartValues].self, forKey: .sizes)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(image, forKey: .image)
                
                
                
                
                try? container.encodeIfPresent(title, forKey: .title)
                
                
                
                
                try? container.encodeIfPresent(sizeTip, forKey: .sizeTip)
                
                
                
                
                try? container.encodeIfPresent(headers, forKey: .headers)
                
                
                
                
                try? container.encodeIfPresent(unit, forKey: .unit)
                
                
                
                
                try? container.encodeIfPresent(description, forKey: .description)
                
                
                
                
                try? container.encodeIfPresent(sizes, forKey: .sizes)
                
                
            }
            
        }
        
        /*
            Model: ProductSize
            Used By: Catalog
        */
        class ProductSize: Codable {
            
            public var isAvailable: Bool?
            
            public var display: String?
            
            public var quantity: Int?
            
            public var value: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case isAvailable = "is_available"
                
                case display = "display"
                
                case quantity = "quantity"
                
                case value = "value"
                
            }

            public init(display: String?, isAvailable: Bool?, quantity: Int?, value: String?) {
                
                self.isAvailable = isAvailable
                
                self.display = display
                
                self.quantity = quantity
                
                self.value = value
                
            }

            public func duplicate() -> ProductSize {
                let dict = self.dictionary!
                let copy = ProductSize(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    isAvailable = try container.decode(Bool.self, forKey: .isAvailable)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    display = try container.decode(String.self, forKey: .display)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    quantity = try container.decode(Int.self, forKey: .quantity)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    value = try container.decode(String.self, forKey: .value)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(isAvailable, forKey: .isAvailable)
                
                
                
                
                try? container.encodeIfPresent(display, forKey: .display)
                
                
                
                
                try? container.encodeIfPresent(quantity, forKey: .quantity)
                
                
                
                
                try? container.encodeIfPresent(value, forKey: .value)
                
                
            }
            
        }
        
        /*
            Model: ProductSizes
            Used By: Catalog
        */
        class ProductSizes: Codable {
            
            public var stores: ProductSizeStores?
            
            public var price: ProductListingPrice?
            
            public var sellable: Bool?
            
            public var discount: String?
            
            public var sizeChart: SizeChart?
            
            public var sizes: [ProductSize]?
            

            public enum CodingKeys: String, CodingKey {
                
                case stores = "stores"
                
                case price = "price"
                
                case sellable = "sellable"
                
                case discount = "discount"
                
                case sizeChart = "size_chart"
                
                case sizes = "sizes"
                
            }

            public init(discount: String?, price: ProductListingPrice?, sellable: Bool?, sizes: [ProductSize]?, sizeChart: SizeChart?, stores: ProductSizeStores?) {
                
                self.stores = stores
                
                self.price = price
                
                self.sellable = sellable
                
                self.discount = discount
                
                self.sizeChart = sizeChart
                
                self.sizes = sizes
                
            }

            public func duplicate() -> ProductSizes {
                let dict = self.dictionary!
                let copy = ProductSizes(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    stores = try container.decode(ProductSizeStores.self, forKey: .stores)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    price = try container.decode(ProductListingPrice.self, forKey: .price)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    sellable = try container.decode(Bool.self, forKey: .sellable)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    discount = try container.decode(String.self, forKey: .discount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    sizeChart = try container.decode(SizeChart.self, forKey: .sizeChart)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    sizes = try container.decode([ProductSize].self, forKey: .sizes)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(stores, forKey: .stores)
                
                
                
                
                try? container.encodeIfPresent(price, forKey: .price)
                
                
                
                
                try? container.encodeIfPresent(sellable, forKey: .sellable)
                
                
                
                
                try? container.encodeIfPresent(discount, forKey: .discount)
                
                
                
                
                try? container.encodeIfPresent(sizeChart, forKey: .sizeChart)
                
                
                
                
                try? container.encodeIfPresent(sizes, forKey: .sizes)
                
                
            }
            
        }
        
        /*
            Model: AttributeDetail
            Used By: Catalog
        */
        class AttributeDetail: Codable {
            
            public var description: String?
            
            public var key: String?
            
            public var display: String?
            
            public var logo: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case description = "description"
                
                case key = "key"
                
                case display = "display"
                
                case logo = "logo"
                
            }

            public init(description: String?, display: String?, key: String?, logo: String?) {
                
                self.description = description
                
                self.key = key
                
                self.display = display
                
                self.logo = logo
                
            }

            public func duplicate() -> AttributeDetail {
                let dict = self.dictionary!
                let copy = AttributeDetail(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    description = try container.decode(String.self, forKey: .description)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    key = try container.decode(String.self, forKey: .key)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    display = try container.decode(String.self, forKey: .display)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    logo = try container.decode(String.self, forKey: .logo)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(description, forKey: .description)
                
                
                
                
                try? container.encodeIfPresent(key, forKey: .key)
                
                
                
                
                try? container.encodeIfPresent(display, forKey: .display)
                
                
                
                
                try? container.encodeIfPresent(logo, forKey: .logo)
                
                
            }
            
        }
        
        /*
            Model: AttributeMetadata
            Used By: Catalog
        */
        class AttributeMetadata: Codable {
            
            public var details: [AttributeDetail]?
            
            public var title: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case details = "details"
                
                case title = "title"
                
            }

            public init(details: [AttributeDetail]?, title: String?) {
                
                self.details = details
                
                self.title = title
                
            }

            public func duplicate() -> AttributeMetadata {
                let dict = self.dictionary!
                let copy = AttributeMetadata(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    details = try container.decode([AttributeDetail].self, forKey: .details)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    title = try container.decode(String.self, forKey: .title)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(details, forKey: .details)
                
                
                
                
                try? container.encodeIfPresent(title, forKey: .title)
                
                
            }
            
        }
        
        /*
            Model: ProductsComparisonResponse
            Used By: Catalog
        */
        class ProductsComparisonResponse: Codable {
            
            public var attributesMetadata: [AttributeMetadata]?
            
            public var items: [ProductDetail]?
            

            public enum CodingKeys: String, CodingKey {
                
                case attributesMetadata = "attributes_metadata"
                
                case items = "items"
                
            }

            public init(attributesMetadata: [AttributeMetadata]?, items: [ProductDetail]?) {
                
                self.attributesMetadata = attributesMetadata
                
                self.items = items
                
            }

            public func duplicate() -> ProductsComparisonResponse {
                let dict = self.dictionary!
                let copy = ProductsComparisonResponse(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    attributesMetadata = try container.decode([AttributeMetadata].self, forKey: .attributesMetadata)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    items = try container.decode([ProductDetail].self, forKey: .items)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(attributesMetadata, forKey: .attributesMetadata)
                
                
                
                
                try? container.encodeIfPresent(items, forKey: .items)
                
                
            }
            
        }
        
        /*
            Model: ProductCompareResponse
            Used By: Catalog
        */
        class ProductCompareResponse: Codable {
            
            public var attributesMetadata: [AttributeMetadata]?
            
            public var items: [ProductDetail]?
            
            public var title: String?
            
            public var subtitle: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case attributesMetadata = "attributes_metadata"
                
                case items = "items"
                
                case title = "title"
                
                case subtitle = "subtitle"
                
            }

            public init(attributesMetadata: [AttributeMetadata]?, items: [ProductDetail]?, subtitle: String?, title: String?) {
                
                self.attributesMetadata = attributesMetadata
                
                self.items = items
                
                self.title = title
                
                self.subtitle = subtitle
                
            }

            public func duplicate() -> ProductCompareResponse {
                let dict = self.dictionary!
                let copy = ProductCompareResponse(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    attributesMetadata = try container.decode([AttributeMetadata].self, forKey: .attributesMetadata)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    items = try container.decode([ProductDetail].self, forKey: .items)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    title = try container.decode(String.self, forKey: .title)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    subtitle = try container.decode(String.self, forKey: .subtitle)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(attributesMetadata, forKey: .attributesMetadata)
                
                
                
                
                try? container.encodeIfPresent(items, forKey: .items)
                
                
                
                
                try? container.encodeIfPresent(title, forKey: .title)
                
                
                
                
                try? container.encodeIfPresent(subtitle, forKey: .subtitle)
                
                
            }
            
        }
        
        /*
            Model: ProductFrequentlyComparedSimilarResponse
            Used By: Catalog
        */
        class ProductFrequentlyComparedSimilarResponse: Codable {
            
            public var similars: ProductCompareResponse?
            

            public enum CodingKeys: String, CodingKey {
                
                case similars = "similars"
                
            }

            public init(similars: ProductCompareResponse?) {
                
                self.similars = similars
                
            }

            public func duplicate() -> ProductFrequentlyComparedSimilarResponse {
                let dict = self.dictionary!
                let copy = ProductFrequentlyComparedSimilarResponse(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    similars = try container.decode(ProductCompareResponse.self, forKey: .similars)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(similars, forKey: .similars)
                
                
            }
            
        }
        
        /*
            Model: ProductSimilarItem
            Used By: Catalog
        */
        class ProductSimilarItem: Codable {
            
            public var items: [ProductDetail]?
            
            public var title: String?
            
            public var subtitle: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case items = "items"
                
                case title = "title"
                
                case subtitle = "subtitle"
                
            }

            public init(items: [ProductDetail]?, subtitle: String?, title: String?) {
                
                self.items = items
                
                self.title = title
                
                self.subtitle = subtitle
                
            }

            public func duplicate() -> ProductSimilarItem {
                let dict = self.dictionary!
                let copy = ProductSimilarItem(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    items = try container.decode([ProductDetail].self, forKey: .items)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    title = try container.decode(String.self, forKey: .title)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    subtitle = try container.decode(String.self, forKey: .subtitle)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(items, forKey: .items)
                
                
                
                
                try? container.encodeIfPresent(title, forKey: .title)
                
                
                
                
                try? container.encodeIfPresent(subtitle, forKey: .subtitle)
                
                
            }
            
        }
        
        /*
            Model: SimilarProductByTypeResponse
            Used By: Catalog
        */
        class SimilarProductByTypeResponse: Codable {
            
            public var similars: ProductSimilarItem?
            

            public enum CodingKeys: String, CodingKey {
                
                case similars = "similars"
                
            }

            public init(similars: ProductSimilarItem?) {
                
                self.similars = similars
                
            }

            public func duplicate() -> SimilarProductByTypeResponse {
                let dict = self.dictionary!
                let copy = SimilarProductByTypeResponse(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    similars = try container.decode(ProductSimilarItem.self, forKey: .similars)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(similars, forKey: .similars)
                
                
            }
            
        }
        
        /*
            Model: ProductVariantItemResponse
            Used By: Catalog
        */
        class ProductVariantItemResponse: Codable {
            
            public var name: String?
            
            public var action: ProductListingAction?
            
            public var value: String?
            
            public var isAvailable: Bool?
            
            public var uid: Int?
            
            public var slug: String?
            
            public var colorName: String?
            
            public var medias: [Media]?
            
            public var color: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case name = "name"
                
                case action = "action"
                
                case value = "value"
                
                case isAvailable = "is_available"
                
                case uid = "uid"
                
                case slug = "slug"
                
                case colorName = "color_name"
                
                case medias = "medias"
                
                case color = "color"
                
            }

            public init(action: ProductListingAction?, color: String?, colorName: String?, isAvailable: Bool?, medias: [Media]?, name: String?, slug: String?, uid: Int?, value: String?) {
                
                self.name = name
                
                self.action = action
                
                self.value = value
                
                self.isAvailable = isAvailable
                
                self.uid = uid
                
                self.slug = slug
                
                self.colorName = colorName
                
                self.medias = medias
                
                self.color = color
                
            }

            public func duplicate() -> ProductVariantItemResponse {
                let dict = self.dictionary!
                let copy = ProductVariantItemResponse(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    name = try container.decode(String.self, forKey: .name)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    action = try container.decode(ProductListingAction.self, forKey: .action)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    value = try container.decode(String.self, forKey: .value)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    isAvailable = try container.decode(Bool.self, forKey: .isAvailable)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    uid = try container.decode(Int.self, forKey: .uid)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    slug = try container.decode(String.self, forKey: .slug)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    colorName = try container.decode(String.self, forKey: .colorName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    medias = try container.decode([Media].self, forKey: .medias)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    color = try container.decode(String.self, forKey: .color)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(name, forKey: .name)
                
                
                
                
                try? container.encodeIfPresent(action, forKey: .action)
                
                
                
                
                try? container.encodeIfPresent(value, forKey: .value)
                
                
                
                
                try? container.encodeIfPresent(isAvailable, forKey: .isAvailable)
                
                
                
                
                try? container.encodeIfPresent(uid, forKey: .uid)
                
                
                
                
                try? container.encodeIfPresent(slug, forKey: .slug)
                
                
                
                
                try? container.encodeIfPresent(colorName, forKey: .colorName)
                
                
                
                
                try? container.encodeIfPresent(medias, forKey: .medias)
                
                
                
                
                try? container.encodeIfPresent(color, forKey: .color)
                
                
            }
            
        }
        
        /*
            Model: ProductVariantResponse
            Used By: Catalog
        */
        class ProductVariantResponse: Codable {
            
            public var items: [ProductVariantItemResponse]?
            
            public var key: String?
            
            public var header: String?
            
            public var displayType: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case items = "items"
                
                case key = "key"
                
                case header = "header"
                
                case displayType = "display_type"
                
            }

            public init(displayType: String?, header: String?, items: [ProductVariantItemResponse]?, key: String?) {
                
                self.items = items
                
                self.key = key
                
                self.header = header
                
                self.displayType = displayType
                
            }

            public func duplicate() -> ProductVariantResponse {
                let dict = self.dictionary!
                let copy = ProductVariantResponse(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    items = try container.decode([ProductVariantItemResponse].self, forKey: .items)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    key = try container.decode(String.self, forKey: .key)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    header = try container.decode(String.self, forKey: .header)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    displayType = try container.decode(String.self, forKey: .displayType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(items, forKey: .items)
                
                
                
                
                try? container.encodeIfPresent(key, forKey: .key)
                
                
                
                
                try? container.encodeIfPresent(header, forKey: .header)
                
                
                
                
                try? container.encodeIfPresent(displayType, forKey: .displayType)
                
                
            }
            
        }
        
        /*
            Model: ProductVariantsResponse
            Used By: Catalog
        */
        class ProductVariantsResponse: Codable {
            
            public var variants: [ProductVariantResponse]?
            

            public enum CodingKeys: String, CodingKey {
                
                case variants = "variants"
                
            }

            public init(variants: [ProductVariantResponse]?) {
                
                self.variants = variants
                
            }

            public func duplicate() -> ProductVariantsResponse {
                let dict = self.dictionary!
                let copy = ProductVariantsResponse(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    variants = try container.decode([ProductVariantResponse].self, forKey: .variants)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(variants, forKey: .variants)
                
                
            }
            
        }
        
        /*
            Model: ProductStockPrice
            Used By: Catalog
        */
        class ProductStockPrice: Codable {
            
            public var marked: Double?
            
            public var currency: String?
            
            public var effective: Double?
            

            public enum CodingKeys: String, CodingKey {
                
                case marked = "marked"
                
                case currency = "currency"
                
                case effective = "effective"
                
            }

            public init(currency: String?, effective: Double?, marked: Double?) {
                
                self.marked = marked
                
                self.currency = currency
                
                self.effective = effective
                
            }

            public func duplicate() -> ProductStockPrice {
                let dict = self.dictionary!
                let copy = ProductStockPrice(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    marked = try container.decode(Double.self, forKey: .marked)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    currency = try container.decode(String.self, forKey: .currency)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    effective = try container.decode(Double.self, forKey: .effective)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(marked, forKey: .marked)
                
                
                
                
                try? container.encodeIfPresent(currency, forKey: .currency)
                
                
                
                
                try? container.encodeIfPresent(effective, forKey: .effective)
                
                
            }
            
        }
        
        /*
            Model: Seller
            Used By: Catalog
        */
        class Seller: Codable {
            
            public var name: String?
            
            public var count: Int?
            
            public var uid: Int?
            

            public enum CodingKeys: String, CodingKey {
                
                case name = "name"
                
                case count = "count"
                
                case uid = "uid"
                
            }

            public init(count: Int?, name: String?, uid: Int?) {
                
                self.name = name
                
                self.count = count
                
                self.uid = uid
                
            }

            public func duplicate() -> Seller {
                let dict = self.dictionary!
                let copy = Seller(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    name = try container.decode(String.self, forKey: .name)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    count = try container.decode(Int.self, forKey: .count)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    uid = try container.decode(Int.self, forKey: .uid)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(name, forKey: .name)
                
                
                
                
                try? container.encodeIfPresent(count, forKey: .count)
                
                
                
                
                try? container.encodeIfPresent(uid, forKey: .uid)
                
                
            }
            
        }
        
        /*
            Model: CompanyDetail
            Used By: Catalog
        */
        class CompanyDetail: Codable {
            
            public var id: Int?
            
            public var name: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case id = "id"
                
                case name = "name"
                
            }

            public init(id: Int?, name: String?) {
                
                self.id = id
                
                self.name = name
                
            }

            public func duplicate() -> CompanyDetail {
                let dict = self.dictionary!
                let copy = CompanyDetail(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    id = try container.decode(Int.self, forKey: .id)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    name = try container.decode(String.self, forKey: .name)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(id, forKey: .id)
                
                
                
                
                try? container.encodeIfPresent(name, forKey: .name)
                
                
            }
            
        }
        
        /*
            Model: StoreDetail
            Used By: Catalog
        */
        class StoreDetail: Codable {
            
            public var code: String?
            
            public var id: Int?
            
            public var city: String?
            
            public var name: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case code = "code"
                
                case id = "id"
                
                case city = "city"
                
                case name = "name"
                
            }

            public init(city: String?, code: String?, id: Int?, name: String?) {
                
                self.code = code
                
                self.id = id
                
                self.city = city
                
                self.name = name
                
            }

            public func duplicate() -> StoreDetail {
                let dict = self.dictionary!
                let copy = StoreDetail(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    code = try container.decode(String.self, forKey: .code)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    id = try container.decode(Int.self, forKey: .id)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    city = try container.decode(String.self, forKey: .city)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    name = try container.decode(String.self, forKey: .name)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(code, forKey: .code)
                
                
                
                
                try? container.encodeIfPresent(id, forKey: .id)
                
                
                
                
                try? container.encodeIfPresent(city, forKey: .city)
                
                
                
                
                try? container.encodeIfPresent(name, forKey: .name)
                
                
            }
            
        }
        
        /*
            Model: ProductStockStatusItem
            Used By: Catalog
        */
        class ProductStockStatusItem: Codable {
            
            public var itemId: Int?
            
            public var identifier: [String: Any]?
            
            public var price: ProductStockPrice?
            
            public var seller: Seller?
            
            public var quantity: Int?
            
            public var uid: String?
            
            public var company: CompanyDetail?
            
            public var store: StoreDetail?
            
            public var size: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case itemId = "item_id"
                
                case identifier = "identifier"
                
                case price = "price"
                
                case seller = "seller"
                
                case quantity = "quantity"
                
                case uid = "uid"
                
                case company = "company"
                
                case store = "store"
                
                case size = "size"
                
            }

            public init(company: CompanyDetail?, identifier: [String: Any]?, itemId: Int?, price: ProductStockPrice?, quantity: Int?, seller: Seller?, size: String?, store: StoreDetail?, uid: String?) {
                
                self.itemId = itemId
                
                self.identifier = identifier
                
                self.price = price
                
                self.seller = seller
                
                self.quantity = quantity
                
                self.uid = uid
                
                self.company = company
                
                self.store = store
                
                self.size = size
                
            }

            public func duplicate() -> ProductStockStatusItem {
                let dict = self.dictionary!
                let copy = ProductStockStatusItem(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    itemId = try container.decode(Int.self, forKey: .itemId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    identifier = try container.decode([String: Any].self, forKey: .identifier)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    price = try container.decode(ProductStockPrice.self, forKey: .price)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    seller = try container.decode(Seller.self, forKey: .seller)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    quantity = try container.decode(Int.self, forKey: .quantity)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    uid = try container.decode(String.self, forKey: .uid)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    company = try container.decode(CompanyDetail.self, forKey: .company)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    store = try container.decode(StoreDetail.self, forKey: .store)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    size = try container.decode(String.self, forKey: .size)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(itemId, forKey: .itemId)
                
                
                
                
                try? container.encodeIfPresent(identifier, forKey: .identifier)
                
                
                
                
                try? container.encodeIfPresent(price, forKey: .price)
                
                
                
                
                try? container.encodeIfPresent(seller, forKey: .seller)
                
                
                
                
                try? container.encodeIfPresent(quantity, forKey: .quantity)
                
                
                
                
                try? container.encodeIfPresent(uid, forKey: .uid)
                
                
                
                
                try? container.encodeIfPresent(company, forKey: .company)
                
                
                
                
                try? container.encodeIfPresent(store, forKey: .store)
                
                
                
                
                try? container.encodeIfPresent(size, forKey: .size)
                
                
            }
            
        }
        
        /*
            Model: ProductStockStatusResponse
            Used By: Catalog
        */
        class ProductStockStatusResponse: Codable {
            
            public var items: [ProductStockStatusItem]?
            

            public enum CodingKeys: String, CodingKey {
                
                case items = "items"
                
            }

            public init(items: [ProductStockStatusItem]?) {
                
                self.items = items
                
            }

            public func duplicate() -> ProductStockStatusResponse {
                let dict = self.dictionary!
                let copy = ProductStockStatusResponse(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    items = try container.decode([ProductStockStatusItem].self, forKey: .items)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(items, forKey: .items)
                
                
            }
            
        }
        
        /*
            Model: ProductStockPolling
            Used By: Catalog
        */
        class ProductStockPolling: Codable {
            
            public var items: [ProductStockStatusItem]?
            
            public var page: Page
            

            public enum CodingKeys: String, CodingKey {
                
                case items = "items"
                
                case page = "page"
                
            }

            public init(items: [ProductStockStatusItem]?, page: Page) {
                
                self.items = items
                
                self.page = page
                
            }

            public func duplicate() -> ProductStockPolling {
                let dict = self.dictionary!
                let copy = ProductStockPolling(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    items = try container.decode([ProductStockStatusItem].self, forKey: .items)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                page = try container.decode(Page.self, forKey: .page)
                
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(items, forKey: .items)
                
                
                
                
                try? container.encodeIfPresent(page, forKey: .page)
                
                
            }
            
        }
        
        /*
            Model: ProductSortOn
            Used By: Catalog
        */
        class ProductSortOn: Codable {
            
            public var name: String?
            
            public var isSelected: Bool?
            
            public var value: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case name = "name"
                
                case isSelected = "is_selected"
                
                case value = "value"
                
            }

            public init(isSelected: Bool?, name: String?, value: String?) {
                
                self.name = name
                
                self.isSelected = isSelected
                
                self.value = value
                
            }

            public func duplicate() -> ProductSortOn {
                let dict = self.dictionary!
                let copy = ProductSortOn(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    name = try container.decode(String.self, forKey: .name)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    isSelected = try container.decode(Bool.self, forKey: .isSelected)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    value = try container.decode(String.self, forKey: .value)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(name, forKey: .name)
                
                
                
                
                try? container.encodeIfPresent(isSelected, forKey: .isSelected)
                
                
                
                
                try? container.encodeIfPresent(value, forKey: .value)
                
                
            }
            
        }
        
        /*
            Model: ProductFiltersKey
            Used By: Catalog
        */
        class ProductFiltersKey: Codable {
            
            public var logo: String?
            
            public var display: String
            
            public var kind: String?
            
            public var name: String
            

            public enum CodingKeys: String, CodingKey {
                
                case logo = "logo"
                
                case display = "display"
                
                case kind = "kind"
                
                case name = "name"
                
            }

            public init(display: String, kind: String?, logo: String?, name: String) {
                
                self.logo = logo
                
                self.display = display
                
                self.kind = kind
                
                self.name = name
                
            }

            public func duplicate() -> ProductFiltersKey {
                let dict = self.dictionary!
                let copy = ProductFiltersKey(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    logo = try container.decode(String.self, forKey: .logo)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                display = try container.decode(String.self, forKey: .display)
                
                
                
                
                do {
                    kind = try container.decode(String.self, forKey: .kind)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                name = try container.decode(String.self, forKey: .name)
                
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(logo, forKey: .logo)
                
                
                
                
                try? container.encodeIfPresent(display, forKey: .display)
                
                
                
                
                try? container.encodeIfPresent(kind, forKey: .kind)
                
                
                
                
                try? container.encodeIfPresent(name, forKey: .name)
                
                
            }
            
        }
        
        /*
            Model: ProductFiltersValue
            Used By: Catalog
        */
        class ProductFiltersValue: Codable {
            
            public var selectedMax: Int?
            
            public var currencySymbol: String?
            
            public var value: String?
            
            public var selectedMin: Int?
            
            public var currencyCode: String?
            
            public var max: Int?
            
            public var queryFormat: String?
            
            public var displayFormat: String?
            
            public var min: Int?
            
            public var count: Int?
            
            public var display: String
            
            public var isSelected: Bool
            

            public enum CodingKeys: String, CodingKey {
                
                case selectedMax = "selected_max"
                
                case currencySymbol = "currency_symbol"
                
                case value = "value"
                
                case selectedMin = "selected_min"
                
                case currencyCode = "currency_code"
                
                case max = "max"
                
                case queryFormat = "query_format"
                
                case displayFormat = "display_format"
                
                case min = "min"
                
                case count = "count"
                
                case display = "display"
                
                case isSelected = "is_selected"
                
            }

            public init(count: Int?, currencyCode: String?, currencySymbol: String?, display: String, displayFormat: String?, isSelected: Bool, max: Int?, min: Int?, queryFormat: String?, selectedMax: Int?, selectedMin: Int?, value: String?) {
                
                self.selectedMax = selectedMax
                
                self.currencySymbol = currencySymbol
                
                self.value = value
                
                self.selectedMin = selectedMin
                
                self.currencyCode = currencyCode
                
                self.max = max
                
                self.queryFormat = queryFormat
                
                self.displayFormat = displayFormat
                
                self.min = min
                
                self.count = count
                
                self.display = display
                
                self.isSelected = isSelected
                
            }

            public func duplicate() -> ProductFiltersValue {
                let dict = self.dictionary!
                let copy = ProductFiltersValue(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    selectedMax = try container.decode(Int.self, forKey: .selectedMax)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    currencySymbol = try container.decode(String.self, forKey: .currencySymbol)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    value = try container.decode(String.self, forKey: .value)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    selectedMin = try container.decode(Int.self, forKey: .selectedMin)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    currencyCode = try container.decode(String.self, forKey: .currencyCode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    max = try container.decode(Int.self, forKey: .max)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    queryFormat = try container.decode(String.self, forKey: .queryFormat)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    displayFormat = try container.decode(String.self, forKey: .displayFormat)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    min = try container.decode(Int.self, forKey: .min)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    count = try container.decode(Int.self, forKey: .count)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                display = try container.decode(String.self, forKey: .display)
                
                
                
                
                isSelected = try container.decode(Bool.self, forKey: .isSelected)
                
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(selectedMax, forKey: .selectedMax)
                
                
                
                
                try? container.encodeIfPresent(currencySymbol, forKey: .currencySymbol)
                
                
                
                
                try? container.encodeIfPresent(value, forKey: .value)
                
                
                
                
                try? container.encodeIfPresent(selectedMin, forKey: .selectedMin)
                
                
                
                
                try? container.encodeIfPresent(currencyCode, forKey: .currencyCode)
                
                
                
                
                try? container.encodeIfPresent(max, forKey: .max)
                
                
                
                
                try? container.encodeIfPresent(queryFormat, forKey: .queryFormat)
                
                
                
                
                try? container.encodeIfPresent(displayFormat, forKey: .displayFormat)
                
                
                
                
                try? container.encodeIfPresent(min, forKey: .min)
                
                
                
                
                try? container.encodeIfPresent(count, forKey: .count)
                
                
                
                
                try? container.encodeIfPresent(display, forKey: .display)
                
                
                
                
                try? container.encodeIfPresent(isSelected, forKey: .isSelected)
                
                
            }
            
        }
        
        /*
            Model: ProductFilters
            Used By: Catalog
        */
        class ProductFilters: Codable {
            
            public var key: ProductFiltersKey
            
            public var values: [ProductFiltersValue]
            

            public enum CodingKeys: String, CodingKey {
                
                case key = "key"
                
                case values = "values"
                
            }

            public init(key: ProductFiltersKey, values: [ProductFiltersValue]) {
                
                self.key = key
                
                self.values = values
                
            }

            public func duplicate() -> ProductFilters {
                let dict = self.dictionary!
                let copy = ProductFilters(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                key = try container.decode(ProductFiltersKey.self, forKey: .key)
                
                
                
                
                values = try container.decode([ProductFiltersValue].self, forKey: .values)
                
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(key, forKey: .key)
                
                
                
                
                try? container.encodeIfPresent(values, forKey: .values)
                
                
            }
            
        }
        
        /*
            Model: ProductListingDetail
            Used By: Catalog
        */
        class ProductListingDetail: Codable {
            
            public var shortDescription: String?
            
            public var action: ProductListingAction?
            
            public var price: ProductListingPrice?
            
            public var productOnlineDate: String?
            
            public var highlights: [String]?
            
            public var groupedAttributes: [ProductDetailGroupedAttribute]?
            
            public var slug: String
            
            public var discount: String?
            
            public var medias: [Media]?
            
            public var description: String?
            
            public var type: String?
            
            public var itemType: String?
            
            public var brand: ProductBrand?
            
            public var sellable: Bool?
            
            public var color: String?
            
            public var similars: [String]?
            
            public var imageNature: String?
            
            public var teaserTag: String?
            
            public var ratingCount: Int?
            
            public var hasVariant: Bool?
            
            public var tryouts: [String]?
            
            public var itemCode: String?
            
            public var customMeta: [MetaFields]?
            
            public var name: String?
            
            public var attributes: [String: Any]?
            
            public var uid: Int?
            
            public var categories: [ProductBrand]?
            
            public var rating: Double?
            

            public enum CodingKeys: String, CodingKey {
                
                case shortDescription = "short_description"
                
                case action = "action"
                
                case price = "price"
                
                case productOnlineDate = "product_online_date"
                
                case highlights = "highlights"
                
                case groupedAttributes = "grouped_attributes"
                
                case slug = "slug"
                
                case discount = "discount"
                
                case medias = "medias"
                
                case description = "description"
                
                case type = "type"
                
                case itemType = "item_type"
                
                case brand = "brand"
                
                case sellable = "sellable"
                
                case color = "color"
                
                case similars = "similars"
                
                case imageNature = "image_nature"
                
                case teaserTag = "teaser_tag"
                
                case ratingCount = "rating_count"
                
                case hasVariant = "has_variant"
                
                case tryouts = "tryouts"
                
                case itemCode = "item_code"
                
                case customMeta = "_custom_meta"
                
                case name = "name"
                
                case attributes = "attributes"
                
                case uid = "uid"
                
                case categories = "categories"
                
                case rating = "rating"
                
            }

            public init(action: ProductListingAction?, attributes: [String: Any]?, brand: ProductBrand?, categories: [ProductBrand]?, color: String?, description: String?, discount: String?, groupedAttributes: [ProductDetailGroupedAttribute]?, hasVariant: Bool?, highlights: [String]?, imageNature: String?, itemCode: String?, itemType: String?, medias: [Media]?, name: String?, price: ProductListingPrice?, productOnlineDate: String?, rating: Double?, ratingCount: Int?, sellable: Bool?, shortDescription: String?, similars: [String]?, slug: String, teaserTag: String?, tryouts: [String]?, type: String?, uid: Int?, customMeta: [MetaFields]?) {
                
                self.shortDescription = shortDescription
                
                self.action = action
                
                self.price = price
                
                self.productOnlineDate = productOnlineDate
                
                self.highlights = highlights
                
                self.groupedAttributes = groupedAttributes
                
                self.slug = slug
                
                self.discount = discount
                
                self.medias = medias
                
                self.description = description
                
                self.type = type
                
                self.itemType = itemType
                
                self.brand = brand
                
                self.sellable = sellable
                
                self.color = color
                
                self.similars = similars
                
                self.imageNature = imageNature
                
                self.teaserTag = teaserTag
                
                self.ratingCount = ratingCount
                
                self.hasVariant = hasVariant
                
                self.tryouts = tryouts
                
                self.itemCode = itemCode
                
                self.customMeta = customMeta
                
                self.name = name
                
                self.attributes = attributes
                
                self.uid = uid
                
                self.categories = categories
                
                self.rating = rating
                
            }

            public func duplicate() -> ProductListingDetail {
                let dict = self.dictionary!
                let copy = ProductListingDetail(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    shortDescription = try container.decode(String.self, forKey: .shortDescription)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    action = try container.decode(ProductListingAction.self, forKey: .action)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    price = try container.decode(ProductListingPrice.self, forKey: .price)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    productOnlineDate = try container.decode(String.self, forKey: .productOnlineDate)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    highlights = try container.decode([String].self, forKey: .highlights)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    groupedAttributes = try container.decode([ProductDetailGroupedAttribute].self, forKey: .groupedAttributes)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                slug = try container.decode(String.self, forKey: .slug)
                
                
                
                
                do {
                    discount = try container.decode(String.self, forKey: .discount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    medias = try container.decode([Media].self, forKey: .medias)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    description = try container.decode(String.self, forKey: .description)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    type = try container.decode(String.self, forKey: .type)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    itemType = try container.decode(String.self, forKey: .itemType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    brand = try container.decode(ProductBrand.self, forKey: .brand)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    sellable = try container.decode(Bool.self, forKey: .sellable)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    color = try container.decode(String.self, forKey: .color)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    similars = try container.decode([String].self, forKey: .similars)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    imageNature = try container.decode(String.self, forKey: .imageNature)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    teaserTag = try container.decode(String.self, forKey: .teaserTag)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    ratingCount = try container.decode(Int.self, forKey: .ratingCount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    hasVariant = try container.decode(Bool.self, forKey: .hasVariant)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    tryouts = try container.decode([String].self, forKey: .tryouts)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    itemCode = try container.decode(String.self, forKey: .itemCode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    customMeta = try container.decode([MetaFields].self, forKey: .customMeta)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    name = try container.decode(String.self, forKey: .name)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    attributes = try container.decode([String: Any].self, forKey: .attributes)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    uid = try container.decode(Int.self, forKey: .uid)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    categories = try container.decode([ProductBrand].self, forKey: .categories)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    rating = try container.decode(Double.self, forKey: .rating)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(shortDescription, forKey: .shortDescription)
                
                
                
                
                try? container.encodeIfPresent(action, forKey: .action)
                
                
                
                
                try? container.encodeIfPresent(price, forKey: .price)
                
                
                
                
                try? container.encodeIfPresent(productOnlineDate, forKey: .productOnlineDate)
                
                
                
                
                try? container.encodeIfPresent(highlights, forKey: .highlights)
                
                
                
                
                try? container.encodeIfPresent(groupedAttributes, forKey: .groupedAttributes)
                
                
                
                
                try? container.encodeIfPresent(slug, forKey: .slug)
                
                
                
                
                try? container.encodeIfPresent(discount, forKey: .discount)
                
                
                
                
                try? container.encodeIfPresent(medias, forKey: .medias)
                
                
                
                
                try? container.encodeIfPresent(description, forKey: .description)
                
                
                
                
                try? container.encodeIfPresent(type, forKey: .type)
                
                
                
                
                try? container.encodeIfPresent(itemType, forKey: .itemType)
                
                
                
                
                try? container.encodeIfPresent(brand, forKey: .brand)
                
                
                
                
                try? container.encodeIfPresent(sellable, forKey: .sellable)
                
                
                
                
                try? container.encodeIfPresent(color, forKey: .color)
                
                
                
                
                try? container.encodeIfPresent(similars, forKey: .similars)
                
                
                
                
                try? container.encodeIfPresent(imageNature, forKey: .imageNature)
                
                
                
                
                try? container.encodeIfPresent(teaserTag, forKey: .teaserTag)
                
                
                
                
                try? container.encodeIfPresent(ratingCount, forKey: .ratingCount)
                
                
                
                
                try? container.encodeIfPresent(hasVariant, forKey: .hasVariant)
                
                
                
                
                try? container.encodeIfPresent(tryouts, forKey: .tryouts)
                
                
                
                
                try? container.encodeIfPresent(itemCode, forKey: .itemCode)
                
                
                
                
                try? container.encodeIfPresent(customMeta, forKey: .customMeta)
                
                
                
                
                try? container.encodeIfPresent(name, forKey: .name)
                
                
                
                
                try? container.encodeIfPresent(attributes, forKey: .attributes)
                
                
                
                
                try? container.encodeIfPresent(uid, forKey: .uid)
                
                
                
                
                try? container.encodeIfPresent(categories, forKey: .categories)
                
                
                
                
                try? container.encodeIfPresent(rating, forKey: .rating)
                
                
            }
            
        }
        
        /*
            Model: ProductListingResponse
            Used By: Catalog
        */
        class ProductListingResponse: Codable {
            
            public var sortOn: [ProductSortOn]?
            
            public var filters: [ProductFilters]?
            
            public var items: [ProductListingDetail]?
            
            public var page: Page
            

            public enum CodingKeys: String, CodingKey {
                
                case sortOn = "sort_on"
                
                case filters = "filters"
                
                case items = "items"
                
                case page = "page"
                
            }

            public init(filters: [ProductFilters]?, items: [ProductListingDetail]?, page: Page, sortOn: [ProductSortOn]?) {
                
                self.sortOn = sortOn
                
                self.filters = filters
                
                self.items = items
                
                self.page = page
                
            }

            public func duplicate() -> ProductListingResponse {
                let dict = self.dictionary!
                let copy = ProductListingResponse(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    sortOn = try container.decode([ProductSortOn].self, forKey: .sortOn)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    filters = try container.decode([ProductFilters].self, forKey: .filters)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    items = try container.decode([ProductListingDetail].self, forKey: .items)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                page = try container.decode(Page.self, forKey: .page)
                
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(sortOn, forKey: .sortOn)
                
                
                
                
                try? container.encodeIfPresent(filters, forKey: .filters)
                
                
                
                
                try? container.encodeIfPresent(items, forKey: .items)
                
                
                
                
                try? container.encodeIfPresent(page, forKey: .page)
                
                
            }
            
        }
        
        /*
            Model: ImageUrls
            Used By: Catalog
        */
        class ImageUrls: Codable {
            
            public var landscape: Media?
            
            public var portrait: Media?
            

            public enum CodingKeys: String, CodingKey {
                
                case landscape = "landscape"
                
                case portrait = "portrait"
                
            }

            public init(landscape: Media?, portrait: Media?) {
                
                self.landscape = landscape
                
                self.portrait = portrait
                
            }

            public func duplicate() -> ImageUrls {
                let dict = self.dictionary!
                let copy = ImageUrls(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    landscape = try container.decode(Media.self, forKey: .landscape)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    portrait = try container.decode(Media.self, forKey: .portrait)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(landscape, forKey: .landscape)
                
                
                
                
                try? container.encodeIfPresent(portrait, forKey: .portrait)
                
                
            }
            
        }
        
        /*
            Model: BrandItem
            Used By: Catalog
        */
        class BrandItem: Codable {
            
            public var name: String?
            
            public var action: ProductListingAction?
            
            public var logo: Media?
            
            public var banners: ImageUrls?
            
            public var departments: [String]?
            
            public var uid: Int?
            
            public var discount: String?
            
            public var slug: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case name = "name"
                
                case action = "action"
                
                case logo = "logo"
                
                case banners = "banners"
                
                case departments = "departments"
                
                case uid = "uid"
                
                case discount = "discount"
                
                case slug = "slug"
                
            }

            public init(action: ProductListingAction?, banners: ImageUrls?, departments: [String]?, discount: String?, logo: Media?, name: String?, slug: String?, uid: Int?) {
                
                self.name = name
                
                self.action = action
                
                self.logo = logo
                
                self.banners = banners
                
                self.departments = departments
                
                self.uid = uid
                
                self.discount = discount
                
                self.slug = slug
                
            }

            public func duplicate() -> BrandItem {
                let dict = self.dictionary!
                let copy = BrandItem(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    name = try container.decode(String.self, forKey: .name)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    action = try container.decode(ProductListingAction.self, forKey: .action)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    logo = try container.decode(Media.self, forKey: .logo)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    banners = try container.decode(ImageUrls.self, forKey: .banners)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    departments = try container.decode([String].self, forKey: .departments)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    uid = try container.decode(Int.self, forKey: .uid)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    discount = try container.decode(String.self, forKey: .discount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    slug = try container.decode(String.self, forKey: .slug)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(name, forKey: .name)
                
                
                
                
                try? container.encodeIfPresent(action, forKey: .action)
                
                
                
                
                try? container.encodeIfPresent(logo, forKey: .logo)
                
                
                
                
                try? container.encodeIfPresent(banners, forKey: .banners)
                
                
                
                
                try? container.encodeIfPresent(departments, forKey: .departments)
                
                
                
                
                try? container.encodeIfPresent(uid, forKey: .uid)
                
                
                
                
                try? container.encodeIfPresent(discount, forKey: .discount)
                
                
                
                
                try? container.encodeIfPresent(slug, forKey: .slug)
                
                
            }
            
        }
        
        /*
            Model: BrandListingResponse
            Used By: Catalog
        */
        class BrandListingResponse: Codable {
            
            public var items: [BrandItem]?
            
            public var page: Page
            

            public enum CodingKeys: String, CodingKey {
                
                case items = "items"
                
                case page = "page"
                
            }

            public init(items: [BrandItem]?, page: Page) {
                
                self.items = items
                
                self.page = page
                
            }

            public func duplicate() -> BrandListingResponse {
                let dict = self.dictionary!
                let copy = BrandListingResponse(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    items = try container.decode([BrandItem].self, forKey: .items)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                page = try container.decode(Page.self, forKey: .page)
                
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(items, forKey: .items)
                
                
                
                
                try? container.encodeIfPresent(page, forKey: .page)
                
                
            }
            
        }
        
        /*
            Model: BrandDetailResponse
            Used By: Catalog
        */
        class BrandDetailResponse: Codable {
            
            public var banners: ImageUrls?
            
            public var name: String?
            
            public var uid: Int?
            
            public var logo: Media?
            

            public enum CodingKeys: String, CodingKey {
                
                case banners = "banners"
                
                case name = "name"
                
                case uid = "uid"
                
                case logo = "logo"
                
            }

            public init(banners: ImageUrls?, logo: Media?, name: String?, uid: Int?) {
                
                self.banners = banners
                
                self.name = name
                
                self.uid = uid
                
                self.logo = logo
                
            }

            public func duplicate() -> BrandDetailResponse {
                let dict = self.dictionary!
                let copy = BrandDetailResponse(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    banners = try container.decode(ImageUrls.self, forKey: .banners)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    name = try container.decode(String.self, forKey: .name)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    uid = try container.decode(Int.self, forKey: .uid)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    logo = try container.decode(Media.self, forKey: .logo)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(banners, forKey: .banners)
                
                
                
                
                try? container.encodeIfPresent(name, forKey: .name)
                
                
                
                
                try? container.encodeIfPresent(uid, forKey: .uid)
                
                
                
                
                try? container.encodeIfPresent(logo, forKey: .logo)
                
                
            }
            
        }
        
        /*
            Model: DepartmentIdentifier
            Used By: Catalog
        */
        class DepartmentIdentifier: Codable {
            
            public var slug: String?
            
            public var uid: Int?
            

            public enum CodingKeys: String, CodingKey {
                
                case slug = "slug"
                
                case uid = "uid"
                
            }

            public init(slug: String?, uid: Int?) {
                
                self.slug = slug
                
                self.uid = uid
                
            }

            public func duplicate() -> DepartmentIdentifier {
                let dict = self.dictionary!
                let copy = DepartmentIdentifier(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    slug = try container.decode(String.self, forKey: .slug)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    uid = try container.decode(Int.self, forKey: .uid)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(slug, forKey: .slug)
                
                
                
                
                try? container.encodeIfPresent(uid, forKey: .uid)
                
                
            }
            
        }
        
        /*
            Model: ThirdLevelChild
            Used By: Catalog
        */
        class ThirdLevelChild: Codable {
            
            public var customJson: [String: Any]?
            
            public var name: String?
            
            public var action: ProductListingAction?
            
            public var childs: [[String: Any]]?
            
            public var banners: ImageUrls?
            
            public var uid: Int?
            
            public var slug: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case customJson = "_custom_json"
                
                case name = "name"
                
                case action = "action"
                
                case childs = "childs"
                
                case banners = "banners"
                
                case uid = "uid"
                
                case slug = "slug"
                
            }

            public init(action: ProductListingAction?, banners: ImageUrls?, childs: [[String: Any]]?, name: String?, slug: String?, uid: Int?, customJson: [String: Any]?) {
                
                self.customJson = customJson
                
                self.name = name
                
                self.action = action
                
                self.childs = childs
                
                self.banners = banners
                
                self.uid = uid
                
                self.slug = slug
                
            }

            public func duplicate() -> ThirdLevelChild {
                let dict = self.dictionary!
                let copy = ThirdLevelChild(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    customJson = try container.decode([String: Any].self, forKey: .customJson)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    name = try container.decode(String.self, forKey: .name)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    action = try container.decode(ProductListingAction.self, forKey: .action)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    childs = try container.decode([[String: Any]].self, forKey: .childs)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    banners = try container.decode(ImageUrls.self, forKey: .banners)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    uid = try container.decode(Int.self, forKey: .uid)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    slug = try container.decode(String.self, forKey: .slug)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(customJson, forKey: .customJson)
                
                
                
                
                try? container.encodeIfPresent(name, forKey: .name)
                
                
                
                
                try? container.encodeIfPresent(action, forKey: .action)
                
                
                
                
                try? container.encodeIfPresent(childs, forKey: .childs)
                
                
                
                
                try? container.encodeIfPresent(banners, forKey: .banners)
                
                
                
                
                try? container.encodeIfPresent(uid, forKey: .uid)
                
                
                
                
                try? container.encodeIfPresent(slug, forKey: .slug)
                
                
            }
            
        }
        
        /*
            Model: SecondLevelChild
            Used By: Catalog
        */
        class SecondLevelChild: Codable {
            
            public var customJson: [String: Any]?
            
            public var name: String?
            
            public var action: ProductListingAction?
            
            public var childs: [ThirdLevelChild]?
            
            public var banners: ImageUrls?
            
            public var uid: Int?
            
            public var slug: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case customJson = "_custom_json"
                
                case name = "name"
                
                case action = "action"
                
                case childs = "childs"
                
                case banners = "banners"
                
                case uid = "uid"
                
                case slug = "slug"
                
            }

            public init(action: ProductListingAction?, banners: ImageUrls?, childs: [ThirdLevelChild]?, name: String?, slug: String?, uid: Int?, customJson: [String: Any]?) {
                
                self.customJson = customJson
                
                self.name = name
                
                self.action = action
                
                self.childs = childs
                
                self.banners = banners
                
                self.uid = uid
                
                self.slug = slug
                
            }

            public func duplicate() -> SecondLevelChild {
                let dict = self.dictionary!
                let copy = SecondLevelChild(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    customJson = try container.decode([String: Any].self, forKey: .customJson)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    name = try container.decode(String.self, forKey: .name)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    action = try container.decode(ProductListingAction.self, forKey: .action)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    childs = try container.decode([ThirdLevelChild].self, forKey: .childs)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    banners = try container.decode(ImageUrls.self, forKey: .banners)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    uid = try container.decode(Int.self, forKey: .uid)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    slug = try container.decode(String.self, forKey: .slug)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(customJson, forKey: .customJson)
                
                
                
                
                try? container.encodeIfPresent(name, forKey: .name)
                
                
                
                
                try? container.encodeIfPresent(action, forKey: .action)
                
                
                
                
                try? container.encodeIfPresent(childs, forKey: .childs)
                
                
                
                
                try? container.encodeIfPresent(banners, forKey: .banners)
                
                
                
                
                try? container.encodeIfPresent(uid, forKey: .uid)
                
                
                
                
                try? container.encodeIfPresent(slug, forKey: .slug)
                
                
            }
            
        }
        
        /*
            Model: Child
            Used By: Catalog
        */
        class Child: Codable {
            
            public var customJson: [String: Any]?
            
            public var name: String?
            
            public var action: ProductListingAction?
            
            public var childs: [SecondLevelChild]?
            
            public var banners: ImageUrls?
            
            public var uid: Int?
            
            public var slug: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case customJson = "_custom_json"
                
                case name = "name"
                
                case action = "action"
                
                case childs = "childs"
                
                case banners = "banners"
                
                case uid = "uid"
                
                case slug = "slug"
                
            }

            public init(action: ProductListingAction?, banners: ImageUrls?, childs: [SecondLevelChild]?, name: String?, slug: String?, uid: Int?, customJson: [String: Any]?) {
                
                self.customJson = customJson
                
                self.name = name
                
                self.action = action
                
                self.childs = childs
                
                self.banners = banners
                
                self.uid = uid
                
                self.slug = slug
                
            }

            public func duplicate() -> Child {
                let dict = self.dictionary!
                let copy = Child(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    customJson = try container.decode([String: Any].self, forKey: .customJson)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    name = try container.decode(String.self, forKey: .name)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    action = try container.decode(ProductListingAction.self, forKey: .action)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    childs = try container.decode([SecondLevelChild].self, forKey: .childs)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    banners = try container.decode(ImageUrls.self, forKey: .banners)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    uid = try container.decode(Int.self, forKey: .uid)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    slug = try container.decode(String.self, forKey: .slug)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(customJson, forKey: .customJson)
                
                
                
                
                try? container.encodeIfPresent(name, forKey: .name)
                
                
                
                
                try? container.encodeIfPresent(action, forKey: .action)
                
                
                
                
                try? container.encodeIfPresent(childs, forKey: .childs)
                
                
                
                
                try? container.encodeIfPresent(banners, forKey: .banners)
                
                
                
                
                try? container.encodeIfPresent(uid, forKey: .uid)
                
                
                
                
                try? container.encodeIfPresent(slug, forKey: .slug)
                
                
            }
            
        }
        
        /*
            Model: CategoryItems
            Used By: Catalog
        */
        class CategoryItems: Codable {
            
            public var name: String?
            
            public var action: ProductListingAction?
            
            public var childs: [Child]?
            
            public var banners: ImageUrls?
            
            public var uid: Int?
            
            public var slug: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case name = "name"
                
                case action = "action"
                
                case childs = "childs"
                
                case banners = "banners"
                
                case uid = "uid"
                
                case slug = "slug"
                
            }

            public init(action: ProductListingAction?, banners: ImageUrls?, childs: [Child]?, name: String?, slug: String?, uid: Int?) {
                
                self.name = name
                
                self.action = action
                
                self.childs = childs
                
                self.banners = banners
                
                self.uid = uid
                
                self.slug = slug
                
            }

            public func duplicate() -> CategoryItems {
                let dict = self.dictionary!
                let copy = CategoryItems(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    name = try container.decode(String.self, forKey: .name)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    action = try container.decode(ProductListingAction.self, forKey: .action)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    childs = try container.decode([Child].self, forKey: .childs)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    banners = try container.decode(ImageUrls.self, forKey: .banners)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    uid = try container.decode(Int.self, forKey: .uid)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    slug = try container.decode(String.self, forKey: .slug)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(name, forKey: .name)
                
                
                
                
                try? container.encodeIfPresent(action, forKey: .action)
                
                
                
                
                try? container.encodeIfPresent(childs, forKey: .childs)
                
                
                
                
                try? container.encodeIfPresent(banners, forKey: .banners)
                
                
                
                
                try? container.encodeIfPresent(uid, forKey: .uid)
                
                
                
                
                try? container.encodeIfPresent(slug, forKey: .slug)
                
                
            }
            
        }
        
        /*
            Model: DepartmentCategoryTree
            Used By: Catalog
        */
        class DepartmentCategoryTree: Codable {
            
            public var department: String?
            
            public var items: [CategoryItems]?
            

            public enum CodingKeys: String, CodingKey {
                
                case department = "department"
                
                case items = "items"
                
            }

            public init(department: String?, items: [CategoryItems]?) {
                
                self.department = department
                
                self.items = items
                
            }

            public func duplicate() -> DepartmentCategoryTree {
                let dict = self.dictionary!
                let copy = DepartmentCategoryTree(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    department = try container.decode(String.self, forKey: .department)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    items = try container.decode([CategoryItems].self, forKey: .items)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(department, forKey: .department)
                
                
                
                
                try? container.encodeIfPresent(items, forKey: .items)
                
                
            }
            
        }
        
        /*
            Model: CategoryListingResponse
            Used By: Catalog
        */
        class CategoryListingResponse: Codable {
            
            public var departments: [DepartmentIdentifier]?
            
            public var data: [DepartmentCategoryTree]?
            

            public enum CodingKeys: String, CodingKey {
                
                case departments = "departments"
                
                case data = "data"
                
            }

            public init(data: [DepartmentCategoryTree]?, departments: [DepartmentIdentifier]?) {
                
                self.departments = departments
                
                self.data = data
                
            }

            public func duplicate() -> CategoryListingResponse {
                let dict = self.dictionary!
                let copy = CategoryListingResponse(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    departments = try container.decode([DepartmentIdentifier].self, forKey: .departments)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    data = try container.decode([DepartmentCategoryTree].self, forKey: .data)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(departments, forKey: .departments)
                
                
                
                
                try? container.encodeIfPresent(data, forKey: .data)
                
                
            }
            
        }
        
        /*
            Model: CategoryMetaResponse
            Used By: Catalog
        */
        class CategoryMetaResponse: Codable {
            
            public var banners: ImageUrls?
            
            public var name: String?
            
            public var uid: Int?
            
            public var logo: Media?
            

            public enum CodingKeys: String, CodingKey {
                
                case banners = "banners"
                
                case name = "name"
                
                case uid = "uid"
                
                case logo = "logo"
                
            }

            public init(banners: ImageUrls?, logo: Media?, name: String?, uid: Int?) {
                
                self.banners = banners
                
                self.name = name
                
                self.uid = uid
                
                self.logo = logo
                
            }

            public func duplicate() -> CategoryMetaResponse {
                let dict = self.dictionary!
                let copy = CategoryMetaResponse(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    banners = try container.decode(ImageUrls.self, forKey: .banners)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    name = try container.decode(String.self, forKey: .name)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    uid = try container.decode(Int.self, forKey: .uid)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    logo = try container.decode(Media.self, forKey: .logo)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(banners, forKey: .banners)
                
                
                
                
                try? container.encodeIfPresent(name, forKey: .name)
                
                
                
                
                try? container.encodeIfPresent(uid, forKey: .uid)
                
                
                
                
                try? container.encodeIfPresent(logo, forKey: .logo)
                
                
            }
            
        }
        
        /*
            Model: HomeListingResponse
            Used By: Catalog
        */
        class HomeListingResponse: Codable {
            
            public var message: String?
            
            public var items: [ProductListingDetail]?
            
            public var page: Page
            

            public enum CodingKeys: String, CodingKey {
                
                case message = "message"
                
                case items = "items"
                
                case page = "page"
                
            }

            public init(items: [ProductListingDetail]?, message: String?, page: Page) {
                
                self.message = message
                
                self.items = items
                
                self.page = page
                
            }

            public func duplicate() -> HomeListingResponse {
                let dict = self.dictionary!
                let copy = HomeListingResponse(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    message = try container.decode(String.self, forKey: .message)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    items = try container.decode([ProductListingDetail].self, forKey: .items)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                page = try container.decode(Page.self, forKey: .page)
                
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(message, forKey: .message)
                
                
                
                
                try? container.encodeIfPresent(items, forKey: .items)
                
                
                
                
                try? container.encodeIfPresent(page, forKey: .page)
                
                
            }
            
        }
        
        /*
            Model: Department
            Used By: Catalog
        */
        class Department: Codable {
            
            public var name: String?
            
            public var logo: Media?
            
            public var uid: Int?
            
            public var slug: String?
            
            public var priorityOrder: Int?
            

            public enum CodingKeys: String, CodingKey {
                
                case name = "name"
                
                case logo = "logo"
                
                case uid = "uid"
                
                case slug = "slug"
                
                case priorityOrder = "priority_order"
                
            }

            public init(logo: Media?, name: String?, priorityOrder: Int?, slug: String?, uid: Int?) {
                
                self.name = name
                
                self.logo = logo
                
                self.uid = uid
                
                self.slug = slug
                
                self.priorityOrder = priorityOrder
                
            }

            public func duplicate() -> Department {
                let dict = self.dictionary!
                let copy = Department(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    name = try container.decode(String.self, forKey: .name)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    logo = try container.decode(Media.self, forKey: .logo)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    uid = try container.decode(Int.self, forKey: .uid)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    slug = try container.decode(String.self, forKey: .slug)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    priorityOrder = try container.decode(Int.self, forKey: .priorityOrder)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(name, forKey: .name)
                
                
                
                
                try? container.encodeIfPresent(logo, forKey: .logo)
                
                
                
                
                try? container.encodeIfPresent(uid, forKey: .uid)
                
                
                
                
                try? container.encodeIfPresent(slug, forKey: .slug)
                
                
                
                
                try? container.encodeIfPresent(priorityOrder, forKey: .priorityOrder)
                
                
            }
            
        }
        
        /*
            Model: DepartmentResponse
            Used By: Catalog
        */
        class DepartmentResponse: Codable {
            
            public var items: [Department]?
            

            public enum CodingKeys: String, CodingKey {
                
                case items = "items"
                
            }

            public init(items: [Department]?) {
                
                self.items = items
                
            }

            public func duplicate() -> DepartmentResponse {
                let dict = self.dictionary!
                let copy = DepartmentResponse(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    items = try container.decode([Department].self, forKey: .items)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(items, forKey: .items)
                
                
            }
            
        }
        
        /*
            Model: AutocompleteItem
            Used By: Catalog
        */
        class AutocompleteItem: Codable {
            
            public var type: String?
            
            public var display: String?
            
            public var action: ProductListingAction?
            
            public var logo: Media?
            

            public enum CodingKeys: String, CodingKey {
                
                case type = "type"
                
                case display = "display"
                
                case action = "action"
                
                case logo = "logo"
                
            }

            public init(action: ProductListingAction?, display: String?, logo: Media?, type: String?) {
                
                self.type = type
                
                self.display = display
                
                self.action = action
                
                self.logo = logo
                
            }

            public func duplicate() -> AutocompleteItem {
                let dict = self.dictionary!
                let copy = AutocompleteItem(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    type = try container.decode(String.self, forKey: .type)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    display = try container.decode(String.self, forKey: .display)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    action = try container.decode(ProductListingAction.self, forKey: .action)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    logo = try container.decode(Media.self, forKey: .logo)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(type, forKey: .type)
                
                
                
                
                try? container.encodeIfPresent(display, forKey: .display)
                
                
                
                
                try? container.encodeIfPresent(action, forKey: .action)
                
                
                
                
                try? container.encodeIfPresent(logo, forKey: .logo)
                
                
            }
            
        }
        
        /*
            Model: AutoCompleteResponse
            Used By: Catalog
        */
        class AutoCompleteResponse: Codable {
            
            public var items: [AutocompleteItem]?
            

            public enum CodingKeys: String, CodingKey {
                
                case items = "items"
                
            }

            public init(items: [AutocompleteItem]?) {
                
                self.items = items
                
            }

            public func duplicate() -> AutoCompleteResponse {
                let dict = self.dictionary!
                let copy = AutoCompleteResponse(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    items = try container.decode([AutocompleteItem].self, forKey: .items)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(items, forKey: .items)
                
                
            }
            
        }
        
        /*
            Model: CollectionListingFilterTag
            Used By: Catalog
        */
        class CollectionListingFilterTag: Codable {
            
            public var name: String?
            
            public var display: String?
            
            public var isSelected: Bool?
            

            public enum CodingKeys: String, CodingKey {
                
                case name = "name"
                
                case display = "display"
                
                case isSelected = "is_selected"
                
            }

            public init(display: String?, isSelected: Bool?, name: String?) {
                
                self.name = name
                
                self.display = display
                
                self.isSelected = isSelected
                
            }

            public func duplicate() -> CollectionListingFilterTag {
                let dict = self.dictionary!
                let copy = CollectionListingFilterTag(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    name = try container.decode(String.self, forKey: .name)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    display = try container.decode(String.self, forKey: .display)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    isSelected = try container.decode(Bool.self, forKey: .isSelected)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(name, forKey: .name)
                
                
                
                
                try? container.encodeIfPresent(display, forKey: .display)
                
                
                
                
                try? container.encodeIfPresent(isSelected, forKey: .isSelected)
                
                
            }
            
        }
        
        /*
            Model: CollectionListingFilterType
            Used By: Catalog
        */
        class CollectionListingFilterType: Codable {
            
            public var name: String?
            
            public var display: String?
            
            public var isSelected: Bool?
            

            public enum CodingKeys: String, CodingKey {
                
                case name = "name"
                
                case display = "display"
                
                case isSelected = "is_selected"
                
            }

            public init(display: String?, isSelected: Bool?, name: String?) {
                
                self.name = name
                
                self.display = display
                
                self.isSelected = isSelected
                
            }

            public func duplicate() -> CollectionListingFilterType {
                let dict = self.dictionary!
                let copy = CollectionListingFilterType(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    name = try container.decode(String.self, forKey: .name)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    display = try container.decode(String.self, forKey: .display)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    isSelected = try container.decode(Bool.self, forKey: .isSelected)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(name, forKey: .name)
                
                
                
                
                try? container.encodeIfPresent(display, forKey: .display)
                
                
                
                
                try? container.encodeIfPresent(isSelected, forKey: .isSelected)
                
                
            }
            
        }
        
        /*
            Model: CollectionListingFilter
            Used By: Catalog
        */
        class CollectionListingFilter: Codable {
            
            public var tags: [CollectionListingFilterTag]?
            
            public var type: [CollectionListingFilterType]?
            

            public enum CodingKeys: String, CodingKey {
                
                case tags = "tags"
                
                case type = "type"
                
            }

            public init(tags: [CollectionListingFilterTag]?, type: [CollectionListingFilterType]?) {
                
                self.tags = tags
                
                self.type = type
                
            }

            public func duplicate() -> CollectionListingFilter {
                let dict = self.dictionary!
                let copy = CollectionListingFilter(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    tags = try container.decode([CollectionListingFilterTag].self, forKey: .tags)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    type = try container.decode([CollectionListingFilterType].self, forKey: .type)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(tags, forKey: .tags)
                
                
                
                
                try? container.encodeIfPresent(type, forKey: .type)
                
                
            }
            
        }
        
        /*
            Model: GetCollectionDetailNest
            Used By: Catalog
        */
        class GetCollectionDetailNest: Codable {
            
            public var action: ProductListingAction?
            
            public var banners: ImageUrls?
            
            public var isActive: Bool?
            
            public var badge: [String: Any]?
            
            public var slug: String?
            
            public var description: String?
            
            public var appId: String?
            
            public var type: String?
            
            public var meta: [String: Any]?
            
            public var logo: Media?
            
            public var allowSort: Bool?
            
            public var allowFacets: Bool?
            
            public var query: [String: Any]?
            
            public var schedule: [String: Any]?
            
            public var cron: [String: Any]?
            
            public var visibleFacetsKeys: [String]?
            
            public var name: String?
            
            public var tag: [String]?
            
            public var uid: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case action = "action"
                
                case banners = "banners"
                
                case isActive = "is_active"
                
                case badge = "badge"
                
                case slug = "slug"
                
                case description = "description"
                
                case appId = "app_id"
                
                case type = "type"
                
                case meta = "meta"
                
                case logo = "logo"
                
                case allowSort = "allow_sort"
                
                case allowFacets = "allow_facets"
                
                case query = "query"
                
                case schedule = "_schedule"
                
                case cron = "cron"
                
                case visibleFacetsKeys = "visible_facets_keys"
                
                case name = "name"
                
                case tag = "tag"
                
                case uid = "uid"
                
            }

            public init(action: ProductListingAction?, allowFacets: Bool?, allowSort: Bool?, appId: String?, badge: [String: Any]?, banners: ImageUrls?, cron: [String: Any]?, description: String?, isActive: Bool?, logo: Media?, meta: [String: Any]?, name: String?, query: [String: Any]?, slug: String?, tag: [String]?, type: String?, uid: String?, visibleFacetsKeys: [String]?, schedule: [String: Any]?) {
                
                self.action = action
                
                self.banners = banners
                
                self.isActive = isActive
                
                self.badge = badge
                
                self.slug = slug
                
                self.description = description
                
                self.appId = appId
                
                self.type = type
                
                self.meta = meta
                
                self.logo = logo
                
                self.allowSort = allowSort
                
                self.allowFacets = allowFacets
                
                self.query = query
                
                self.schedule = schedule
                
                self.cron = cron
                
                self.visibleFacetsKeys = visibleFacetsKeys
                
                self.name = name
                
                self.tag = tag
                
                self.uid = uid
                
            }

            public func duplicate() -> GetCollectionDetailNest {
                let dict = self.dictionary!
                let copy = GetCollectionDetailNest(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    action = try container.decode(ProductListingAction.self, forKey: .action)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    banners = try container.decode(ImageUrls.self, forKey: .banners)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    isActive = try container.decode(Bool.self, forKey: .isActive)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    badge = try container.decode([String: Any].self, forKey: .badge)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    slug = try container.decode(String.self, forKey: .slug)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    description = try container.decode(String.self, forKey: .description)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    appId = try container.decode(String.self, forKey: .appId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    type = try container.decode(String.self, forKey: .type)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    meta = try container.decode([String: Any].self, forKey: .meta)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    logo = try container.decode(Media.self, forKey: .logo)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    allowSort = try container.decode(Bool.self, forKey: .allowSort)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    allowFacets = try container.decode(Bool.self, forKey: .allowFacets)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    query = try container.decode([String: Any].self, forKey: .query)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    schedule = try container.decode([String: Any].self, forKey: .schedule)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    cron = try container.decode([String: Any].self, forKey: .cron)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    visibleFacetsKeys = try container.decode([String].self, forKey: .visibleFacetsKeys)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    name = try container.decode(String.self, forKey: .name)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    tag = try container.decode([String].self, forKey: .tag)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    uid = try container.decode(String.self, forKey: .uid)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(action, forKey: .action)
                
                
                
                
                try? container.encodeIfPresent(banners, forKey: .banners)
                
                
                
                
                try? container.encodeIfPresent(isActive, forKey: .isActive)
                
                
                
                
                try? container.encodeIfPresent(badge, forKey: .badge)
                
                
                
                
                try? container.encodeIfPresent(slug, forKey: .slug)
                
                
                
                
                try? container.encodeIfPresent(description, forKey: .description)
                
                
                
                
                try? container.encodeIfPresent(appId, forKey: .appId)
                
                
                
                
                try? container.encodeIfPresent(type, forKey: .type)
                
                
                
                
                try? container.encodeIfPresent(meta, forKey: .meta)
                
                
                
                
                try? container.encodeIfPresent(logo, forKey: .logo)
                
                
                
                
                try? container.encodeIfPresent(allowSort, forKey: .allowSort)
                
                
                
                
                try? container.encodeIfPresent(allowFacets, forKey: .allowFacets)
                
                
                
                
                try? container.encodeIfPresent(query, forKey: .query)
                
                
                
                
                try? container.encodeIfPresent(schedule, forKey: .schedule)
                
                
                
                
                try? container.encodeIfPresent(cron, forKey: .cron)
                
                
                
                
                try? container.encodeIfPresent(visibleFacetsKeys, forKey: .visibleFacetsKeys)
                
                
                
                
                try? container.encodeIfPresent(name, forKey: .name)
                
                
                
                
                try? container.encodeIfPresent(tag, forKey: .tag)
                
                
                
                
                try? container.encodeIfPresent(uid, forKey: .uid)
                
                
            }
            
        }
        
        /*
            Model: GetCollectionListingResponse
            Used By: Catalog
        */
        class GetCollectionListingResponse: Codable {
            
            public var filters: CollectionListingFilter?
            
            public var items: [GetCollectionDetailNest]?
            
            public var page: Page
            

            public enum CodingKeys: String, CodingKey {
                
                case filters = "filters"
                
                case items = "items"
                
                case page = "page"
                
            }

            public init(filters: CollectionListingFilter?, items: [GetCollectionDetailNest]?, page: Page) {
                
                self.filters = filters
                
                self.items = items
                
                self.page = page
                
            }

            public func duplicate() -> GetCollectionListingResponse {
                let dict = self.dictionary!
                let copy = GetCollectionListingResponse(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    filters = try container.decode(CollectionListingFilter.self, forKey: .filters)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    items = try container.decode([GetCollectionDetailNest].self, forKey: .items)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                page = try container.decode(Page.self, forKey: .page)
                
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(filters, forKey: .filters)
                
                
                
                
                try? container.encodeIfPresent(items, forKey: .items)
                
                
                
                
                try? container.encodeIfPresent(page, forKey: .page)
                
                
            }
            
        }
        
        /*
            Model: CollectionDetailResponse
            Used By: Catalog
        */
        class CollectionDetailResponse: Codable {
            
            public var name: String?
            
            public var type: String?
            
            public var meta: [String: Any]?
            
            public var logo: Media?
            
            public var banners: ImageUrls?
            
            public var tag: [String]?
            
            public var allowFacets: Bool?
            
            public var query: [String: Any]?
            
            public var schedule: [String: Any]?
            
            public var isActive: Bool?
            
            public var cron: [String: Any]?
            
            public var slug: String?
            
            public var badge: [String: Any]?
            
            public var description: String?
            
            public var visibleFacetsKeys: [String]?
            
            public var allowSort: Bool?
            
            public var appId: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case name = "name"
                
                case type = "type"
                
                case meta = "meta"
                
                case logo = "logo"
                
                case banners = "banners"
                
                case tag = "tag"
                
                case allowFacets = "allow_facets"
                
                case query = "query"
                
                case schedule = "_schedule"
                
                case isActive = "is_active"
                
                case cron = "cron"
                
                case slug = "slug"
                
                case badge = "badge"
                
                case description = "description"
                
                case visibleFacetsKeys = "visible_facets_keys"
                
                case allowSort = "allow_sort"
                
                case appId = "app_id"
                
            }

            public init(allowFacets: Bool?, allowSort: Bool?, appId: String?, badge: [String: Any]?, banners: ImageUrls?, cron: [String: Any]?, description: String?, isActive: Bool?, logo: Media?, meta: [String: Any]?, name: String?, query: [String: Any]?, slug: String?, tag: [String]?, type: String?, visibleFacetsKeys: [String]?, schedule: [String: Any]?) {
                
                self.name = name
                
                self.type = type
                
                self.meta = meta
                
                self.logo = logo
                
                self.banners = banners
                
                self.tag = tag
                
                self.allowFacets = allowFacets
                
                self.query = query
                
                self.schedule = schedule
                
                self.isActive = isActive
                
                self.cron = cron
                
                self.slug = slug
                
                self.badge = badge
                
                self.description = description
                
                self.visibleFacetsKeys = visibleFacetsKeys
                
                self.allowSort = allowSort
                
                self.appId = appId
                
            }

            public func duplicate() -> CollectionDetailResponse {
                let dict = self.dictionary!
                let copy = CollectionDetailResponse(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    name = try container.decode(String.self, forKey: .name)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    type = try container.decode(String.self, forKey: .type)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    meta = try container.decode([String: Any].self, forKey: .meta)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    logo = try container.decode(Media.self, forKey: .logo)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    banners = try container.decode(ImageUrls.self, forKey: .banners)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    tag = try container.decode([String].self, forKey: .tag)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    allowFacets = try container.decode(Bool.self, forKey: .allowFacets)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    query = try container.decode([String: Any].self, forKey: .query)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    schedule = try container.decode([String: Any].self, forKey: .schedule)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    isActive = try container.decode(Bool.self, forKey: .isActive)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    cron = try container.decode([String: Any].self, forKey: .cron)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    slug = try container.decode(String.self, forKey: .slug)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    badge = try container.decode([String: Any].self, forKey: .badge)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    description = try container.decode(String.self, forKey: .description)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    visibleFacetsKeys = try container.decode([String].self, forKey: .visibleFacetsKeys)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    allowSort = try container.decode(Bool.self, forKey: .allowSort)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    appId = try container.decode(String.self, forKey: .appId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(name, forKey: .name)
                
                
                
                
                try? container.encodeIfPresent(type, forKey: .type)
                
                
                
                
                try? container.encodeIfPresent(meta, forKey: .meta)
                
                
                
                
                try? container.encodeIfPresent(logo, forKey: .logo)
                
                
                
                
                try? container.encodeIfPresent(banners, forKey: .banners)
                
                
                
                
                try? container.encodeIfPresent(tag, forKey: .tag)
                
                
                
                
                try? container.encodeIfPresent(allowFacets, forKey: .allowFacets)
                
                
                
                
                try? container.encodeIfPresent(query, forKey: .query)
                
                
                
                
                try? container.encodeIfPresent(schedule, forKey: .schedule)
                
                
                
                
                try? container.encodeIfPresent(isActive, forKey: .isActive)
                
                
                
                
                try? container.encodeIfPresent(cron, forKey: .cron)
                
                
                
                
                try? container.encodeIfPresent(slug, forKey: .slug)
                
                
                
                
                try? container.encodeIfPresent(badge, forKey: .badge)
                
                
                
                
                try? container.encodeIfPresent(description, forKey: .description)
                
                
                
                
                try? container.encodeIfPresent(visibleFacetsKeys, forKey: .visibleFacetsKeys)
                
                
                
                
                try? container.encodeIfPresent(allowSort, forKey: .allowSort)
                
                
                
                
                try? container.encodeIfPresent(appId, forKey: .appId)
                
                
            }
            
        }
        
        /*
            Model: GetFollowListingResponse
            Used By: Catalog
        */
        class GetFollowListingResponse: Codable {
            
            public var items: [ProductListingDetail]
            
            public var page: Page
            

            public enum CodingKeys: String, CodingKey {
                
                case items = "items"
                
                case page = "page"
                
            }

            public init(items: [ProductListingDetail], page: Page) {
                
                self.items = items
                
                self.page = page
                
            }

            public func duplicate() -> GetFollowListingResponse {
                let dict = self.dictionary!
                let copy = GetFollowListingResponse(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                items = try container.decode([ProductListingDetail].self, forKey: .items)
                
                
                
                
                page = try container.decode(Page.self, forKey: .page)
                
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(items, forKey: .items)
                
                
                
                
                try? container.encodeIfPresent(page, forKey: .page)
                
                
            }
            
        }
        
        /*
            Model: FollowPostResponse
            Used By: Catalog
        */
        class FollowPostResponse: Codable {
            
            public var message: String
            
            public var id: String
            

            public enum CodingKeys: String, CodingKey {
                
                case message = "message"
                
                case id = "id"
                
            }

            public init(id: String, message: String) {
                
                self.message = message
                
                self.id = id
                
            }

            public func duplicate() -> FollowPostResponse {
                let dict = self.dictionary!
                let copy = FollowPostResponse(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                message = try container.decode(String.self, forKey: .message)
                
                
                
                
                id = try container.decode(String.self, forKey: .id)
                
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(message, forKey: .message)
                
                
                
                
                try? container.encodeIfPresent(id, forKey: .id)
                
                
            }
            
        }
        
        /*
            Model: FollowerCountResponse
            Used By: Catalog
        */
        class FollowerCountResponse: Codable {
            
            public var count: Int?
            

            public enum CodingKeys: String, CodingKey {
                
                case count = "count"
                
            }

            public init(count: Int?) {
                
                self.count = count
                
            }

            public func duplicate() -> FollowerCountResponse {
                let dict = self.dictionary!
                let copy = FollowerCountResponse(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    count = try container.decode(Int.self, forKey: .count)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(count, forKey: .count)
                
                
            }
            
        }
        
        /*
            Model: FollowIdsData
            Used By: Catalog
        */
        class FollowIdsData: Codable {
            
            public var products: [Int]?
            
            public var brands: [Int]?
            
            public var collections: [Int]?
            

            public enum CodingKeys: String, CodingKey {
                
                case products = "products"
                
                case brands = "brands"
                
                case collections = "collections"
                
            }

            public init(brands: [Int]?, collections: [Int]?, products: [Int]?) {
                
                self.products = products
                
                self.brands = brands
                
                self.collections = collections
                
            }

            public func duplicate() -> FollowIdsData {
                let dict = self.dictionary!
                let copy = FollowIdsData(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    products = try container.decode([Int].self, forKey: .products)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    brands = try container.decode([Int].self, forKey: .brands)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    collections = try container.decode([Int].self, forKey: .collections)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(products, forKey: .products)
                
                
                
                
                try? container.encodeIfPresent(brands, forKey: .brands)
                
                
                
                
                try? container.encodeIfPresent(collections, forKey: .collections)
                
                
            }
            
        }
        
        /*
            Model: FollowIdsResponse
            Used By: Catalog
        */
        class FollowIdsResponse: Codable {
            
            public var data: FollowIdsData?
            

            public enum CodingKeys: String, CodingKey {
                
                case data = "data"
                
            }

            public init(data: FollowIdsData?) {
                
                self.data = data
                
            }

            public func duplicate() -> FollowIdsResponse {
                let dict = self.dictionary!
                let copy = FollowIdsResponse(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    data = try container.decode(FollowIdsData.self, forKey: .data)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(data, forKey: .data)
                
                
            }
            
        }
        
        /*
            Model: LatLong
            Used By: Catalog
        */
        class LatLong: Codable {
            
            public var type: String?
            
            public var coordinates: [Double]?
            

            public enum CodingKeys: String, CodingKey {
                
                case type = "type"
                
                case coordinates = "coordinates"
                
            }

            public init(coordinates: [Double]?, type: String?) {
                
                self.type = type
                
                self.coordinates = coordinates
                
            }

            public func duplicate() -> LatLong {
                let dict = self.dictionary!
                let copy = LatLong(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    type = try container.decode(String.self, forKey: .type)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    coordinates = try container.decode([Double].self, forKey: .coordinates)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(type, forKey: .type)
                
                
                
                
                try? container.encodeIfPresent(coordinates, forKey: .coordinates)
                
                
            }
            
        }
        
        /*
            Model: Store
            Used By: Catalog
        */
        class Store: Codable {
            
            public var name: String?
            
            public var country: String?
            
            public var address: String?
            
            public var latLong: LatLong?
            
            public var storeEmail: String?
            
            public var storeCode: String?
            
            public var city: String?
            
            public var uid: Int?
            
            public var state: String?
            
            public var pincode: Int?
            

            public enum CodingKeys: String, CodingKey {
                
                case name = "name"
                
                case country = "country"
                
                case address = "address"
                
                case latLong = "lat_long"
                
                case storeEmail = "store_email"
                
                case storeCode = "store_code"
                
                case city = "city"
                
                case uid = "uid"
                
                case state = "state"
                
                case pincode = "pincode"
                
            }

            public init(address: String?, city: String?, country: String?, latLong: LatLong?, name: String?, pincode: Int?, state: String?, storeCode: String?, storeEmail: String?, uid: Int?) {
                
                self.name = name
                
                self.country = country
                
                self.address = address
                
                self.latLong = latLong
                
                self.storeEmail = storeEmail
                
                self.storeCode = storeCode
                
                self.city = city
                
                self.uid = uid
                
                self.state = state
                
                self.pincode = pincode
                
            }

            public func duplicate() -> Store {
                let dict = self.dictionary!
                let copy = Store(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    name = try container.decode(String.self, forKey: .name)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    country = try container.decode(String.self, forKey: .country)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    address = try container.decode(String.self, forKey: .address)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    latLong = try container.decode(LatLong.self, forKey: .latLong)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    storeEmail = try container.decode(String.self, forKey: .storeEmail)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    storeCode = try container.decode(String.self, forKey: .storeCode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    city = try container.decode(String.self, forKey: .city)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    uid = try container.decode(Int.self, forKey: .uid)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    state = try container.decode(String.self, forKey: .state)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    pincode = try container.decode(Int.self, forKey: .pincode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(name, forKey: .name)
                
                
                
                
                try? container.encodeIfPresent(country, forKey: .country)
                
                
                
                
                try? container.encodeIfPresent(address, forKey: .address)
                
                
                
                
                try? container.encodeIfPresent(latLong, forKey: .latLong)
                
                
                
                
                try? container.encodeIfPresent(storeEmail, forKey: .storeEmail)
                
                
                
                
                try? container.encodeIfPresent(storeCode, forKey: .storeCode)
                
                
                
                
                try? container.encodeIfPresent(city, forKey: .city)
                
                
                
                
                try? container.encodeIfPresent(uid, forKey: .uid)
                
                
                
                
                try? container.encodeIfPresent(state, forKey: .state)
                
                
                
                
                try? container.encodeIfPresent(pincode, forKey: .pincode)
                
                
            }
            
        }
        
        /*
            Model: StoreListingResponse
            Used By: Catalog
        */
        class StoreListingResponse: Codable {
            
            public var items: [Store]
            
            public var page: Page
            

            public enum CodingKeys: String, CodingKey {
                
                case items = "items"
                
                case page = "page"
                
            }

            public init(items: [Store], page: Page) {
                
                self.items = items
                
                self.page = page
                
            }

            public func duplicate() -> StoreListingResponse {
                let dict = self.dictionary!
                let copy = StoreListingResponse(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                items = try container.decode([Store].self, forKey: .items)
                
                
                
                
                page = try container.decode(Page.self, forKey: .page)
                
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(items, forKey: .items)
                
                
                
                
                try? container.encodeIfPresent(page, forKey: .page)
                
                
            }
            
        }
        
        /*
            Model: StoreDepartments
            Used By: Catalog
        */
        class StoreDepartments: Codable {
            
            public var name: String?
            
            public var logo: String?
            
            public var uid: Int?
            
            public var slug: String?
            
            public var priorityOrder: Int?
            

            public enum CodingKeys: String, CodingKey {
                
                case name = "name"
                
                case logo = "logo"
                
                case uid = "uid"
                
                case slug = "slug"
                
                case priorityOrder = "priority_order"
                
            }

            public init(logo: String?, name: String?, priorityOrder: Int?, slug: String?, uid: Int?) {
                
                self.name = name
                
                self.logo = logo
                
                self.uid = uid
                
                self.slug = slug
                
                self.priorityOrder = priorityOrder
                
            }

            public func duplicate() -> StoreDepartments {
                let dict = self.dictionary!
                let copy = StoreDepartments(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    name = try container.decode(String.self, forKey: .name)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    logo = try container.decode(String.self, forKey: .logo)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    uid = try container.decode(Int.self, forKey: .uid)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    slug = try container.decode(String.self, forKey: .slug)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    priorityOrder = try container.decode(Int.self, forKey: .priorityOrder)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(name, forKey: .name)
                
                
                
                
                try? container.encodeIfPresent(logo, forKey: .logo)
                
                
                
                
                try? container.encodeIfPresent(uid, forKey: .uid)
                
                
                
                
                try? container.encodeIfPresent(slug, forKey: .slug)
                
                
                
                
                try? container.encodeIfPresent(priorityOrder, forKey: .priorityOrder)
                
                
            }
            
        }
        
        /*
            Model: StoreAddressSerializer
            Used By: Catalog
        */
        class StoreAddressSerializer: Codable {
            
            public var landmark: String?
            
            public var latitude: Double?
            
            public var longitude: Double?
            
            public var country: String?
            
            public var address2: String?
            
            public var city: String?
            
            public var address1: String?
            
            public var state: String?
            
            public var pincode: Int?
            

            public enum CodingKeys: String, CodingKey {
                
                case landmark = "landmark"
                
                case latitude = "latitude"
                
                case longitude = "longitude"
                
                case country = "country"
                
                case address2 = "address2"
                
                case city = "city"
                
                case address1 = "address1"
                
                case state = "state"
                
                case pincode = "pincode"
                
            }

            public init(address1: String?, address2: String?, city: String?, country: String?, landmark: String?, latitude: Double?, longitude: Double?, pincode: Int?, state: String?) {
                
                self.landmark = landmark
                
                self.latitude = latitude
                
                self.longitude = longitude
                
                self.country = country
                
                self.address2 = address2
                
                self.city = city
                
                self.address1 = address1
                
                self.state = state
                
                self.pincode = pincode
                
            }

            public func duplicate() -> StoreAddressSerializer {
                let dict = self.dictionary!
                let copy = StoreAddressSerializer(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    landmark = try container.decode(String.self, forKey: .landmark)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    latitude = try container.decode(Double.self, forKey: .latitude)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    longitude = try container.decode(Double.self, forKey: .longitude)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    country = try container.decode(String.self, forKey: .country)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    address2 = try container.decode(String.self, forKey: .address2)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    city = try container.decode(String.self, forKey: .city)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    address1 = try container.decode(String.self, forKey: .address1)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    state = try container.decode(String.self, forKey: .state)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    pincode = try container.decode(Int.self, forKey: .pincode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(landmark, forKey: .landmark)
                
                
                
                
                try? container.encodeIfPresent(latitude, forKey: .latitude)
                
                
                
                
                try? container.encodeIfPresent(longitude, forKey: .longitude)
                
                
                
                
                try? container.encodeIfPresent(country, forKey: .country)
                
                
                
                
                try? container.encodeIfPresent(address2, forKey: .address2)
                
                
                
                
                try? container.encodeIfPresent(city, forKey: .city)
                
                
                
                
                try? container.encodeIfPresent(address1, forKey: .address1)
                
                
                
                
                try? container.encodeIfPresent(state, forKey: .state)
                
                
                
                
                try? container.encodeIfPresent(pincode, forKey: .pincode)
                
                
            }
            
        }
        
        /*
            Model: CompanyStore
            Used By: Catalog
        */
        class CompanyStore: Codable {
            
            public var companyType: String?
            
            public var name: String?
            
            public var businessType: String?
            
            public var uid: Int?
            

            public enum CodingKeys: String, CodingKey {
                
                case companyType = "company_type"
                
                case name = "name"
                
                case businessType = "business_type"
                
                case uid = "uid"
                
            }

            public init(businessType: String?, companyType: String?, name: String?, uid: Int?) {
                
                self.companyType = companyType
                
                self.name = name
                
                self.businessType = businessType
                
                self.uid = uid
                
            }

            public func duplicate() -> CompanyStore {
                let dict = self.dictionary!
                let copy = CompanyStore(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    companyType = try container.decode(String.self, forKey: .companyType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    name = try container.decode(String.self, forKey: .name)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    businessType = try container.decode(String.self, forKey: .businessType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    uid = try container.decode(Int.self, forKey: .uid)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(companyType, forKey: .companyType)
                
                
                
                
                try? container.encodeIfPresent(name, forKey: .name)
                
                
                
                
                try? container.encodeIfPresent(businessType, forKey: .businessType)
                
                
                
                
                try? container.encodeIfPresent(uid, forKey: .uid)
                
                
            }
            
        }
        
        /*
            Model: SellerPhoneNumber
            Used By: Catalog
        */
        class SellerPhoneNumber: Codable {
            
            public var number: String
            
            public var countryCode: Int
            

            public enum CodingKeys: String, CodingKey {
                
                case number = "number"
                
                case countryCode = "country_code"
                
            }

            public init(countryCode: Int, number: String) {
                
                self.number = number
                
                self.countryCode = countryCode
                
            }

            public func duplicate() -> SellerPhoneNumber {
                let dict = self.dictionary!
                let copy = SellerPhoneNumber(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                number = try container.decode(String.self, forKey: .number)
                
                
                
                
                countryCode = try container.decode(Int.self, forKey: .countryCode)
                
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(number, forKey: .number)
                
                
                
                
                try? container.encodeIfPresent(countryCode, forKey: .countryCode)
                
                
            }
            
        }
        
        /*
            Model: StoreManagerSerializer
            Used By: Catalog
        */
        class StoreManagerSerializer: Codable {
            
            public var email: String?
            
            public var name: String?
            
            public var mobileNo: SellerPhoneNumber?
            

            public enum CodingKeys: String, CodingKey {
                
                case email = "email"
                
                case name = "name"
                
                case mobileNo = "mobile_no"
                
            }

            public init(email: String?, mobileNo: SellerPhoneNumber?, name: String?) {
                
                self.email = email
                
                self.name = name
                
                self.mobileNo = mobileNo
                
            }

            public func duplicate() -> StoreManagerSerializer {
                let dict = self.dictionary!
                let copy = StoreManagerSerializer(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    email = try container.decode(String.self, forKey: .email)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    name = try container.decode(String.self, forKey: .name)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    mobileNo = try container.decode(SellerPhoneNumber.self, forKey: .mobileNo)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(email, forKey: .email)
                
                
                
                
                try? container.encodeIfPresent(name, forKey: .name)
                
                
                
                
                try? container.encodeIfPresent(mobileNo, forKey: .mobileNo)
                
                
            }
            
        }
        
        /*
            Model: AppStore
            Used By: Catalog
        */
        class AppStore: Codable {
            
            public var name: String?
            
            public var address: StoreAddressSerializer?
            
            public var departments: [StoreDepartments]?
            
            public var uid: Int?
            
            public var company: CompanyStore?
            
            public var contactNumbers: [SellerPhoneNumber]?
            
            public var manager: StoreManagerSerializer?
            

            public enum CodingKeys: String, CodingKey {
                
                case name = "name"
                
                case address = "address"
                
                case departments = "departments"
                
                case uid = "uid"
                
                case company = "company"
                
                case contactNumbers = "contact_numbers"
                
                case manager = "manager"
                
            }

            public init(address: StoreAddressSerializer?, company: CompanyStore?, contactNumbers: [SellerPhoneNumber]?, departments: [StoreDepartments]?, manager: StoreManagerSerializer?, name: String?, uid: Int?) {
                
                self.name = name
                
                self.address = address
                
                self.departments = departments
                
                self.uid = uid
                
                self.company = company
                
                self.contactNumbers = contactNumbers
                
                self.manager = manager
                
            }

            public func duplicate() -> AppStore {
                let dict = self.dictionary!
                let copy = AppStore(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    name = try container.decode(String.self, forKey: .name)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    address = try container.decode(StoreAddressSerializer.self, forKey: .address)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    departments = try container.decode([StoreDepartments].self, forKey: .departments)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    uid = try container.decode(Int.self, forKey: .uid)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    company = try container.decode(CompanyStore.self, forKey: .company)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    contactNumbers = try container.decode([SellerPhoneNumber].self, forKey: .contactNumbers)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    manager = try container.decode(StoreManagerSerializer.self, forKey: .manager)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(name, forKey: .name)
                
                
                
                
                try? container.encodeIfPresent(address, forKey: .address)
                
                
                
                
                try? container.encodeIfPresent(departments, forKey: .departments)
                
                
                
                
                try? container.encodeIfPresent(uid, forKey: .uid)
                
                
                
                
                try? container.encodeIfPresent(company, forKey: .company)
                
                
                
                
                try? container.encodeIfPresent(contactNumbers, forKey: .contactNumbers)
                
                
                
                
                try? container.encodeIfPresent(manager, forKey: .manager)
                
                
            }
            
        }
        
        /*
            Model: ApplicationStoreListing
            Used By: Catalog
        */
        class ApplicationStoreListing: Codable {
            
            public var filters: [StoreDepartments]?
            
            public var items: [AppStore]?
            
            public var page: Page?
            

            public enum CodingKeys: String, CodingKey {
                
                case filters = "filters"
                
                case items = "items"
                
                case page = "page"
                
            }

            public init(filters: [StoreDepartments]?, items: [AppStore]?, page: Page?) {
                
                self.filters = filters
                
                self.items = items
                
                self.page = page
                
            }

            public func duplicate() -> ApplicationStoreListing {
                let dict = self.dictionary!
                let copy = ApplicationStoreListing(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    filters = try container.decode([StoreDepartments].self, forKey: .filters)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    items = try container.decode([AppStore].self, forKey: .items)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    page = try container.decode(Page.self, forKey: .page)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(filters, forKey: .filters)
                
                
                
                
                try? container.encodeIfPresent(items, forKey: .items)
                
                
                
                
                try? container.encodeIfPresent(page, forKey: .page)
                
                
            }
            
        }
        
        /*
            Model: Time
            Used By: Catalog
        */
        class Time: Codable {
            
            public var minute: Int?
            
            public var hour: Int?
            

            public enum CodingKeys: String, CodingKey {
                
                case minute = "minute"
                
                case hour = "hour"
                
            }

            public init(hour: Int?, minute: Int?) {
                
                self.minute = minute
                
                self.hour = hour
                
            }

            public func duplicate() -> Time {
                let dict = self.dictionary!
                let copy = Time(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    minute = try container.decode(Int.self, forKey: .minute)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    hour = try container.decode(Int.self, forKey: .hour)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(minute, forKey: .minute)
                
                
                
                
                try? container.encodeIfPresent(hour, forKey: .hour)
                
                
            }
            
        }
        
        /*
            Model: StoreTiming
            Used By: Catalog
        */
        class StoreTiming: Codable {
            
            public var closing: Time?
            
            public var weekday: String?
            
            public var opening: Time?
            
            public var open: Bool?
            

            public enum CodingKeys: String, CodingKey {
                
                case closing = "closing"
                
                case weekday = "weekday"
                
                case opening = "opening"
                
                case open = "open"
                
            }

            public init(closing: Time?, open: Bool?, opening: Time?, weekday: String?) {
                
                self.closing = closing
                
                self.weekday = weekday
                
                self.opening = opening
                
                self.open = open
                
            }

            public func duplicate() -> StoreTiming {
                let dict = self.dictionary!
                let copy = StoreTiming(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    closing = try container.decode(Time.self, forKey: .closing)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    weekday = try container.decode(String.self, forKey: .weekday)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    opening = try container.decode(Time.self, forKey: .opening)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    open = try container.decode(Bool.self, forKey: .open)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(closing, forKey: .closing)
                
                
                
                
                try? container.encodeIfPresent(weekday, forKey: .weekday)
                
                
                
                
                try? container.encodeIfPresent(opening, forKey: .opening)
                
                
                
                
                try? container.encodeIfPresent(open, forKey: .open)
                
                
            }
            
        }
        
        /*
            Model: StoreDetails
            Used By: Catalog
        */
        class StoreDetails: Codable {
            
            public var customJson: [String: Any]?
            
            public var name: String?
            
            public var address: StoreAddressSerializer?
            
            public var departments: [StoreDepartments]?
            
            public var uid: Int?
            
            public var company: CompanyStore?
            
            public var timing: [StoreTiming]?
            
            public var contactNumbers: [SellerPhoneNumber]?
            
            public var manager: StoreManagerSerializer?
            

            public enum CodingKeys: String, CodingKey {
                
                case customJson = "_custom_json"
                
                case name = "name"
                
                case address = "address"
                
                case departments = "departments"
                
                case uid = "uid"
                
                case company = "company"
                
                case timing = "timing"
                
                case contactNumbers = "contact_numbers"
                
                case manager = "manager"
                
            }

            public init(address: StoreAddressSerializer?, company: CompanyStore?, contactNumbers: [SellerPhoneNumber]?, departments: [StoreDepartments]?, manager: StoreManagerSerializer?, name: String?, timing: [StoreTiming]?, uid: Int?, customJson: [String: Any]?) {
                
                self.customJson = customJson
                
                self.name = name
                
                self.address = address
                
                self.departments = departments
                
                self.uid = uid
                
                self.company = company
                
                self.timing = timing
                
                self.contactNumbers = contactNumbers
                
                self.manager = manager
                
            }

            public func duplicate() -> StoreDetails {
                let dict = self.dictionary!
                let copy = StoreDetails(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    customJson = try container.decode([String: Any].self, forKey: .customJson)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    name = try container.decode(String.self, forKey: .name)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    address = try container.decode(StoreAddressSerializer.self, forKey: .address)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    departments = try container.decode([StoreDepartments].self, forKey: .departments)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    uid = try container.decode(Int.self, forKey: .uid)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    company = try container.decode(CompanyStore.self, forKey: .company)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    timing = try container.decode([StoreTiming].self, forKey: .timing)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    contactNumbers = try container.decode([SellerPhoneNumber].self, forKey: .contactNumbers)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    manager = try container.decode(StoreManagerSerializer.self, forKey: .manager)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(customJson, forKey: .customJson)
                
                
                
                
                try? container.encodeIfPresent(name, forKey: .name)
                
                
                
                
                try? container.encodeIfPresent(address, forKey: .address)
                
                
                
                
                try? container.encodeIfPresent(departments, forKey: .departments)
                
                
                
                
                try? container.encodeIfPresent(uid, forKey: .uid)
                
                
                
                
                try? container.encodeIfPresent(company, forKey: .company)
                
                
                
                
                try? container.encodeIfPresent(timing, forKey: .timing)
                
                
                
                
                try? container.encodeIfPresent(contactNumbers, forKey: .contactNumbers)
                
                
                
                
                try? container.encodeIfPresent(manager, forKey: .manager)
                
                
            }
            
        }
        
        /*
            Model: Price1
            Used By: Catalog
        */
        class Price1: Codable {
            
            public var maxEffective: Double?
            
            public var maxMarked: Double?
            
            public var currency: String?
            
            public var minEffective: Double?
            
            public var minMarked: Double?
            

            public enum CodingKeys: String, CodingKey {
                
                case maxEffective = "max_effective"
                
                case maxMarked = "max_marked"
                
                case currency = "currency"
                
                case minEffective = "min_effective"
                
                case minMarked = "min_marked"
                
            }

            public init(currency: String?, maxEffective: Double?, maxMarked: Double?, minEffective: Double?, minMarked: Double?) {
                
                self.maxEffective = maxEffective
                
                self.maxMarked = maxMarked
                
                self.currency = currency
                
                self.minEffective = minEffective
                
                self.minMarked = minMarked
                
            }

            public func duplicate() -> Price1 {
                let dict = self.dictionary!
                let copy = Price1(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    maxEffective = try container.decode(Double.self, forKey: .maxEffective)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    maxMarked = try container.decode(Double.self, forKey: .maxMarked)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    currency = try container.decode(String.self, forKey: .currency)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    minEffective = try container.decode(Double.self, forKey: .minEffective)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    minMarked = try container.decode(Double.self, forKey: .minMarked)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(maxEffective, forKey: .maxEffective)
                
                
                
                
                try? container.encodeIfPresent(maxMarked, forKey: .maxMarked)
                
                
                
                
                try? container.encodeIfPresent(currency, forKey: .currency)
                
                
                
                
                try? container.encodeIfPresent(minEffective, forKey: .minEffective)
                
                
                
                
                try? container.encodeIfPresent(minMarked, forKey: .minMarked)
                
                
            }
            
        }
        
        /*
            Model: ProductDetails
            Used By: Catalog
        */
        class ProductDetails: Codable {
            
            public var shortDescription: String?
            
            public var isSet: Bool?
            
            public var groupedAttributes: [String: Any]?
            
            public var slug: String?
            
            public var description: String?
            
            public var media: [[String: Any]]?
            
            public var identifier: [String: Any]?
            
            public var outOfStock: Bool?
            
            public var brandUid: Int?
            
            public var imageNature: String?
            
            public var ratingCount: Int?
            
            public var hasVariant: Bool?
            
            public var itemCode: String?
            
            public var name: String?
            
            public var attributes: [String: Any]?
            
            public var countryOfOrigin: String?
            
            public var images: [[String: Any]]?
            
            public var templateTag: String?
            
            public var rating: Double?
            
            public var hsnCode: Int?
            

            public enum CodingKeys: String, CodingKey {
                
                case shortDescription = "short_description"
                
                case isSet = "is_set"
                
                case groupedAttributes = "grouped_attributes"
                
                case slug = "slug"
                
                case description = "description"
                
                case media = "media"
                
                case identifier = "identifier"
                
                case outOfStock = "out_of_stock"
                
                case brandUid = "brand_uid"
                
                case imageNature = "image_nature"
                
                case ratingCount = "rating_count"
                
                case hasVariant = "has_variant"
                
                case itemCode = "item_code"
                
                case name = "name"
                
                case attributes = "attributes"
                
                case countryOfOrigin = "country_of_origin"
                
                case images = "images"
                
                case templateTag = "template_tag"
                
                case rating = "rating"
                
                case hsnCode = "hsn_code"
                
            }

            public init(attributes: [String: Any]?, brandUid: Int?, countryOfOrigin: String?, description: String?, groupedAttributes: [String: Any]?, hasVariant: Bool?, hsnCode: Int?, identifier: [String: Any]?, images: [[String: Any]]?, imageNature: String?, isSet: Bool?, itemCode: String?, media: [[String: Any]]?, name: String?, outOfStock: Bool?, rating: Double?, ratingCount: Int?, shortDescription: String?, slug: String?, templateTag: String?) {
                
                self.shortDescription = shortDescription
                
                self.isSet = isSet
                
                self.groupedAttributes = groupedAttributes
                
                self.slug = slug
                
                self.description = description
                
                self.media = media
                
                self.identifier = identifier
                
                self.outOfStock = outOfStock
                
                self.brandUid = brandUid
                
                self.imageNature = imageNature
                
                self.ratingCount = ratingCount
                
                self.hasVariant = hasVariant
                
                self.itemCode = itemCode
                
                self.name = name
                
                self.attributes = attributes
                
                self.countryOfOrigin = countryOfOrigin
                
                self.images = images
                
                self.templateTag = templateTag
                
                self.rating = rating
                
                self.hsnCode = hsnCode
                
            }

            public func duplicate() -> ProductDetails {
                let dict = self.dictionary!
                let copy = ProductDetails(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    shortDescription = try container.decode(String.self, forKey: .shortDescription)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    isSet = try container.decode(Bool.self, forKey: .isSet)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    groupedAttributes = try container.decode([String: Any].self, forKey: .groupedAttributes)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    slug = try container.decode(String.self, forKey: .slug)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    description = try container.decode(String.self, forKey: .description)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    media = try container.decode([[String: Any]].self, forKey: .media)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    identifier = try container.decode([String: Any].self, forKey: .identifier)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    outOfStock = try container.decode(Bool.self, forKey: .outOfStock)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    brandUid = try container.decode(Int.self, forKey: .brandUid)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    imageNature = try container.decode(String.self, forKey: .imageNature)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    ratingCount = try container.decode(Int.self, forKey: .ratingCount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    hasVariant = try container.decode(Bool.self, forKey: .hasVariant)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    itemCode = try container.decode(String.self, forKey: .itemCode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    name = try container.decode(String.self, forKey: .name)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    attributes = try container.decode([String: Any].self, forKey: .attributes)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    countryOfOrigin = try container.decode(String.self, forKey: .countryOfOrigin)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    images = try container.decode([[String: Any]].self, forKey: .images)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    templateTag = try container.decode(String.self, forKey: .templateTag)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    rating = try container.decode(Double.self, forKey: .rating)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    hsnCode = try container.decode(Int.self, forKey: .hsnCode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(shortDescription, forKey: .shortDescription)
                
                
                
                
                try? container.encodeIfPresent(isSet, forKey: .isSet)
                
                
                
                
                try? container.encodeIfPresent(groupedAttributes, forKey: .groupedAttributes)
                
                
                
                
                try? container.encodeIfPresent(slug, forKey: .slug)
                
                
                
                
                try? container.encodeIfPresent(description, forKey: .description)
                
                
                
                
                try? container.encodeIfPresent(media, forKey: .media)
                
                
                
                
                try? container.encodeIfPresent(identifier, forKey: .identifier)
                
                
                
                
                try? container.encodeIfPresent(outOfStock, forKey: .outOfStock)
                
                
                
                
                try? container.encodeIfPresent(brandUid, forKey: .brandUid)
                
                
                
                
                try? container.encodeIfPresent(imageNature, forKey: .imageNature)
                
                
                
                
                try? container.encodeIfPresent(ratingCount, forKey: .ratingCount)
                
                
                
                
                try? container.encodeIfPresent(hasVariant, forKey: .hasVariant)
                
                
                
                
                try? container.encodeIfPresent(itemCode, forKey: .itemCode)
                
                
                
                
                try? container.encodeIfPresent(name, forKey: .name)
                
                
                
                
                try? container.encodeIfPresent(attributes, forKey: .attributes)
                
                
                
                
                try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)
                
                
                
                
                try? container.encodeIfPresent(images, forKey: .images)
                
                
                
                
                try? container.encodeIfPresent(templateTag, forKey: .templateTag)
                
                
                
                
                try? container.encodeIfPresent(rating, forKey: .rating)
                
                
                
                
                try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)
                
                
            }
            
        }
        
        /*
            Model: Size
            Used By: Catalog
        */
        class Size: Codable {
            
            public var isAvailable: Bool?
            
            public var display: String?
            
            public var quantity: Int?
            
            public var value: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case isAvailable = "is_available"
                
                case display = "display"
                
                case quantity = "quantity"
                
                case value = "value"
                
            }

            public init(display: String?, isAvailable: Bool?, quantity: Int?, value: String?) {
                
                self.isAvailable = isAvailable
                
                self.display = display
                
                self.quantity = quantity
                
                self.value = value
                
            }

            public func duplicate() -> Size {
                let dict = self.dictionary!
                let copy = Size(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    isAvailable = try container.decode(Bool.self, forKey: .isAvailable)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    display = try container.decode(String.self, forKey: .display)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    quantity = try container.decode(Int.self, forKey: .quantity)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    value = try container.decode(String.self, forKey: .value)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(isAvailable, forKey: .isAvailable)
                
                
                
                
                try? container.encodeIfPresent(display, forKey: .display)
                
                
                
                
                try? container.encodeIfPresent(quantity, forKey: .quantity)
                
                
                
                
                try? container.encodeIfPresent(value, forKey: .value)
                
                
            }
            
        }
        
        /*
            Model: Products
            Used By: Catalog
        */
        class Products: Codable {
            
            public var allowRemove: Bool?
            
            public var price: Price1?
            
            public var autoAddToCart: Bool?
            
            public var productDetails: ProductDetails?
            
            public var autoSelect: Bool?
            
            public var productUid: Int?
            
            public var minQuantity: Int?
            
            public var sizes: [Size]?
            
            public var maxQuantity: Int?
            

            public enum CodingKeys: String, CodingKey {
                
                case allowRemove = "allow_remove"
                
                case price = "price"
                
                case autoAddToCart = "auto_add_to_cart"
                
                case productDetails = "product_details"
                
                case autoSelect = "auto_select"
                
                case productUid = "product_uid"
                
                case minQuantity = "min_quantity"
                
                case sizes = "sizes"
                
                case maxQuantity = "max_quantity"
                
            }

            public init(allowRemove: Bool?, autoAddToCart: Bool?, autoSelect: Bool?, maxQuantity: Int?, minQuantity: Int?, price: Price1?, productDetails: ProductDetails?, productUid: Int?, sizes: [Size]?) {
                
                self.allowRemove = allowRemove
                
                self.price = price
                
                self.autoAddToCart = autoAddToCart
                
                self.productDetails = productDetails
                
                self.autoSelect = autoSelect
                
                self.productUid = productUid
                
                self.minQuantity = minQuantity
                
                self.sizes = sizes
                
                self.maxQuantity = maxQuantity
                
            }

            public func duplicate() -> Products {
                let dict = self.dictionary!
                let copy = Products(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    allowRemove = try container.decode(Bool.self, forKey: .allowRemove)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    price = try container.decode(Price1.self, forKey: .price)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    autoAddToCart = try container.decode(Bool.self, forKey: .autoAddToCart)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    productDetails = try container.decode(ProductDetails.self, forKey: .productDetails)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    autoSelect = try container.decode(Bool.self, forKey: .autoSelect)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    productUid = try container.decode(Int.self, forKey: .productUid)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    minQuantity = try container.decode(Int.self, forKey: .minQuantity)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    sizes = try container.decode([Size].self, forKey: .sizes)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    maxQuantity = try container.decode(Int.self, forKey: .maxQuantity)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(allowRemove, forKey: .allowRemove)
                
                
                
                
                try? container.encodeIfPresent(price, forKey: .price)
                
                
                
                
                try? container.encodeIfPresent(autoAddToCart, forKey: .autoAddToCart)
                
                
                
                
                try? container.encodeIfPresent(productDetails, forKey: .productDetails)
                
                
                
                
                try? container.encodeIfPresent(autoSelect, forKey: .autoSelect)
                
                
                
                
                try? container.encodeIfPresent(productUid, forKey: .productUid)
                
                
                
                
                try? container.encodeIfPresent(minQuantity, forKey: .minQuantity)
                
                
                
                
                try? container.encodeIfPresent(sizes, forKey: .sizes)
                
                
                
                
                try? container.encodeIfPresent(maxQuantity, forKey: .maxQuantity)
                
                
            }
            
        }
        
        /*
            Model: GetGroupedProducts
            Used By: Catalog
        */
        class GetGroupedProducts: Codable {
            
            public var name: String?
            
            public var companyId: Int?
            
            public var meta: [String: Any]?
            
            public var choice: String?
            
            public var logo: String?
            
            public var products: [Products]?
            
            public var sameStoreAssignment: Bool?
            
            public var active: Bool?
            
            public var slug: String?
            
            public var pageVisibility: [String]?
            

            public enum CodingKeys: String, CodingKey {
                
                case name = "name"
                
                case companyId = "company_id"
                
                case meta = "meta"
                
                case choice = "choice"
                
                case logo = "logo"
                
                case products = "products"
                
                case sameStoreAssignment = "same_store_assignment"
                
                case active = "active"
                
                case slug = "slug"
                
                case pageVisibility = "page_visibility"
                
            }

            public init(active: Bool?, choice: String?, companyId: Int?, logo: String?, meta: [String: Any]?, name: String?, pageVisibility: [String]?, products: [Products]?, sameStoreAssignment: Bool?, slug: String?) {
                
                self.name = name
                
                self.companyId = companyId
                
                self.meta = meta
                
                self.choice = choice
                
                self.logo = logo
                
                self.products = products
                
                self.sameStoreAssignment = sameStoreAssignment
                
                self.active = active
                
                self.slug = slug
                
                self.pageVisibility = pageVisibility
                
            }

            public func duplicate() -> GetGroupedProducts {
                let dict = self.dictionary!
                let copy = GetGroupedProducts(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    name = try container.decode(String.self, forKey: .name)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    companyId = try container.decode(Int.self, forKey: .companyId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    meta = try container.decode([String: Any].self, forKey: .meta)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    choice = try container.decode(String.self, forKey: .choice)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    logo = try container.decode(String.self, forKey: .logo)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    products = try container.decode([Products].self, forKey: .products)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    sameStoreAssignment = try container.decode(Bool.self, forKey: .sameStoreAssignment)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    active = try container.decode(Bool.self, forKey: .active)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    slug = try container.decode(String.self, forKey: .slug)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    pageVisibility = try container.decode([String].self, forKey: .pageVisibility)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(name, forKey: .name)
                
                
                
                
                try? container.encodeIfPresent(companyId, forKey: .companyId)
                
                
                
                
                try? container.encodeIfPresent(meta, forKey: .meta)
                
                
                
                
                try? container.encodeIfPresent(choice, forKey: .choice)
                
                
                
                
                try? container.encodeIfPresent(logo, forKey: .logo)
                
                
                
                
                try? container.encodeIfPresent(products, forKey: .products)
                
                
                
                
                try? container.encodeIfPresent(sameStoreAssignment, forKey: .sameStoreAssignment)
                
                
                
                
                try? container.encodeIfPresent(active, forKey: .active)
                
                
                
                
                try? container.encodeIfPresent(slug, forKey: .slug)
                
                
                
                
                try? container.encodeIfPresent(pageVisibility, forKey: .pageVisibility)
                
                
            }
            
        }
        
        /*
            Model: ProductBundle
            Used By: Catalog
        */
        class ProductBundle: Codable {
            
            public var items: [GetGroupedProducts]?
            

            public enum CodingKeys: String, CodingKey {
                
                case items = "items"
                
            }

            public init(items: [GetGroupedProducts]?) {
                
                self.items = items
                
            }

            public func duplicate() -> ProductBundle {
                let dict = self.dictionary!
                let copy = ProductBundle(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    items = try container.decode([GetGroupedProducts].self, forKey: .items)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(items, forKey: .items)
                
                
            }
            
        }
        
        /*
            Model: DetailsSchemaV2
            Used By: Catalog
        */
        class DetailsSchemaV2: Codable {
            
            public var key: String?
            
            public var type: String?
            
            public var value: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case key = "key"
                
                case type = "type"
                
                case value = "value"
                
            }

            public init(key: String?, type: String?, value: String?) {
                
                self.key = key
                
                self.type = type
                
                self.value = value
                
            }

            public func duplicate() -> DetailsSchemaV2 {
                let dict = self.dictionary!
                let copy = DetailsSchemaV2(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    key = try container.decode(String.self, forKey: .key)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    type = try container.decode(String.self, forKey: .type)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    value = try container.decode(String.self, forKey: .value)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(key, forKey: .key)
                
                
                
                
                try? container.encodeIfPresent(type, forKey: .type)
                
                
                
                
                try? container.encodeIfPresent(value, forKey: .value)
                
                
            }
            
        }
        
        /*
            Model: MarketPlaceSttributesSchemaV2
            Used By: Catalog
        */
        class MarketPlaceSttributesSchemaV2: Codable {
            
            public var details: [DetailsSchemaV2]?
            
            public var title: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case details = "details"
                
                case title = "title"
                
            }

            public init(details: [DetailsSchemaV2]?, title: String?) {
                
                self.details = details
                
                self.title = title
                
            }

            public func duplicate() -> MarketPlaceSttributesSchemaV2 {
                let dict = self.dictionary!
                let copy = MarketPlaceSttributesSchemaV2(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    details = try container.decode([DetailsSchemaV2].self, forKey: .details)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    title = try container.decode(String.self, forKey: .title)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(details, forKey: .details)
                
                
                
                
                try? container.encodeIfPresent(title, forKey: .title)
                
                
            }
            
        }
        
        /*
            Model: SellerV2
            Used By: Catalog
        */
        class SellerV2: Codable {
            
            public var name: String?
            
            public var count: Int?
            
            public var uid: Int?
            

            public enum CodingKeys: String, CodingKey {
                
                case name = "name"
                
                case count = "count"
                
                case uid = "uid"
                
            }

            public init(count: Int?, name: String?, uid: Int?) {
                
                self.name = name
                
                self.count = count
                
                self.uid = uid
                
            }

            public func duplicate() -> SellerV2 {
                let dict = self.dictionary!
                let copy = SellerV2(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    name = try container.decode(String.self, forKey: .name)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    count = try container.decode(Int.self, forKey: .count)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    uid = try container.decode(Int.self, forKey: .uid)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(name, forKey: .name)
                
                
                
                
                try? container.encodeIfPresent(count, forKey: .count)
                
                
                
                
                try? container.encodeIfPresent(uid, forKey: .uid)
                
                
            }
            
        }
        
        /*
            Model: ProductStockPriceV2
            Used By: Catalog
        */
        class ProductStockPriceV2: Codable {
            
            public var marked: Double?
            
            public var currency: String?
            
            public var effective: Double?
            

            public enum CodingKeys: String, CodingKey {
                
                case marked = "marked"
                
                case currency = "currency"
                
                case effective = "effective"
                
            }

            public init(currency: String?, effective: Double?, marked: Double?) {
                
                self.marked = marked
                
                self.currency = currency
                
                self.effective = effective
                
            }

            public func duplicate() -> ProductStockPriceV2 {
                let dict = self.dictionary!
                let copy = ProductStockPriceV2(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    marked = try container.decode(Double.self, forKey: .marked)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    currency = try container.decode(String.self, forKey: .currency)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    effective = try container.decode(Double.self, forKey: .effective)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(marked, forKey: .marked)
                
                
                
                
                try? container.encodeIfPresent(currency, forKey: .currency)
                
                
                
                
                try? container.encodeIfPresent(effective, forKey: .effective)
                
                
            }
            
        }
        
        /*
            Model: ProductSetDistributionSizeV2
            Used By: Catalog
        */
        class ProductSetDistributionSizeV2: Codable {
            
            public var pieces: Int?
            
            public var size: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case pieces = "pieces"
                
                case size = "size"
                
            }

            public init(pieces: Int?, size: String?) {
                
                self.pieces = pieces
                
                self.size = size
                
            }

            public func duplicate() -> ProductSetDistributionSizeV2 {
                let dict = self.dictionary!
                let copy = ProductSetDistributionSizeV2(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    pieces = try container.decode(Int.self, forKey: .pieces)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    size = try container.decode(String.self, forKey: .size)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(pieces, forKey: .pieces)
                
                
                
                
                try? container.encodeIfPresent(size, forKey: .size)
                
                
            }
            
        }
        
        /*
            Model: ProductSetDistributionV2
            Used By: Catalog
        */
        class ProductSetDistributionV2: Codable {
            
            public var sizes: [ProductSetDistributionSizeV2]?
            

            public enum CodingKeys: String, CodingKey {
                
                case sizes = "sizes"
                
            }

            public init(sizes: [ProductSetDistributionSizeV2]?) {
                
                self.sizes = sizes
                
            }

            public func duplicate() -> ProductSetDistributionV2 {
                let dict = self.dictionary!
                let copy = ProductSetDistributionV2(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    sizes = try container.decode([ProductSetDistributionSizeV2].self, forKey: .sizes)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(sizes, forKey: .sizes)
                
                
            }
            
        }
        
        /*
            Model: ProductSetV2
            Used By: Catalog
        */
        class ProductSetV2: Codable {
            
            public var quantity: Int?
            
            public var sizeDistribution: ProductSetDistributionV2?
            

            public enum CodingKeys: String, CodingKey {
                
                case quantity = "quantity"
                
                case sizeDistribution = "size_distribution"
                
            }

            public init(quantity: Int?, sizeDistribution: ProductSetDistributionV2?) {
                
                self.quantity = quantity
                
                self.sizeDistribution = sizeDistribution
                
            }

            public func duplicate() -> ProductSetV2 {
                let dict = self.dictionary!
                let copy = ProductSetV2(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    quantity = try container.decode(Int.self, forKey: .quantity)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    sizeDistribution = try container.decode(ProductSetDistributionV2.self, forKey: .sizeDistribution)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(quantity, forKey: .quantity)
                
                
                
                
                try? container.encodeIfPresent(sizeDistribution, forKey: .sizeDistribution)
                
                
            }
            
        }
        
        /*
            Model: StrategyWiseListingSchemaV2
            Used By: Catalog
        */
        class StrategyWiseListingSchemaV2: Codable {
            
            public var tat: Int?
            
            public var quantity: Int?
            
            public var distance: Int?
            
            public var pincode: Int?
            

            public enum CodingKeys: String, CodingKey {
                
                case tat = "tat"
                
                case quantity = "quantity"
                
                case distance = "distance"
                
                case pincode = "pincode"
                
            }

            public init(distance: Int?, pincode: Int?, quantity: Int?, tat: Int?) {
                
                self.tat = tat
                
                self.quantity = quantity
                
                self.distance = distance
                
                self.pincode = pincode
                
            }

            public func duplicate() -> StrategyWiseListingSchemaV2 {
                let dict = self.dictionary!
                let copy = StrategyWiseListingSchemaV2(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    tat = try container.decode(Int.self, forKey: .tat)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    quantity = try container.decode(Int.self, forKey: .quantity)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    distance = try container.decode(Int.self, forKey: .distance)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    pincode = try container.decode(Int.self, forKey: .pincode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(tat, forKey: .tat)
                
                
                
                
                try? container.encodeIfPresent(quantity, forKey: .quantity)
                
                
                
                
                try? container.encodeIfPresent(distance, forKey: .distance)
                
                
                
                
                try? container.encodeIfPresent(pincode, forKey: .pincode)
                
                
            }
            
        }
        
        /*
            Model: ArticleAssignmentV2
            Used By: Catalog
        */
        class ArticleAssignmentV2: Codable {
            
            public var level: String?
            
            public var strategy: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case level = "level"
                
                case strategy = "strategy"
                
            }

            public init(level: String?, strategy: String?) {
                
                self.level = level
                
                self.strategy = strategy
                
            }

            public func duplicate() -> ArticleAssignmentV2 {
                let dict = self.dictionary!
                let copy = ArticleAssignmentV2(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    level = try container.decode(String.self, forKey: .level)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    strategy = try container.decode(String.self, forKey: .strategy)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(level, forKey: .level)
                
                
                
                
                try? container.encodeIfPresent(strategy, forKey: .strategy)
                
                
            }
            
        }
        
        /*
            Model: StoreV2
            Used By: Catalog
        */
        class StoreV2: Codable {
            
            public var name: String?
            
            public var count: Int?
            
            public var uid: Int?
            

            public enum CodingKeys: String, CodingKey {
                
                case name = "name"
                
                case count = "count"
                
                case uid = "uid"
                
            }

            public init(count: Int?, name: String?, uid: Int?) {
                
                self.name = name
                
                self.count = count
                
                self.uid = uid
                
            }

            public func duplicate() -> StoreV2 {
                let dict = self.dictionary!
                let copy = StoreV2(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    name = try container.decode(String.self, forKey: .name)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    count = try container.decode(Int.self, forKey: .count)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    uid = try container.decode(Int.self, forKey: .uid)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(name, forKey: .name)
                
                
                
                
                try? container.encodeIfPresent(count, forKey: .count)
                
                
                
                
                try? container.encodeIfPresent(uid, forKey: .uid)
                
                
            }
            
        }
        
        /*
            Model: ReturnConfigSchemaV2
            Used By: Catalog
        */
        class ReturnConfigSchemaV2: Codable {
            
            public var returnable: Bool?
            
            public var time: Int?
            
            public var unit: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case returnable = "returnable"
                
                case time = "time"
                
                case unit = "unit"
                
            }

            public init(returnable: Bool?, time: Int?, unit: String?) {
                
                self.returnable = returnable
                
                self.time = time
                
                self.unit = unit
                
            }

            public func duplicate() -> ReturnConfigSchemaV2 {
                let dict = self.dictionary!
                let copy = ReturnConfigSchemaV2(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    returnable = try container.decode(Bool.self, forKey: .returnable)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    time = try container.decode(Int.self, forKey: .time)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    unit = try container.decode(String.self, forKey: .unit)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(returnable, forKey: .returnable)
                
                
                
                
                try? container.encodeIfPresent(time, forKey: .time)
                
                
                
                
                try? container.encodeIfPresent(unit, forKey: .unit)
                
                
            }
            
        }
        
        /*
            Model: ProductSizePriceResponseV2
            Used By: Catalog
        */
        class ProductSizePriceResponseV2: Codable {
            
            public var marketplaceAttributes: [MarketPlaceSttributesSchemaV2]?
            
            public var sellerCount: Int?
            
            public var seller: SellerV2?
            
            public var price: ProductStockPriceV2?
            
            public var set: ProductSetV2?
            
            public var itemType: String?
            
            public var longLat: [Double]?
            
            public var quantity: Int?
            
            public var strategyWiseListing: [StrategyWiseListingSchemaV2]?
            
            public var articleAssignment: ArticleAssignmentV2?
            
            public var discount: String?
            
            public var store: StoreV2?
            
            public var pricePerPiece: ProductStockPriceV2?
            
            public var pincode: Int?
            
            public var articleId: String?
            
            public var returnConfig: ReturnConfigSchemaV2?
            
            public var specialBadge: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case marketplaceAttributes = "marketplace_attributes"
                
                case sellerCount = "seller_count"
                
                case seller = "seller"
                
                case price = "price"
                
                case set = "set"
                
                case itemType = "item_type"
                
                case longLat = "long_lat"
                
                case quantity = "quantity"
                
                case strategyWiseListing = "strategy_wise_listing"
                
                case articleAssignment = "article_assignment"
                
                case discount = "discount"
                
                case store = "store"
                
                case pricePerPiece = "price_per_piece"
                
                case pincode = "pincode"
                
                case articleId = "article_id"
                
                case returnConfig = "return_config"
                
                case specialBadge = "special_badge"
                
            }

            public init(articleAssignment: ArticleAssignmentV2?, articleId: String?, discount: String?, itemType: String?, longLat: [Double]?, marketplaceAttributes: [MarketPlaceSttributesSchemaV2]?, pincode: Int?, price: ProductStockPriceV2?, pricePerPiece: ProductStockPriceV2?, quantity: Int?, returnConfig: ReturnConfigSchemaV2?, seller: SellerV2?, sellerCount: Int?, set: ProductSetV2?, specialBadge: String?, store: StoreV2?, strategyWiseListing: [StrategyWiseListingSchemaV2]?) {
                
                self.marketplaceAttributes = marketplaceAttributes
                
                self.sellerCount = sellerCount
                
                self.seller = seller
                
                self.price = price
                
                self.set = set
                
                self.itemType = itemType
                
                self.longLat = longLat
                
                self.quantity = quantity
                
                self.strategyWiseListing = strategyWiseListing
                
                self.articleAssignment = articleAssignment
                
                self.discount = discount
                
                self.store = store
                
                self.pricePerPiece = pricePerPiece
                
                self.pincode = pincode
                
                self.articleId = articleId
                
                self.returnConfig = returnConfig
                
                self.specialBadge = specialBadge
                
            }

            public func duplicate() -> ProductSizePriceResponseV2 {
                let dict = self.dictionary!
                let copy = ProductSizePriceResponseV2(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    marketplaceAttributes = try container.decode([MarketPlaceSttributesSchemaV2].self, forKey: .marketplaceAttributes)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    sellerCount = try container.decode(Int.self, forKey: .sellerCount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    seller = try container.decode(SellerV2.self, forKey: .seller)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    price = try container.decode(ProductStockPriceV2.self, forKey: .price)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    set = try container.decode(ProductSetV2.self, forKey: .set)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    itemType = try container.decode(String.self, forKey: .itemType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    longLat = try container.decode([Double].self, forKey: .longLat)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    quantity = try container.decode(Int.self, forKey: .quantity)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    strategyWiseListing = try container.decode([StrategyWiseListingSchemaV2].self, forKey: .strategyWiseListing)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    articleAssignment = try container.decode(ArticleAssignmentV2.self, forKey: .articleAssignment)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    discount = try container.decode(String.self, forKey: .discount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    store = try container.decode(StoreV2.self, forKey: .store)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    pricePerPiece = try container.decode(ProductStockPriceV2.self, forKey: .pricePerPiece)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    pincode = try container.decode(Int.self, forKey: .pincode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    articleId = try container.decode(String.self, forKey: .articleId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    returnConfig = try container.decode(ReturnConfigSchemaV2.self, forKey: .returnConfig)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    specialBadge = try container.decode(String.self, forKey: .specialBadge)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(marketplaceAttributes, forKey: .marketplaceAttributes)
                
                
                
                
                try? container.encodeIfPresent(sellerCount, forKey: .sellerCount)
                
                
                
                
                try? container.encodeIfPresent(seller, forKey: .seller)
                
                
                
                
                try? container.encodeIfPresent(price, forKey: .price)
                
                
                
                
                try? container.encodeIfPresent(set, forKey: .set)
                
                
                
                
                try? container.encodeIfPresent(itemType, forKey: .itemType)
                
                
                
                
                try? container.encodeIfPresent(longLat, forKey: .longLat)
                
                
                
                
                try? container.encodeIfPresent(quantity, forKey: .quantity)
                
                
                
                
                try? container.encodeIfPresent(strategyWiseListing, forKey: .strategyWiseListing)
                
                
                
                
                try? container.encodeIfPresent(articleAssignment, forKey: .articleAssignment)
                
                
                
                
                try? container.encodeIfPresent(discount, forKey: .discount)
                
                
                
                
                try? container.encodeIfPresent(store, forKey: .store)
                
                
                
                
                try? container.encodeIfPresent(pricePerPiece, forKey: .pricePerPiece)
                
                
                
                
                try? container.encodeIfPresent(pincode, forKey: .pincode)
                
                
                
                
                try? container.encodeIfPresent(articleId, forKey: .articleId)
                
                
                
                
                try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)
                
                
                
                
                try? container.encodeIfPresent(specialBadge, forKey: .specialBadge)
                
                
            }
            
        }
        
        /*
            Model: ProductSizeSellerFilterSchemaV2
            Used By: Catalog
        */
        class ProductSizeSellerFilterSchemaV2: Codable {
            
            public var name: String?
            
            public var isSelected: Bool?
            
            public var value: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case name = "name"
                
                case isSelected = "is_selected"
                
                case value = "value"
                
            }

            public init(isSelected: Bool?, name: String?, value: String?) {
                
                self.name = name
                
                self.isSelected = isSelected
                
                self.value = value
                
            }

            public func duplicate() -> ProductSizeSellerFilterSchemaV2 {
                let dict = self.dictionary!
                let copy = ProductSizeSellerFilterSchemaV2(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    name = try container.decode(String.self, forKey: .name)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    isSelected = try container.decode(Bool.self, forKey: .isSelected)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    value = try container.decode(String.self, forKey: .value)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(name, forKey: .name)
                
                
                
                
                try? container.encodeIfPresent(isSelected, forKey: .isSelected)
                
                
                
                
                try? container.encodeIfPresent(value, forKey: .value)
                
                
            }
            
        }
        
        /*
            Model: ProductSizeSellersResponseV2
            Used By: Catalog
        */
        class ProductSizeSellersResponseV2: Codable {
            
            public var sortOn: [ProductSizeSellerFilterSchemaV2]?
            
            public var items: [ProductSizePriceResponseV2]?
            
            public var page: Page
            

            public enum CodingKeys: String, CodingKey {
                
                case sortOn = "sort_on"
                
                case items = "items"
                
                case page = "page"
                
            }

            public init(items: [ProductSizePriceResponseV2]?, page: Page, sortOn: [ProductSizeSellerFilterSchemaV2]?) {
                
                self.sortOn = sortOn
                
                self.items = items
                
                self.page = page
                
            }

            public func duplicate() -> ProductSizeSellersResponseV2 {
                let dict = self.dictionary!
                let copy = ProductSizeSellersResponseV2(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    sortOn = try container.decode([ProductSizeSellerFilterSchemaV2].self, forKey: .sortOn)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    items = try container.decode([ProductSizePriceResponseV2].self, forKey: .items)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                page = try container.decode(Page.self, forKey: .page)
                
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(sortOn, forKey: .sortOn)
                
                
                
                
                try? container.encodeIfPresent(items, forKey: .items)
                
                
                
                
                try? container.encodeIfPresent(page, forKey: .page)
                
                
            }
            
        }
        
}
