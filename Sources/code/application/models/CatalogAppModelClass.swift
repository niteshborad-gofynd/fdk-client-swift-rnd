import Foundation

import Foundation
public extension ApplicationClient {
    /*
         Model: Meta
         Used By: Catalog
     */
    class Meta: Codable {
        public var source: String?

        public enum CodingKeys: String, CodingKey {
            case source
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
            } catch {}
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
        public var type: String?

        public var url: String?

        public var meta: Meta?

        public enum CodingKeys: String, CodingKey {
            case type

            case url

            case meta
        }

        public init(meta: Meta?, type: String?, url: String?) {
            self.type = type

            self.url = url

            self.meta = meta
        }

        public func duplicate() -> Media {
            let dict = self.dictionary!
            let copy = Media(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                type = try container.decode(String.self, forKey: .type)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                url = try container.decode(String.self, forKey: .url)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                meta = try container.decode(Meta.self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(url, forKey: .url)

            try? container.encodeIfPresent(meta, forKey: .meta)
        }
    }

    /*
         Model: ProductListingActionPage
         Used By: Catalog
     */
    class ProductListingActionPage: Codable {
        public var params: [String: Any]?

        public var type: String?

        public var query: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case params

            case type

            case query
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
            } catch {}

            do {
                type = try container.decode(String.self, forKey: .type)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                query = try container.decode([String: Any].self, forKey: .query)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
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
            case type

            case page
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
            } catch {}

            do {
                page = try container.decode(ProductListingActionPage.self, forKey: .page)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(page, forKey: .page)
        }
    }

    /*
         Model: ProductBrand
         Used By: Catalog
     */
    class ProductBrand: Codable {
        public var name: String?

        public var logo: Media?

        public var action: ProductListingAction?

        public var uid: Int?

        public enum CodingKeys: String, CodingKey {
            case name

            case logo

            case action

            case uid
        }

        public init(action: ProductListingAction?, logo: Media?, name: String?, uid: Int?) {
            self.name = name

            self.logo = logo

            self.action = action

            self.uid = uid
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
            } catch {}

            do {
                logo = try container.decode(Media.self, forKey: .logo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                action = try container.decode(ProductListingAction.self, forKey: .action)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                uid = try container.decode(Int.self, forKey: .uid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(uid, forKey: .uid)
        }
    }

    /*
         Model: ProductDetailAttribute
         Used By: Catalog
     */
    class ProductDetailAttribute: Codable {
        public var type: String?

        public var key: String?

        public var value: String?

        public enum CodingKeys: String, CodingKey {
            case type

            case key

            case value
        }

        public init(key: String?, type: String?, value: String?) {
            self.type = type

            self.key = key

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
                type = try container.decode(String.self, forKey: .type)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                key = try container.decode(String.self, forKey: .key)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                value = try container.decode(String.self, forKey: .value)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(key, forKey: .key)

            try? container.encodeIfPresent(value, forKey: .value)
        }
    }

    /*
         Model: ProductDetailGroupedAttribute
         Used By: Catalog
     */
    class ProductDetailGroupedAttribute: Codable {
        public var title: String?

        public var details: [ProductDetailAttribute]?

        public enum CodingKeys: String, CodingKey {
            case title

            case details
        }

        public init(details: [ProductDetailAttribute]?, title: String?) {
            self.title = title

            self.details = details
        }

        public func duplicate() -> ProductDetailGroupedAttribute {
            let dict = self.dictionary!
            let copy = ProductDetailGroupedAttribute(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                title = try container.decode(String.self, forKey: .title)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                details = try container.decode([ProductDetailAttribute].self, forKey: .details)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encodeIfPresent(details, forKey: .details)
        }
    }

    /*
         Model: Price
         Used By: Catalog
     */
    class Price: Codable {
        public var currencyCode: String?

        public var max: Double?

        public var min: Double?

        public var currencySymbol: String?

        public enum CodingKeys: String, CodingKey {
            case currencyCode = "currency_code"

            case max

            case min

            case currencySymbol = "currency_symbol"
        }

        public init(currencyCode: String?, currencySymbol: String?, max: Double?, min: Double?) {
            self.currencyCode = currencyCode

            self.max = max

            self.min = min

            self.currencySymbol = currencySymbol
        }

        public func duplicate() -> Price {
            let dict = self.dictionary!
            let copy = Price(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                currencyCode = try container.decode(String.self, forKey: .currencyCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                max = try container.decode(Double.self, forKey: .max)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                min = try container.decode(Double.self, forKey: .min)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                currencySymbol = try container.decode(String.self, forKey: .currencySymbol)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(currencyCode, forKey: .currencyCode)

            try? container.encodeIfPresent(max, forKey: .max)

            try? container.encodeIfPresent(min, forKey: .min)

            try? container.encodeIfPresent(currencySymbol, forKey: .currencySymbol)
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
            case marked

            case effective
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
            } catch {}

            do {
                effective = try container.decode(Price.self, forKey: .effective)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(marked, forKey: .marked)

            try? container.encodeIfPresent(effective, forKey: .effective)
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
            case key

            case value
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
        public var itemCode: String?

        public var attributes: [String: Any]?

        public var slug: String

        public var categories: [ProductBrand]?

        public var color: String?

        public var uid: Int?

        public var teaserTag: String?

        public var customJson: [String: Any]?

        public var groupedAttributes: [ProductDetailGroupedAttribute]?

        public var imageNature: String?

        public var similars: [String]?

        public var price: ProductListingPrice?

        public var action: ProductListingAction?

        public var tryouts: [String]?

        public var shortDescription: String?

        public var customMeta: [MetaFields]?

        public var rating: Double?

        public var hasVariant: Bool?

        public var medias: [Media]?

        public var ratingCount: Int?

        public var type: String?

        public var productOnlineDate: String?

        public var highlights: [String]?

        public var description: String?

        public var name: String?

        public var itemType: String?

        public var discount: String?

        public var brand: ProductBrand?

        public enum CodingKeys: String, CodingKey {
            case itemCode = "item_code"

            case attributes

            case slug

            case categories

            case color

            case uid

            case teaserTag = "teaser_tag"

            case customJson = "_custom_json"

            case groupedAttributes = "grouped_attributes"

            case imageNature = "image_nature"

            case similars

            case price

            case action

            case tryouts

            case shortDescription = "short_description"

            case customMeta = "_custom_meta"

            case rating

            case hasVariant = "has_variant"

            case medias

            case ratingCount = "rating_count"

            case type

            case productOnlineDate = "product_online_date"

            case highlights

            case description

            case name

            case itemType = "item_type"

            case discount

            case brand
        }

        public init(action: ProductListingAction?, attributes: [String: Any]?, brand: ProductBrand?, categories: [ProductBrand]?, color: String?, description: String?, discount: String?, groupedAttributes: [ProductDetailGroupedAttribute]?, hasVariant: Bool?, highlights: [String]?, imageNature: String?, itemCode: String?, itemType: String?, medias: [Media]?, name: String?, price: ProductListingPrice?, productOnlineDate: String?, rating: Double?, ratingCount: Int?, shortDescription: String?, similars: [String]?, slug: String, teaserTag: String?, tryouts: [String]?, type: String?, uid: Int?, customJson: [String: Any]?, customMeta: [MetaFields]?) {
            self.itemCode = itemCode

            self.attributes = attributes

            self.slug = slug

            self.categories = categories

            self.color = color

            self.uid = uid

            self.teaserTag = teaserTag

            self.customJson = customJson

            self.groupedAttributes = groupedAttributes

            self.imageNature = imageNature

            self.similars = similars

            self.price = price

            self.action = action

            self.tryouts = tryouts

            self.shortDescription = shortDescription

            self.customMeta = customMeta

            self.rating = rating

            self.hasVariant = hasVariant

            self.medias = medias

            self.ratingCount = ratingCount

            self.type = type

            self.productOnlineDate = productOnlineDate

            self.highlights = highlights

            self.description = description

            self.name = name

            self.itemType = itemType

            self.discount = discount

            self.brand = brand
        }

        public func duplicate() -> ProductDetail {
            let dict = self.dictionary!
            let copy = ProductDetail(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                itemCode = try container.decode(String.self, forKey: .itemCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                attributes = try container.decode([String: Any].self, forKey: .attributes)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            slug = try container.decode(String.self, forKey: .slug)

            do {
                categories = try container.decode([ProductBrand].self, forKey: .categories)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                color = try container.decode(String.self, forKey: .color)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                uid = try container.decode(Int.self, forKey: .uid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                teaserTag = try container.decode(String.self, forKey: .teaserTag)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                customJson = try container.decode([String: Any].self, forKey: .customJson)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                groupedAttributes = try container.decode([ProductDetailGroupedAttribute].self, forKey: .groupedAttributes)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                imageNature = try container.decode(String.self, forKey: .imageNature)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                similars = try container.decode([String].self, forKey: .similars)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                price = try container.decode(ProductListingPrice.self, forKey: .price)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                action = try container.decode(ProductListingAction.self, forKey: .action)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                tryouts = try container.decode([String].self, forKey: .tryouts)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                shortDescription = try container.decode(String.self, forKey: .shortDescription)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                customMeta = try container.decode([MetaFields].self, forKey: .customMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                rating = try container.decode(Double.self, forKey: .rating)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                hasVariant = try container.decode(Bool.self, forKey: .hasVariant)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                medias = try container.decode([Media].self, forKey: .medias)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                ratingCount = try container.decode(Int.self, forKey: .ratingCount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                type = try container.decode(String.self, forKey: .type)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                productOnlineDate = try container.decode(String.self, forKey: .productOnlineDate)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                highlights = try container.decode([String].self, forKey: .highlights)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                description = try container.decode(String.self, forKey: .description)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                itemType = try container.decode(String.self, forKey: .itemType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                discount = try container.decode(String.self, forKey: .discount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                brand = try container.decode(ProductBrand.self, forKey: .brand)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(itemCode, forKey: .itemCode)

            try? container.encodeIfPresent(attributes, forKey: .attributes)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(categories, forKey: .categories)

            try? container.encodeIfPresent(color, forKey: .color)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(teaserTag, forKey: .teaserTag)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(groupedAttributes, forKey: .groupedAttributes)

            try? container.encodeIfPresent(imageNature, forKey: .imageNature)

            try? container.encodeIfPresent(similars, forKey: .similars)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(tryouts, forKey: .tryouts)

            try? container.encodeIfPresent(shortDescription, forKey: .shortDescription)

            try? container.encodeIfPresent(customMeta, forKey: .customMeta)

            try? container.encodeIfPresent(rating, forKey: .rating)

            try? container.encodeIfPresent(hasVariant, forKey: .hasVariant)

            try? container.encodeIfPresent(medias, forKey: .medias)

            try? container.encodeIfPresent(ratingCount, forKey: .ratingCount)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(productOnlineDate, forKey: .productOnlineDate)

            try? container.encodeIfPresent(highlights, forKey: .highlights)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(itemType, forKey: .itemType)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(brand, forKey: .brand)
        }
    }

    /*
         Model: ErrorResponse
         Used By: Catalog
     */
    class ErrorResponse: Codable {
        public var error: String?

        public enum CodingKeys: String, CodingKey {
            case error
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
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(error, forKey: .error)
        }
    }

    /*
         Model: ProductSize
         Used By: Catalog
     */
    class ProductSize: Codable {
        public var isAvailable: Bool?

        public var display: String?

        public var value: String?

        public var quantity: Int?

        public enum CodingKeys: String, CodingKey {
            case isAvailable = "is_available"

            case display

            case value

            case quantity
        }

        public init(display: String?, isAvailable: Bool?, quantity: Int?, value: String?) {
            self.isAvailable = isAvailable

            self.display = display

            self.value = value

            self.quantity = quantity
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
            } catch {}

            do {
                display = try container.decode(String.self, forKey: .display)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                value = try container.decode(String.self, forKey: .value)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                quantity = try container.decode(Int.self, forKey: .quantity)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isAvailable, forKey: .isAvailable)

            try? container.encodeIfPresent(display, forKey: .display)

            try? container.encodeIfPresent(value, forKey: .value)

            try? container.encodeIfPresent(quantity, forKey: .quantity)
        }
    }

    /*
         Model: ProductSizeStores
         Used By: Catalog
     */
    class ProductSizeStores: Codable {
        public var count: Int?

        public enum CodingKeys: String, CodingKey {
            case count
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
            } catch {}
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
        public var value: String?

        public var convertable: Bool?

        public enum CodingKeys: String, CodingKey {
            case value

            case convertable
        }

        public init(convertable: Bool?, value: String?) {
            self.value = value

            self.convertable = convertable
        }

        public func duplicate() -> ColumnHeader {
            let dict = self.dictionary!
            let copy = ColumnHeader(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                value = try container.decode(String.self, forKey: .value)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                convertable = try container.decode(Bool.self, forKey: .convertable)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(value, forKey: .value)

            try? container.encodeIfPresent(convertable, forKey: .convertable)
        }
    }

    /*
         Model: ColumnHeaders
         Used By: Catalog
     */
    class ColumnHeaders: Codable {
        public var col2: ColumnHeader?

        public var col6: ColumnHeader?

        public var col5: ColumnHeader?

        public var col1: ColumnHeader?

        public var col3: ColumnHeader?

        public var col4: ColumnHeader?

        public enum CodingKeys: String, CodingKey {
            case col2 = "col_2"

            case col6 = "col_6"

            case col5 = "col_5"

            case col1 = "col_1"

            case col3 = "col_3"

            case col4 = "col_4"
        }

        public init(col1: ColumnHeader?, col2: ColumnHeader?, col3: ColumnHeader?, col4: ColumnHeader?, col5: ColumnHeader?, col6: ColumnHeader?) {
            self.col2 = col2

            self.col6 = col6

            self.col5 = col5

            self.col1 = col1

            self.col3 = col3

            self.col4 = col4
        }

        public func duplicate() -> ColumnHeaders {
            let dict = self.dictionary!
            let copy = ColumnHeaders(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                col2 = try container.decode(ColumnHeader.self, forKey: .col2)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                col6 = try container.decode(ColumnHeader.self, forKey: .col6)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                col5 = try container.decode(ColumnHeader.self, forKey: .col5)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                col1 = try container.decode(ColumnHeader.self, forKey: .col1)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                col3 = try container.decode(ColumnHeader.self, forKey: .col3)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                col4 = try container.decode(ColumnHeader.self, forKey: .col4)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(col2, forKey: .col2)

            try? container.encodeIfPresent(col6, forKey: .col6)

            try? container.encodeIfPresent(col5, forKey: .col5)

            try? container.encodeIfPresent(col1, forKey: .col1)

            try? container.encodeIfPresent(col3, forKey: .col3)

            try? container.encodeIfPresent(col4, forKey: .col4)
        }
    }

    /*
         Model: SizeChartValues
         Used By: Catalog
     */
    class SizeChartValues: Codable {
        public var col2: String?

        public var col6: String?

        public var col5: String?

        public var col1: String?

        public var col3: String?

        public var col4: String?

        public enum CodingKeys: String, CodingKey {
            case col2 = "col_2"

            case col6 = "col_6"

            case col5 = "col_5"

            case col1 = "col_1"

            case col3 = "col_3"

            case col4 = "col_4"
        }

        public init(col1: String?, col2: String?, col3: String?, col4: String?, col5: String?, col6: String?) {
            self.col2 = col2

            self.col6 = col6

            self.col5 = col5

            self.col1 = col1

            self.col3 = col3

            self.col4 = col4
        }

        public func duplicate() -> SizeChartValues {
            let dict = self.dictionary!
            let copy = SizeChartValues(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                col2 = try container.decode(String.self, forKey: .col2)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                col6 = try container.decode(String.self, forKey: .col6)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                col5 = try container.decode(String.self, forKey: .col5)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                col1 = try container.decode(String.self, forKey: .col1)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                col3 = try container.decode(String.self, forKey: .col3)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                col4 = try container.decode(String.self, forKey: .col4)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(col2, forKey: .col2)

            try? container.encodeIfPresent(col6, forKey: .col6)

            try? container.encodeIfPresent(col5, forKey: .col5)

            try? container.encodeIfPresent(col1, forKey: .col1)

            try? container.encodeIfPresent(col3, forKey: .col3)

            try? container.encodeIfPresent(col4, forKey: .col4)
        }
    }

    /*
         Model: SizeChart
         Used By: Catalog
     */
    class SizeChart: Codable {
        public var sizeTip: String?

        public var headers: ColumnHeaders?

        public var unit: String?

        public var description: String?

        public var title: String?

        public var sizes: [SizeChartValues]?

        public var image: String?

        public enum CodingKeys: String, CodingKey {
            case sizeTip = "size_tip"

            case headers

            case unit

            case description

            case title

            case sizes

            case image
        }

        public init(description: String?, headers: ColumnHeaders?, image: String?, sizes: [SizeChartValues]?, sizeTip: String?, title: String?, unit: String?) {
            self.sizeTip = sizeTip

            self.headers = headers

            self.unit = unit

            self.description = description

            self.title = title

            self.sizes = sizes

            self.image = image
        }

        public func duplicate() -> SizeChart {
            let dict = self.dictionary!
            let copy = SizeChart(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                sizeTip = try container.decode(String.self, forKey: .sizeTip)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                headers = try container.decode(ColumnHeaders.self, forKey: .headers)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                unit = try container.decode(String.self, forKey: .unit)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                description = try container.decode(String.self, forKey: .description)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                title = try container.decode(String.self, forKey: .title)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                sizes = try container.decode([SizeChartValues].self, forKey: .sizes)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                image = try container.decode(String.self, forKey: .image)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(sizeTip, forKey: .sizeTip)

            try? container.encodeIfPresent(headers, forKey: .headers)

            try? container.encodeIfPresent(unit, forKey: .unit)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encodeIfPresent(sizes, forKey: .sizes)

            try? container.encodeIfPresent(image, forKey: .image)
        }
    }

    /*
         Model: ProductSizes
         Used By: Catalog
     */
    class ProductSizes: Codable {
        public var sellable: Bool?

        public var sizes: [ProductSize]?

        public var stores: ProductSizeStores?

        public var price: ProductListingPrice?

        public var discount: String?

        public var sizeChart: SizeChart?

        public enum CodingKeys: String, CodingKey {
            case sellable

            case sizes

            case stores

            case price

            case discount

            case sizeChart = "size_chart"
        }

        public init(discount: String?, price: ProductListingPrice?, sellable: Bool?, sizes: [ProductSize]?, sizeChart: SizeChart?, stores: ProductSizeStores?) {
            self.sellable = sellable

            self.sizes = sizes

            self.stores = stores

            self.price = price

            self.discount = discount

            self.sizeChart = sizeChart
        }

        public func duplicate() -> ProductSizes {
            let dict = self.dictionary!
            let copy = ProductSizes(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                sellable = try container.decode(Bool.self, forKey: .sellable)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                sizes = try container.decode([ProductSize].self, forKey: .sizes)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                stores = try container.decode(ProductSizeStores.self, forKey: .stores)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                price = try container.decode(ProductListingPrice.self, forKey: .price)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                discount = try container.decode(String.self, forKey: .discount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                sizeChart = try container.decode(SizeChart.self, forKey: .sizeChart)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(sellable, forKey: .sellable)

            try? container.encodeIfPresent(sizes, forKey: .sizes)

            try? container.encodeIfPresent(stores, forKey: .stores)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(sizeChart, forKey: .sizeChart)
        }
    }

    /*
         Model: AttributeDetail
         Used By: Catalog
     */
    class AttributeDetail: Codable {
        public var display: String?

        public var description: String?

        public var key: String?

        public var logo: String?

        public enum CodingKeys: String, CodingKey {
            case display

            case description

            case key

            case logo
        }

        public init(description: String?, display: String?, key: String?, logo: String?) {
            self.display = display

            self.description = description

            self.key = key

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
                display = try container.decode(String.self, forKey: .display)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                description = try container.decode(String.self, forKey: .description)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                key = try container.decode(String.self, forKey: .key)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                logo = try container.decode(String.self, forKey: .logo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(display, forKey: .display)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(key, forKey: .key)

            try? container.encodeIfPresent(logo, forKey: .logo)
        }
    }

    /*
         Model: AttributeMetadata
         Used By: Catalog
     */
    class AttributeMetadata: Codable {
        public var title: String?

        public var details: [AttributeDetail]?

        public enum CodingKeys: String, CodingKey {
            case title

            case details
        }

        public init(details: [AttributeDetail]?, title: String?) {
            self.title = title

            self.details = details
        }

        public func duplicate() -> AttributeMetadata {
            let dict = self.dictionary!
            let copy = AttributeMetadata(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                title = try container.decode(String.self, forKey: .title)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                details = try container.decode([AttributeDetail].self, forKey: .details)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encodeIfPresent(details, forKey: .details)
        }
    }

    /*
         Model: ProductsComparisonResponse
         Used By: Catalog
     */
    class ProductsComparisonResponse: Codable {
        public var items: [ProductDetail]?

        public var attributesMetadata: [AttributeMetadata]?

        public enum CodingKeys: String, CodingKey {
            case items

            case attributesMetadata = "attributes_metadata"
        }

        public init(attributesMetadata: [AttributeMetadata]?, items: [ProductDetail]?) {
            self.items = items

            self.attributesMetadata = attributesMetadata
        }

        public func duplicate() -> ProductsComparisonResponse {
            let dict = self.dictionary!
            let copy = ProductsComparisonResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                items = try container.decode([ProductDetail].self, forKey: .items)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                attributesMetadata = try container.decode([AttributeMetadata].self, forKey: .attributesMetadata)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(attributesMetadata, forKey: .attributesMetadata)
        }
    }

    /*
         Model: ProductCompareResponse
         Used By: Catalog
     */
    class ProductCompareResponse: Codable {
        public var subtitle: String?

        public var title: String?

        public var items: [ProductDetail]?

        public var attributesMetadata: [AttributeMetadata]?

        public enum CodingKeys: String, CodingKey {
            case subtitle

            case title

            case items

            case attributesMetadata = "attributes_metadata"
        }

        public init(attributesMetadata: [AttributeMetadata]?, items: [ProductDetail]?, subtitle: String?, title: String?) {
            self.subtitle = subtitle

            self.title = title

            self.items = items

            self.attributesMetadata = attributesMetadata
        }

        public func duplicate() -> ProductCompareResponse {
            let dict = self.dictionary!
            let copy = ProductCompareResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                subtitle = try container.decode(String.self, forKey: .subtitle)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                title = try container.decode(String.self, forKey: .title)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                items = try container.decode([ProductDetail].self, forKey: .items)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                attributesMetadata = try container.decode([AttributeMetadata].self, forKey: .attributesMetadata)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(subtitle, forKey: .subtitle)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(attributesMetadata, forKey: .attributesMetadata)
        }
    }

    /*
         Model: ProductFrequentlyComparedSimilarResponse
         Used By: Catalog
     */
    class ProductFrequentlyComparedSimilarResponse: Codable {
        public var similars: ProductCompareResponse?

        public enum CodingKeys: String, CodingKey {
            case similars
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
            } catch {}
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
        public var subtitle: String?

        public var title: String?

        public var items: [ProductDetail]?

        public enum CodingKeys: String, CodingKey {
            case subtitle

            case title

            case items
        }

        public init(items: [ProductDetail]?, subtitle: String?, title: String?) {
            self.subtitle = subtitle

            self.title = title

            self.items = items
        }

        public func duplicate() -> ProductSimilarItem {
            let dict = self.dictionary!
            let copy = ProductSimilarItem(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                subtitle = try container.decode(String.self, forKey: .subtitle)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                title = try container.decode(String.self, forKey: .title)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                items = try container.decode([ProductDetail].self, forKey: .items)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(subtitle, forKey: .subtitle)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encodeIfPresent(items, forKey: .items)
        }
    }

    /*
         Model: SimilarProductByTypeResponse
         Used By: Catalog
     */
    class SimilarProductByTypeResponse: Codable {
        public var similars: ProductSimilarItem?

        public enum CodingKeys: String, CodingKey {
            case similars
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
            } catch {}
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
        public var action: ProductListingAction?

        public var slug: String?

        public var medias: [Media]?

        public var isAvailable: Bool?

        public var colorName: String?

        public var value: String?

        public var name: String?

        public var color: String?

        public var uid: Int?

        public enum CodingKeys: String, CodingKey {
            case action

            case slug

            case medias

            case isAvailable = "is_available"

            case colorName = "color_name"

            case value

            case name

            case color

            case uid
        }

        public init(action: ProductListingAction?, color: String?, colorName: String?, isAvailable: Bool?, medias: [Media]?, name: String?, slug: String?, uid: Int?, value: String?) {
            self.action = action

            self.slug = slug

            self.medias = medias

            self.isAvailable = isAvailable

            self.colorName = colorName

            self.value = value

            self.name = name

            self.color = color

            self.uid = uid
        }

        public func duplicate() -> ProductVariantItemResponse {
            let dict = self.dictionary!
            let copy = ProductVariantItemResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                action = try container.decode(ProductListingAction.self, forKey: .action)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                slug = try container.decode(String.self, forKey: .slug)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                medias = try container.decode([Media].self, forKey: .medias)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isAvailable = try container.decode(Bool.self, forKey: .isAvailable)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                colorName = try container.decode(String.self, forKey: .colorName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                value = try container.decode(String.self, forKey: .value)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                color = try container.decode(String.self, forKey: .color)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                uid = try container.decode(Int.self, forKey: .uid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(medias, forKey: .medias)

            try? container.encodeIfPresent(isAvailable, forKey: .isAvailable)

            try? container.encodeIfPresent(colorName, forKey: .colorName)

            try? container.encodeIfPresent(value, forKey: .value)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(color, forKey: .color)

            try? container.encodeIfPresent(uid, forKey: .uid)
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
            case items

            case key

            case header

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
            } catch {}

            do {
                key = try container.decode(String.self, forKey: .key)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                header = try container.decode(String.self, forKey: .header)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                displayType = try container.decode(String.self, forKey: .displayType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
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
            case variants
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
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(variants, forKey: .variants)
        }
    }

    /*
         Model: Seller
         Used By: Catalog
     */
    class Seller: Codable {
        public var name: String?

        public var uid: Int?

        public var count: Int?

        public enum CodingKeys: String, CodingKey {
            case name

            case uid

            case count
        }

        public init(count: Int?, name: String?, uid: Int?) {
            self.name = name

            self.uid = uid

            self.count = count
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
            } catch {}

            do {
                uid = try container.decode(Int.self, forKey: .uid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                count = try container.decode(Int.self, forKey: .count)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(count, forKey: .count)
        }
    }

    /*
         Model: CompanyDetail
         Used By: Catalog
     */
    class CompanyDetail: Codable {
        public var name: String?

        public var id: Int?

        public enum CodingKeys: String, CodingKey {
            case name

            case id
        }

        public init(id: Int?, name: String?) {
            self.name = name

            self.id = id
        }

        public func duplicate() -> CompanyDetail {
            let dict = self.dictionary!
            let copy = CompanyDetail(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                id = try container.decode(Int.self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(id, forKey: .id)
        }
    }

    /*
         Model: StoreDetail
         Used By: Catalog
     */
    class StoreDetail: Codable {
        public var name: String?

        public var id: Int?

        public var code: String?

        public var city: String?

        public enum CodingKeys: String, CodingKey {
            case name

            case id

            case code

            case city
        }

        public init(city: String?, code: String?, id: Int?, name: String?) {
            self.name = name

            self.id = id

            self.code = code

            self.city = city
        }

        public func duplicate() -> StoreDetail {
            let dict = self.dictionary!
            let copy = StoreDetail(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                id = try container.decode(Int.self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                code = try container.decode(String.self, forKey: .code)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                city = try container.decode(String.self, forKey: .city)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(city, forKey: .city)
        }
    }

    /*
         Model: ProductStockPrice
         Used By: Catalog
     */
    class ProductStockPrice: Codable {
        public var currency: String?

        public var marked: Double?

        public var effective: Double?

        public enum CodingKeys: String, CodingKey {
            case currency

            case marked

            case effective
        }

        public init(currency: String?, effective: Double?, marked: Double?) {
            self.currency = currency

            self.marked = marked

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
                currency = try container.decode(String.self, forKey: .currency)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                marked = try container.decode(Double.self, forKey: .marked)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                effective = try container.decode(Double.self, forKey: .effective)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(marked, forKey: .marked)

            try? container.encodeIfPresent(effective, forKey: .effective)
        }
    }

    /*
         Model: ProductStockStatusItem
         Used By: Catalog
     */
    class ProductStockStatusItem: Codable {
        public var seller: Seller?

        public var company: CompanyDetail?

        public var store: StoreDetail?

        public var quantity: Int?

        public var uid: String?

        public var size: String?

        public var itemId: Int?

        public var price: ProductStockPrice?

        public var identifier: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case seller

            case company

            case store

            case quantity

            case uid

            case size

            case itemId = "item_id"

            case price

            case identifier
        }

        public init(company: CompanyDetail?, identifier: [String: Any]?, itemId: Int?, price: ProductStockPrice?, quantity: Int?, seller: Seller?, size: String?, store: StoreDetail?, uid: String?) {
            self.seller = seller

            self.company = company

            self.store = store

            self.quantity = quantity

            self.uid = uid

            self.size = size

            self.itemId = itemId

            self.price = price

            self.identifier = identifier
        }

        public func duplicate() -> ProductStockStatusItem {
            let dict = self.dictionary!
            let copy = ProductStockStatusItem(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                seller = try container.decode(Seller.self, forKey: .seller)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                company = try container.decode(CompanyDetail.self, forKey: .company)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                store = try container.decode(StoreDetail.self, forKey: .store)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                quantity = try container.decode(Int.self, forKey: .quantity)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                uid = try container.decode(String.self, forKey: .uid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                size = try container.decode(String.self, forKey: .size)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                itemId = try container.decode(Int.self, forKey: .itemId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                price = try container.decode(ProductStockPrice.self, forKey: .price)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                identifier = try container.decode([String: Any].self, forKey: .identifier)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(seller, forKey: .seller)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(store, forKey: .store)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encodeIfPresent(identifier, forKey: .identifier)
        }
    }

    /*
         Model: ProductStockStatusResponse
         Used By: Catalog
     */
    class ProductStockStatusResponse: Codable {
        public var items: [ProductStockStatusItem]?

        public enum CodingKeys: String, CodingKey {
            case items
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
            } catch {}
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
            case items

            case page
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
            } catch {}

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
            case name

            case isSelected = "is_selected"

            case value
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
            } catch {}

            do {
                isSelected = try container.decode(Bool.self, forKey: .isSelected)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                value = try container.decode(String.self, forKey: .value)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
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
        public var name: String

        public var display: String

        public var logo: String?

        public var kind: String?

        public enum CodingKeys: String, CodingKey {
            case name

            case display

            case logo

            case kind
        }

        public init(display: String, kind: String?, logo: String?, name: String) {
            self.name = name

            self.display = display

            self.logo = logo

            self.kind = kind
        }

        public func duplicate() -> ProductFiltersKey {
            let dict = self.dictionary!
            let copy = ProductFiltersKey(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            name = try container.decode(String.self, forKey: .name)

            display = try container.decode(String.self, forKey: .display)

            do {
                logo = try container.decode(String.self, forKey: .logo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                kind = try container.decode(String.self, forKey: .kind)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(display, forKey: .display)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(kind, forKey: .kind)
        }
    }

    /*
         Model: ProductFiltersValue
         Used By: Catalog
     */
    class ProductFiltersValue: Codable {
        public var selectedMin: Int?

        public var min: Int?

        public var count: Int?

        public var currencySymbol: String?

        public var selectedMax: Int?

        public var isSelected: Bool

        public var display: String

        public var currencyCode: String?

        public var displayFormat: String?

        public var value: String?

        public var max: Int?

        public var queryFormat: String?

        public enum CodingKeys: String, CodingKey {
            case selectedMin = "selected_min"

            case min

            case count

            case currencySymbol = "currency_symbol"

            case selectedMax = "selected_max"

            case isSelected = "is_selected"

            case display

            case currencyCode = "currency_code"

            case displayFormat = "display_format"

            case value

            case max

            case queryFormat = "query_format"
        }

        public init(count: Int?, currencyCode: String?, currencySymbol: String?, display: String, displayFormat: String?, isSelected: Bool, max: Int?, min: Int?, queryFormat: String?, selectedMax: Int?, selectedMin: Int?, value: String?) {
            self.selectedMin = selectedMin

            self.min = min

            self.count = count

            self.currencySymbol = currencySymbol

            self.selectedMax = selectedMax

            self.isSelected = isSelected

            self.display = display

            self.currencyCode = currencyCode

            self.displayFormat = displayFormat

            self.value = value

            self.max = max

            self.queryFormat = queryFormat
        }

        public func duplicate() -> ProductFiltersValue {
            let dict = self.dictionary!
            let copy = ProductFiltersValue(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                selectedMin = try container.decode(Int.self, forKey: .selectedMin)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                min = try container.decode(Int.self, forKey: .min)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                count = try container.decode(Int.self, forKey: .count)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                currencySymbol = try container.decode(String.self, forKey: .currencySymbol)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                selectedMax = try container.decode(Int.self, forKey: .selectedMax)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            isSelected = try container.decode(Bool.self, forKey: .isSelected)

            display = try container.decode(String.self, forKey: .display)

            do {
                currencyCode = try container.decode(String.self, forKey: .currencyCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                displayFormat = try container.decode(String.self, forKey: .displayFormat)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                value = try container.decode(String.self, forKey: .value)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                max = try container.decode(Int.self, forKey: .max)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                queryFormat = try container.decode(String.self, forKey: .queryFormat)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(selectedMin, forKey: .selectedMin)

            try? container.encodeIfPresent(min, forKey: .min)

            try? container.encodeIfPresent(count, forKey: .count)

            try? container.encodeIfPresent(currencySymbol, forKey: .currencySymbol)

            try? container.encodeIfPresent(selectedMax, forKey: .selectedMax)

            try? container.encodeIfPresent(isSelected, forKey: .isSelected)

            try? container.encodeIfPresent(display, forKey: .display)

            try? container.encodeIfPresent(currencyCode, forKey: .currencyCode)

            try? container.encodeIfPresent(displayFormat, forKey: .displayFormat)

            try? container.encodeIfPresent(value, forKey: .value)

            try? container.encodeIfPresent(max, forKey: .max)

            try? container.encodeIfPresent(queryFormat, forKey: .queryFormat)
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
            case key

            case values
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
         Model: ProductVariantListingResponse
         Used By: Catalog
     */
    class ProductVariantListingResponse: Codable {
        public var items: [ProductVariantItemResponse]?

        public var key: String?

        public var header: String?

        public var total: Int?

        public var displayType: String?

        public enum CodingKeys: String, CodingKey {
            case items

            case key

            case header

            case total

            case displayType = "display_type"
        }

        public init(displayType: String?, header: String?, items: [ProductVariantItemResponse]?, key: String?, total: Int?) {
            self.items = items

            self.key = key

            self.header = header

            self.total = total

            self.displayType = displayType
        }

        public func duplicate() -> ProductVariantListingResponse {
            let dict = self.dictionary!
            let copy = ProductVariantListingResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                items = try container.decode([ProductVariantItemResponse].self, forKey: .items)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                key = try container.decode(String.self, forKey: .key)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                header = try container.decode(String.self, forKey: .header)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                total = try container.decode(Int.self, forKey: .total)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                displayType = try container.decode(String.self, forKey: .displayType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(key, forKey: .key)

            try? container.encodeIfPresent(header, forKey: .header)

            try? container.encodeIfPresent(total, forKey: .total)

            try? container.encodeIfPresent(displayType, forKey: .displayType)
        }
    }

    /*
         Model: ProductListingDetail
         Used By: Catalog
     */
    class ProductListingDetail: Codable {
        public var itemCode: String?

        public var attributes: [String: Any]?

        public var slug: String

        public var sellable: Bool?

        public var variants: [ProductVariantListingResponse]?

        public var categories: [ProductBrand]?

        public var color: String?

        public var uid: Int?

        public var teaserTag: String?

        public var customJson: [String: Any]?

        public var groupedAttributes: [ProductDetailGroupedAttribute]?

        public var imageNature: String?

        public var similars: [String]?

        public var price: ProductListingPrice?

        public var action: ProductListingAction?

        public var tryouts: [String]?

        public var shortDescription: String?

        public var customMeta: [MetaFields]?

        public var rating: Double?

        public var hasVariant: Bool?

        public var medias: [Media]?

        public var ratingCount: Int?

        public var type: String?

        public var productOnlineDate: String?

        public var highlights: [String]?

        public var description: String?

        public var name: String?

        public var itemType: String?

        public var discount: String?

        public var brand: ProductBrand?

        public enum CodingKeys: String, CodingKey {
            case itemCode = "item_code"

            case attributes

            case slug

            case sellable

            case variants

            case categories

            case color

            case uid

            case teaserTag = "teaser_tag"

            case customJson = "_custom_json"

            case groupedAttributes = "grouped_attributes"

            case imageNature = "image_nature"

            case similars

            case price

            case action

            case tryouts

            case shortDescription = "short_description"

            case customMeta = "_custom_meta"

            case rating

            case hasVariant = "has_variant"

            case medias

            case ratingCount = "rating_count"

            case type

            case productOnlineDate = "product_online_date"

            case highlights

            case description

            case name

            case itemType = "item_type"

            case discount

            case brand
        }

        public init(action: ProductListingAction?, attributes: [String: Any]?, brand: ProductBrand?, categories: [ProductBrand]?, color: String?, description: String?, discount: String?, groupedAttributes: [ProductDetailGroupedAttribute]?, hasVariant: Bool?, highlights: [String]?, imageNature: String?, itemCode: String?, itemType: String?, medias: [Media]?, name: String?, price: ProductListingPrice?, productOnlineDate: String?, rating: Double?, ratingCount: Int?, sellable: Bool?, shortDescription: String?, similars: [String]?, slug: String, teaserTag: String?, tryouts: [String]?, type: String?, uid: Int?, variants: [ProductVariantListingResponse]?, customJson: [String: Any]?, customMeta: [MetaFields]?) {
            self.itemCode = itemCode

            self.attributes = attributes

            self.slug = slug

            self.sellable = sellable

            self.variants = variants

            self.categories = categories

            self.color = color

            self.uid = uid

            self.teaserTag = teaserTag

            self.customJson = customJson

            self.groupedAttributes = groupedAttributes

            self.imageNature = imageNature

            self.similars = similars

            self.price = price

            self.action = action

            self.tryouts = tryouts

            self.shortDescription = shortDescription

            self.customMeta = customMeta

            self.rating = rating

            self.hasVariant = hasVariant

            self.medias = medias

            self.ratingCount = ratingCount

            self.type = type

            self.productOnlineDate = productOnlineDate

            self.highlights = highlights

            self.description = description

            self.name = name

            self.itemType = itemType

            self.discount = discount

            self.brand = brand
        }

        public func duplicate() -> ProductListingDetail {
            let dict = self.dictionary!
            let copy = ProductListingDetail(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                itemCode = try container.decode(String.self, forKey: .itemCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                attributes = try container.decode([String: Any].self, forKey: .attributes)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            slug = try container.decode(String.self, forKey: .slug)

            do {
                sellable = try container.decode(Bool.self, forKey: .sellable)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                variants = try container.decode([ProductVariantListingResponse].self, forKey: .variants)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                categories = try container.decode([ProductBrand].self, forKey: .categories)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                color = try container.decode(String.self, forKey: .color)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                uid = try container.decode(Int.self, forKey: .uid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                teaserTag = try container.decode(String.self, forKey: .teaserTag)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                customJson = try container.decode([String: Any].self, forKey: .customJson)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                groupedAttributes = try container.decode([ProductDetailGroupedAttribute].self, forKey: .groupedAttributes)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                imageNature = try container.decode(String.self, forKey: .imageNature)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                similars = try container.decode([String].self, forKey: .similars)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                price = try container.decode(ProductListingPrice.self, forKey: .price)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                action = try container.decode(ProductListingAction.self, forKey: .action)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                tryouts = try container.decode([String].self, forKey: .tryouts)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                shortDescription = try container.decode(String.self, forKey: .shortDescription)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                customMeta = try container.decode([MetaFields].self, forKey: .customMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                rating = try container.decode(Double.self, forKey: .rating)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                hasVariant = try container.decode(Bool.self, forKey: .hasVariant)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                medias = try container.decode([Media].self, forKey: .medias)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                ratingCount = try container.decode(Int.self, forKey: .ratingCount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                type = try container.decode(String.self, forKey: .type)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                productOnlineDate = try container.decode(String.self, forKey: .productOnlineDate)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                highlights = try container.decode([String].self, forKey: .highlights)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                description = try container.decode(String.self, forKey: .description)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                itemType = try container.decode(String.self, forKey: .itemType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                discount = try container.decode(String.self, forKey: .discount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                brand = try container.decode(ProductBrand.self, forKey: .brand)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(itemCode, forKey: .itemCode)

            try? container.encodeIfPresent(attributes, forKey: .attributes)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(sellable, forKey: .sellable)

            try? container.encodeIfPresent(variants, forKey: .variants)

            try? container.encodeIfPresent(categories, forKey: .categories)

            try? container.encodeIfPresent(color, forKey: .color)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(teaserTag, forKey: .teaserTag)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(groupedAttributes, forKey: .groupedAttributes)

            try? container.encodeIfPresent(imageNature, forKey: .imageNature)

            try? container.encodeIfPresent(similars, forKey: .similars)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(tryouts, forKey: .tryouts)

            try? container.encodeIfPresent(shortDescription, forKey: .shortDescription)

            try? container.encodeIfPresent(customMeta, forKey: .customMeta)

            try? container.encodeIfPresent(rating, forKey: .rating)

            try? container.encodeIfPresent(hasVariant, forKey: .hasVariant)

            try? container.encodeIfPresent(medias, forKey: .medias)

            try? container.encodeIfPresent(ratingCount, forKey: .ratingCount)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(productOnlineDate, forKey: .productOnlineDate)

            try? container.encodeIfPresent(highlights, forKey: .highlights)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(itemType, forKey: .itemType)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(brand, forKey: .brand)
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

            case filters

            case items

            case page
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
            } catch {}

            do {
                filters = try container.decode([ProductFilters].self, forKey: .filters)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                items = try container.decode([ProductListingDetail].self, forKey: .items)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

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
            case landscape

            case portrait
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
            } catch {}

            do {
                portrait = try container.decode(Media.self, forKey: .portrait)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
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
        public var action: ProductListingAction?

        public var slug: String?

        public var logo: Media?

        public var banners: ImageUrls?

        public var departments: [String]?

        public var name: String?

        public var discount: String?

        public var uid: Int?

        public enum CodingKeys: String, CodingKey {
            case action

            case slug

            case logo

            case banners

            case departments

            case name

            case discount

            case uid
        }

        public init(action: ProductListingAction?, banners: ImageUrls?, departments: [String]?, discount: String?, logo: Media?, name: String?, slug: String?, uid: Int?) {
            self.action = action

            self.slug = slug

            self.logo = logo

            self.banners = banners

            self.departments = departments

            self.name = name

            self.discount = discount

            self.uid = uid
        }

        public func duplicate() -> BrandItem {
            let dict = self.dictionary!
            let copy = BrandItem(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                action = try container.decode(ProductListingAction.self, forKey: .action)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                slug = try container.decode(String.self, forKey: .slug)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                logo = try container.decode(Media.self, forKey: .logo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                banners = try container.decode(ImageUrls.self, forKey: .banners)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                departments = try container.decode([String].self, forKey: .departments)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                discount = try container.decode(String.self, forKey: .discount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                uid = try container.decode(Int.self, forKey: .uid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(banners, forKey: .banners)

            try? container.encodeIfPresent(departments, forKey: .departments)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(uid, forKey: .uid)
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
            case items

            case page
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
            } catch {}

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
        public var name: String?

        public var logo: Media?

        public var banners: ImageUrls?

        public var uid: Int?

        public enum CodingKeys: String, CodingKey {
            case name

            case logo

            case banners

            case uid
        }

        public init(banners: ImageUrls?, logo: Media?, name: String?, uid: Int?) {
            self.name = name

            self.logo = logo

            self.banners = banners

            self.uid = uid
        }

        public func duplicate() -> BrandDetailResponse {
            let dict = self.dictionary!
            let copy = BrandDetailResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                logo = try container.decode(Media.self, forKey: .logo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                banners = try container.decode(ImageUrls.self, forKey: .banners)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                uid = try container.decode(Int.self, forKey: .uid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(banners, forKey: .banners)

            try? container.encodeIfPresent(uid, forKey: .uid)
        }
    }

    /*
         Model: ThirdLevelChild
         Used By: Catalog
     */
    class ThirdLevelChild: Codable {
        public var action: ProductListingAction?

        public var customJson: [String: Any]?

        public var slug: String?

        public var banners: ImageUrls?

        public var childs: [[String: Any]]?

        public var name: String?

        public var uid: Int?

        public enum CodingKeys: String, CodingKey {
            case action

            case customJson = "_custom_json"

            case slug

            case banners

            case childs

            case name

            case uid
        }

        public init(action: ProductListingAction?, banners: ImageUrls?, childs: [[String: Any]]?, name: String?, slug: String?, uid: Int?, customJson: [String: Any]?) {
            self.action = action

            self.customJson = customJson

            self.slug = slug

            self.banners = banners

            self.childs = childs

            self.name = name

            self.uid = uid
        }

        public func duplicate() -> ThirdLevelChild {
            let dict = self.dictionary!
            let copy = ThirdLevelChild(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                action = try container.decode(ProductListingAction.self, forKey: .action)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                customJson = try container.decode([String: Any].self, forKey: .customJson)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                slug = try container.decode(String.self, forKey: .slug)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                banners = try container.decode(ImageUrls.self, forKey: .banners)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                childs = try container.decode([[String: Any]].self, forKey: .childs)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                uid = try container.decode(Int.self, forKey: .uid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(banners, forKey: .banners)

            try? container.encodeIfPresent(childs, forKey: .childs)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(uid, forKey: .uid)
        }
    }

    /*
         Model: SecondLevelChild
         Used By: Catalog
     */
    class SecondLevelChild: Codable {
        public var action: ProductListingAction?

        public var customJson: [String: Any]?

        public var slug: String?

        public var banners: ImageUrls?

        public var childs: [ThirdLevelChild]?

        public var name: String?

        public var uid: Int?

        public enum CodingKeys: String, CodingKey {
            case action

            case customJson = "_custom_json"

            case slug

            case banners

            case childs

            case name

            case uid
        }

        public init(action: ProductListingAction?, banners: ImageUrls?, childs: [ThirdLevelChild]?, name: String?, slug: String?, uid: Int?, customJson: [String: Any]?) {
            self.action = action

            self.customJson = customJson

            self.slug = slug

            self.banners = banners

            self.childs = childs

            self.name = name

            self.uid = uid
        }

        public func duplicate() -> SecondLevelChild {
            let dict = self.dictionary!
            let copy = SecondLevelChild(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                action = try container.decode(ProductListingAction.self, forKey: .action)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                customJson = try container.decode([String: Any].self, forKey: .customJson)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                slug = try container.decode(String.self, forKey: .slug)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                banners = try container.decode(ImageUrls.self, forKey: .banners)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                childs = try container.decode([ThirdLevelChild].self, forKey: .childs)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                uid = try container.decode(Int.self, forKey: .uid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(banners, forKey: .banners)

            try? container.encodeIfPresent(childs, forKey: .childs)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(uid, forKey: .uid)
        }
    }

    /*
         Model: Child
         Used By: Catalog
     */
    class Child: Codable {
        public var action: ProductListingAction?

        public var customJson: [String: Any]?

        public var slug: String?

        public var banners: ImageUrls?

        public var childs: [SecondLevelChild]?

        public var name: String?

        public var uid: Int?

        public enum CodingKeys: String, CodingKey {
            case action

            case customJson = "_custom_json"

            case slug

            case banners

            case childs

            case name

            case uid
        }

        public init(action: ProductListingAction?, banners: ImageUrls?, childs: [SecondLevelChild]?, name: String?, slug: String?, uid: Int?, customJson: [String: Any]?) {
            self.action = action

            self.customJson = customJson

            self.slug = slug

            self.banners = banners

            self.childs = childs

            self.name = name

            self.uid = uid
        }

        public func duplicate() -> Child {
            let dict = self.dictionary!
            let copy = Child(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                action = try container.decode(ProductListingAction.self, forKey: .action)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                customJson = try container.decode([String: Any].self, forKey: .customJson)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                slug = try container.decode(String.self, forKey: .slug)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                banners = try container.decode(ImageUrls.self, forKey: .banners)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                childs = try container.decode([SecondLevelChild].self, forKey: .childs)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                uid = try container.decode(Int.self, forKey: .uid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(banners, forKey: .banners)

            try? container.encodeIfPresent(childs, forKey: .childs)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(uid, forKey: .uid)
        }
    }

    /*
         Model: CategoryItems
         Used By: Catalog
     */
    class CategoryItems: Codable {
        public var action: ProductListingAction?

        public var slug: String?

        public var banners: ImageUrls?

        public var childs: [Child]?

        public var name: String?

        public var uid: Int?

        public enum CodingKeys: String, CodingKey {
            case action

            case slug

            case banners

            case childs

            case name

            case uid
        }

        public init(action: ProductListingAction?, banners: ImageUrls?, childs: [Child]?, name: String?, slug: String?, uid: Int?) {
            self.action = action

            self.slug = slug

            self.banners = banners

            self.childs = childs

            self.name = name

            self.uid = uid
        }

        public func duplicate() -> CategoryItems {
            let dict = self.dictionary!
            let copy = CategoryItems(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                action = try container.decode(ProductListingAction.self, forKey: .action)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                slug = try container.decode(String.self, forKey: .slug)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                banners = try container.decode(ImageUrls.self, forKey: .banners)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                childs = try container.decode([Child].self, forKey: .childs)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                uid = try container.decode(Int.self, forKey: .uid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(banners, forKey: .banners)

            try? container.encodeIfPresent(childs, forKey: .childs)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(uid, forKey: .uid)
        }
    }

    /*
         Model: DepartmentCategoryTree
         Used By: Catalog
     */
    class DepartmentCategoryTree: Codable {
        public var items: [CategoryItems]?

        public var department: String?

        public enum CodingKeys: String, CodingKey {
            case items

            case department
        }

        public init(department: String?, items: [CategoryItems]?) {
            self.items = items

            self.department = department
        }

        public func duplicate() -> DepartmentCategoryTree {
            let dict = self.dictionary!
            let copy = DepartmentCategoryTree(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                items = try container.decode([CategoryItems].self, forKey: .items)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                department = try container.decode(String.self, forKey: .department)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(department, forKey: .department)
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
            case slug

            case uid
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
            } catch {}

            do {
                uid = try container.decode(Int.self, forKey: .uid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(uid, forKey: .uid)
        }
    }

    /*
         Model: CategoryListingResponse
         Used By: Catalog
     */
    class CategoryListingResponse: Codable {
        public var data: [DepartmentCategoryTree]?

        public var departments: [DepartmentIdentifier]?

        public enum CodingKeys: String, CodingKey {
            case data

            case departments
        }

        public init(data: [DepartmentCategoryTree]?, departments: [DepartmentIdentifier]?) {
            self.data = data

            self.departments = departments
        }

        public func duplicate() -> CategoryListingResponse {
            let dict = self.dictionary!
            let copy = CategoryListingResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                data = try container.decode([DepartmentCategoryTree].self, forKey: .data)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                departments = try container.decode([DepartmentIdentifier].self, forKey: .departments)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(data, forKey: .data)

            try? container.encodeIfPresent(departments, forKey: .departments)
        }
    }

    /*
         Model: CategoryMetaResponse
         Used By: Catalog
     */
    class CategoryMetaResponse: Codable {
        public var name: String?

        public var logo: Media?

        public var banners: ImageUrls?

        public var uid: Int?

        public enum CodingKeys: String, CodingKey {
            case name

            case logo

            case banners

            case uid
        }

        public init(banners: ImageUrls?, logo: Media?, name: String?, uid: Int?) {
            self.name = name

            self.logo = logo

            self.banners = banners

            self.uid = uid
        }

        public func duplicate() -> CategoryMetaResponse {
            let dict = self.dictionary!
            let copy = CategoryMetaResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                logo = try container.decode(Media.self, forKey: .logo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                banners = try container.decode(ImageUrls.self, forKey: .banners)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                uid = try container.decode(Int.self, forKey: .uid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(banners, forKey: .banners)

            try? container.encodeIfPresent(uid, forKey: .uid)
        }
    }

    /*
         Model: HomeListingResponse
         Used By: Catalog
     */
    class HomeListingResponse: Codable {
        public var items: [ProductListingDetail]?

        public var message: String?

        public var page: Page

        public enum CodingKeys: String, CodingKey {
            case items

            case message

            case page
        }

        public init(items: [ProductListingDetail]?, message: String?, page: Page) {
            self.items = items

            self.message = message

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
                items = try container.decode([ProductListingDetail].self, forKey: .items)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                message = try container.decode(String.self, forKey: .message)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            page = try container.decode(Page.self, forKey: .page)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(page, forKey: .page)
        }
    }

    /*
         Model: Department
         Used By: Catalog
     */
    class Department: Codable {
        public var slug: String?

        public var logo: Media?

        public var priorityOrder: Int?

        public var name: String?

        public var uid: Int?

        public enum CodingKeys: String, CodingKey {
            case slug

            case logo

            case priorityOrder = "priority_order"

            case name

            case uid
        }

        public init(logo: Media?, name: String?, priorityOrder: Int?, slug: String?, uid: Int?) {
            self.slug = slug

            self.logo = logo

            self.priorityOrder = priorityOrder

            self.name = name

            self.uid = uid
        }

        public func duplicate() -> Department {
            let dict = self.dictionary!
            let copy = Department(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                slug = try container.decode(String.self, forKey: .slug)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                logo = try container.decode(Media.self, forKey: .logo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                priorityOrder = try container.decode(Int.self, forKey: .priorityOrder)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                uid = try container.decode(Int.self, forKey: .uid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(priorityOrder, forKey: .priorityOrder)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(uid, forKey: .uid)
        }
    }

    /*
         Model: DepartmentResponse
         Used By: Catalog
     */
    class DepartmentResponse: Codable {
        public var items: [Department]?

        public enum CodingKeys: String, CodingKey {
            case items
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
            } catch {}
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
            case type

            case display

            case action

            case logo
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
            } catch {}

            do {
                display = try container.decode(String.self, forKey: .display)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                action = try container.decode(ProductListingAction.self, forKey: .action)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                logo = try container.decode(Media.self, forKey: .logo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
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
            case items
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
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(items, forKey: .items)
        }
    }

    /*
         Model: CollectionListingFilterType
         Used By: Catalog
     */
    class CollectionListingFilterType: Codable {
        public var name: String?

        public var isSelected: Bool?

        public var display: String?

        public enum CodingKeys: String, CodingKey {
            case name

            case isSelected = "is_selected"

            case display
        }

        public init(display: String?, isSelected: Bool?, name: String?) {
            self.name = name

            self.isSelected = isSelected

            self.display = display
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
            } catch {}

            do {
                isSelected = try container.decode(Bool.self, forKey: .isSelected)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                display = try container.decode(String.self, forKey: .display)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(isSelected, forKey: .isSelected)

            try? container.encodeIfPresent(display, forKey: .display)
        }
    }

    /*
         Model: CollectionListingFilterTag
         Used By: Catalog
     */
    class CollectionListingFilterTag: Codable {
        public var name: String?

        public var isSelected: Bool?

        public var display: String?

        public enum CodingKeys: String, CodingKey {
            case name

            case isSelected = "is_selected"

            case display
        }

        public init(display: String?, isSelected: Bool?, name: String?) {
            self.name = name

            self.isSelected = isSelected

            self.display = display
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
            } catch {}

            do {
                isSelected = try container.decode(Bool.self, forKey: .isSelected)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                display = try container.decode(String.self, forKey: .display)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(isSelected, forKey: .isSelected)

            try? container.encodeIfPresent(display, forKey: .display)
        }
    }

    /*
         Model: CollectionListingFilter
         Used By: Catalog
     */
    class CollectionListingFilter: Codable {
        public var type: [CollectionListingFilterType]?

        public var tags: [CollectionListingFilterTag]?

        public enum CodingKeys: String, CodingKey {
            case type

            case tags
        }

        public init(tags: [CollectionListingFilterTag]?, type: [CollectionListingFilterType]?) {
            self.type = type

            self.tags = tags
        }

        public func duplicate() -> CollectionListingFilter {
            let dict = self.dictionary!
            let copy = CollectionListingFilter(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                type = try container.decode([CollectionListingFilterType].self, forKey: .type)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                tags = try container.decode([CollectionListingFilterTag].self, forKey: .tags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(tags, forKey: .tags)
        }
    }

    /*
         Model: GetCollectionDetailNest
         Used By: Catalog
     */
    class GetCollectionDetailNest: Codable {
        public var badge: [String: Any]?

        public var isActive: Bool?

        public var slug: String?

        public var tag: [String]?

        public var uid: String?

        public var logo: Media?

        public var meta: [String: Any]?

        public var action: ProductListingAction?

        public var allowFacets: Bool?

        public var visibleFacetsKeys: [String]?

        public var banners: ImageUrls?

        public var schedule: [String: Any]?

        public var appId: String?

        public var query: [String: Any]?

        public var cron: [String: Any]?

        public var allowSort: Bool?

        public var description: String?

        public var type: String?

        public var name: String?

        public enum CodingKeys: String, CodingKey {
            case badge

            case isActive = "is_active"

            case slug

            case tag

            case uid

            case logo

            case meta

            case action

            case allowFacets = "allow_facets"

            case visibleFacetsKeys = "visible_facets_keys"

            case banners

            case schedule = "_schedule"

            case appId = "app_id"

            case query

            case cron

            case allowSort = "allow_sort"

            case description

            case type

            case name
        }

        public init(action: ProductListingAction?, allowFacets: Bool?, allowSort: Bool?, appId: String?, badge: [String: Any]?, banners: ImageUrls?, cron: [String: Any]?, description: String?, isActive: Bool?, logo: Media?, meta: [String: Any]?, name: String?, query: [String: Any]?, slug: String?, tag: [String]?, type: String?, uid: String?, visibleFacetsKeys: [String]?, schedule: [String: Any]?) {
            self.badge = badge

            self.isActive = isActive

            self.slug = slug

            self.tag = tag

            self.uid = uid

            self.logo = logo

            self.meta = meta

            self.action = action

            self.allowFacets = allowFacets

            self.visibleFacetsKeys = visibleFacetsKeys

            self.banners = banners

            self.schedule = schedule

            self.appId = appId

            self.query = query

            self.cron = cron

            self.allowSort = allowSort

            self.description = description

            self.type = type

            self.name = name
        }

        public func duplicate() -> GetCollectionDetailNest {
            let dict = self.dictionary!
            let copy = GetCollectionDetailNest(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                badge = try container.decode([String: Any].self, forKey: .badge)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                slug = try container.decode(String.self, forKey: .slug)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                tag = try container.decode([String].self, forKey: .tag)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                uid = try container.decode(String.self, forKey: .uid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                logo = try container.decode(Media.self, forKey: .logo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                action = try container.decode(ProductListingAction.self, forKey: .action)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                allowFacets = try container.decode(Bool.self, forKey: .allowFacets)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                visibleFacetsKeys = try container.decode([String].self, forKey: .visibleFacetsKeys)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                banners = try container.decode(ImageUrls.self, forKey: .banners)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                schedule = try container.decode([String: Any].self, forKey: .schedule)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                appId = try container.decode(String.self, forKey: .appId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                query = try container.decode([String: Any].self, forKey: .query)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                cron = try container.decode([String: Any].self, forKey: .cron)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                allowSort = try container.decode(Bool.self, forKey: .allowSort)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                description = try container.decode(String.self, forKey: .description)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                type = try container.decode(String.self, forKey: .type)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(badge, forKey: .badge)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(tag, forKey: .tag)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(allowFacets, forKey: .allowFacets)

            try? container.encodeIfPresent(visibleFacetsKeys, forKey: .visibleFacetsKeys)

            try? container.encodeIfPresent(banners, forKey: .banners)

            try? container.encodeIfPresent(schedule, forKey: .schedule)

            try? container.encodeIfPresent(appId, forKey: .appId)

            try? container.encodeIfPresent(query, forKey: .query)

            try? container.encodeIfPresent(cron, forKey: .cron)

            try? container.encodeIfPresent(allowSort, forKey: .allowSort)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(name, forKey: .name)
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
            case filters

            case items

            case page
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
            } catch {}

            do {
                items = try container.decode([GetCollectionDetailNest].self, forKey: .items)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

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
        public var badge: [String: Any]?

        public var isActive: Bool?

        public var cron: [String: Any]?

        public var allowFacets: Bool?

        public var slug: String?

        public var logo: Media?

        public var allowSort: Bool?

        public var banners: ImageUrls?

        public var visibleFacetsKeys: [String]?

        public var tag: [String]?

        public var description: String?

        public var type: String?

        public var schedule: [String: Any]?

        public var appId: String?

        public var query: [String: Any]?

        public var name: String?

        public var meta: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case badge

            case isActive = "is_active"

            case cron

            case allowFacets = "allow_facets"

            case slug

            case logo

            case allowSort = "allow_sort"

            case banners

            case visibleFacetsKeys = "visible_facets_keys"

            case tag

            case description

            case type

            case schedule = "_schedule"

            case appId = "app_id"

            case query

            case name

            case meta
        }

        public init(allowFacets: Bool?, allowSort: Bool?, appId: String?, badge: [String: Any]?, banners: ImageUrls?, cron: [String: Any]?, description: String?, isActive: Bool?, logo: Media?, meta: [String: Any]?, name: String?, query: [String: Any]?, slug: String?, tag: [String]?, type: String?, visibleFacetsKeys: [String]?, schedule: [String: Any]?) {
            self.badge = badge

            self.isActive = isActive

            self.cron = cron

            self.allowFacets = allowFacets

            self.slug = slug

            self.logo = logo

            self.allowSort = allowSort

            self.banners = banners

            self.visibleFacetsKeys = visibleFacetsKeys

            self.tag = tag

            self.description = description

            self.type = type

            self.schedule = schedule

            self.appId = appId

            self.query = query

            self.name = name

            self.meta = meta
        }

        public func duplicate() -> CollectionDetailResponse {
            let dict = self.dictionary!
            let copy = CollectionDetailResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                badge = try container.decode([String: Any].self, forKey: .badge)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                cron = try container.decode([String: Any].self, forKey: .cron)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                allowFacets = try container.decode(Bool.self, forKey: .allowFacets)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                slug = try container.decode(String.self, forKey: .slug)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                logo = try container.decode(Media.self, forKey: .logo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                allowSort = try container.decode(Bool.self, forKey: .allowSort)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                banners = try container.decode(ImageUrls.self, forKey: .banners)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                visibleFacetsKeys = try container.decode([String].self, forKey: .visibleFacetsKeys)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                tag = try container.decode([String].self, forKey: .tag)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                description = try container.decode(String.self, forKey: .description)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                type = try container.decode(String.self, forKey: .type)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                schedule = try container.decode([String: Any].self, forKey: .schedule)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                appId = try container.decode(String.self, forKey: .appId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                query = try container.decode([String: Any].self, forKey: .query)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(badge, forKey: .badge)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(cron, forKey: .cron)

            try? container.encodeIfPresent(allowFacets, forKey: .allowFacets)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(allowSort, forKey: .allowSort)

            try? container.encodeIfPresent(banners, forKey: .banners)

            try? container.encodeIfPresent(visibleFacetsKeys, forKey: .visibleFacetsKeys)

            try? container.encodeIfPresent(tag, forKey: .tag)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(schedule, forKey: .schedule)

            try? container.encodeIfPresent(appId, forKey: .appId)

            try? container.encodeIfPresent(query, forKey: .query)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(meta, forKey: .meta)
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
            case items

            case page
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
            case message

            case id
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
            case count
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
            } catch {}
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
        public var brands: [Int]?

        public var products: [Int]?

        public var collections: [Int]?

        public enum CodingKeys: String, CodingKey {
            case brands

            case products

            case collections
        }

        public init(brands: [Int]?, collections: [Int]?, products: [Int]?) {
            self.brands = brands

            self.products = products

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
                brands = try container.decode([Int].self, forKey: .brands)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                products = try container.decode([Int].self, forKey: .products)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                collections = try container.decode([Int].self, forKey: .collections)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(brands, forKey: .brands)

            try? container.encodeIfPresent(products, forKey: .products)

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
            case data
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
            } catch {}
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
            case type

            case coordinates
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
            } catch {}

            do {
                coordinates = try container.decode([Double].self, forKey: .coordinates)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
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
        public var city: String?

        public var state: String?

        public var storeEmail: String?

        public var latLong: LatLong?

        public var pincode: Int?

        public var name: String?

        public var country: String?

        public var uid: Int?

        public var storeCode: String?

        public var address: String?

        public enum CodingKeys: String, CodingKey {
            case city

            case state

            case storeEmail = "store_email"

            case latLong = "lat_long"

            case pincode

            case name

            case country

            case uid

            case storeCode = "store_code"

            case address
        }

        public init(address: String?, city: String?, country: String?, latLong: LatLong?, name: String?, pincode: Int?, state: String?, storeCode: String?, storeEmail: String?, uid: Int?) {
            self.city = city

            self.state = state

            self.storeEmail = storeEmail

            self.latLong = latLong

            self.pincode = pincode

            self.name = name

            self.country = country

            self.uid = uid

            self.storeCode = storeCode

            self.address = address
        }

        public func duplicate() -> Store {
            let dict = self.dictionary!
            let copy = Store(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                city = try container.decode(String.self, forKey: .city)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                state = try container.decode(String.self, forKey: .state)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                storeEmail = try container.decode(String.self, forKey: .storeEmail)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                latLong = try container.decode(LatLong.self, forKey: .latLong)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                pincode = try container.decode(Int.self, forKey: .pincode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                country = try container.decode(String.self, forKey: .country)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                uid = try container.decode(Int.self, forKey: .uid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                storeCode = try container.decode(String.self, forKey: .storeCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                address = try container.decode(String.self, forKey: .address)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(storeEmail, forKey: .storeEmail)

            try? container.encodeIfPresent(latLong, forKey: .latLong)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(storeCode, forKey: .storeCode)

            try? container.encodeIfPresent(address, forKey: .address)
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
            case items

            case page
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
        public var slug: String?

        public var logo: String?

        public var priorityOrder: Int?

        public var name: String?

        public var uid: Int?

        public enum CodingKeys: String, CodingKey {
            case slug

            case logo

            case priorityOrder = "priority_order"

            case name

            case uid
        }

        public init(logo: String?, name: String?, priorityOrder: Int?, slug: String?, uid: Int?) {
            self.slug = slug

            self.logo = logo

            self.priorityOrder = priorityOrder

            self.name = name

            self.uid = uid
        }

        public func duplicate() -> StoreDepartments {
            let dict = self.dictionary!
            let copy = StoreDepartments(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                slug = try container.decode(String.self, forKey: .slug)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                logo = try container.decode(String.self, forKey: .logo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                priorityOrder = try container.decode(Int.self, forKey: .priorityOrder)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                uid = try container.decode(Int.self, forKey: .uid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(priorityOrder, forKey: .priorityOrder)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(uid, forKey: .uid)
        }
    }

    /*
         Model: SellerPhoneNumber
         Used By: Catalog
     */
    class SellerPhoneNumber: Codable {
        public var countryCode: Int

        public var number: String

        public enum CodingKeys: String, CodingKey {
            case countryCode = "country_code"

            case number
        }

        public init(countryCode: Int, number: String) {
            self.countryCode = countryCode

            self.number = number
        }

        public func duplicate() -> SellerPhoneNumber {
            let dict = self.dictionary!
            let copy = SellerPhoneNumber(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            countryCode = try container.decode(Int.self, forKey: .countryCode)

            number = try container.decode(String.self, forKey: .number)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(countryCode, forKey: .countryCode)

            try? container.encodeIfPresent(number, forKey: .number)
        }
    }

    /*
         Model: CompanyStore
         Used By: Catalog
     */
    class CompanyStore: Codable {
        public var name: String?

        public var businessType: String?

        public var companyType: String?

        public var uid: Int?

        public enum CodingKeys: String, CodingKey {
            case name

            case businessType = "business_type"

            case companyType = "company_type"

            case uid
        }

        public init(businessType: String?, companyType: String?, name: String?, uid: Int?) {
            self.name = name

            self.businessType = businessType

            self.companyType = companyType

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
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                businessType = try container.decode(String.self, forKey: .businessType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                companyType = try container.decode(String.self, forKey: .companyType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                uid = try container.decode(Int.self, forKey: .uid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(businessType, forKey: .businessType)

            try? container.encodeIfPresent(companyType, forKey: .companyType)

            try? container.encodeIfPresent(uid, forKey: .uid)
        }
    }

    /*
         Model: StoreAddressSerializer
         Used By: Catalog
     */
    class StoreAddressSerializer: Codable {
        public var latitude: Double?

        public var city: String?

        public var address1: String?

        public var state: String?

        public var landmark: String?

        public var pincode: Int?

        public var country: String?

        public var longitude: Double?

        public var address2: String?

        public enum CodingKeys: String, CodingKey {
            case latitude

            case city

            case address1

            case state

            case landmark

            case pincode

            case country

            case longitude

            case address2
        }

        public init(address1: String?, address2: String?, city: String?, country: String?, landmark: String?, latitude: Double?, longitude: Double?, pincode: Int?, state: String?) {
            self.latitude = latitude

            self.city = city

            self.address1 = address1

            self.state = state

            self.landmark = landmark

            self.pincode = pincode

            self.country = country

            self.longitude = longitude

            self.address2 = address2
        }

        public func duplicate() -> StoreAddressSerializer {
            let dict = self.dictionary!
            let copy = StoreAddressSerializer(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                latitude = try container.decode(Double.self, forKey: .latitude)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                city = try container.decode(String.self, forKey: .city)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                address1 = try container.decode(String.self, forKey: .address1)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                state = try container.decode(String.self, forKey: .state)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                landmark = try container.decode(String.self, forKey: .landmark)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                pincode = try container.decode(Int.self, forKey: .pincode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                country = try container.decode(String.self, forKey: .country)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                longitude = try container.decode(Double.self, forKey: .longitude)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                address2 = try container.decode(String.self, forKey: .address2)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(landmark, forKey: .landmark)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encodeIfPresent(address2, forKey: .address2)
        }
    }

    /*
         Model: StoreManagerSerializer
         Used By: Catalog
     */
    class StoreManagerSerializer: Codable {
        public var name: String?

        public var email: String?

        public var mobileNo: SellerPhoneNumber?

        public enum CodingKeys: String, CodingKey {
            case name

            case email

            case mobileNo = "mobile_no"
        }

        public init(email: String?, mobileNo: SellerPhoneNumber?, name: String?) {
            self.name = name

            self.email = email

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
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                email = try container.decode(String.self, forKey: .email)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                mobileNo = try container.decode(SellerPhoneNumber.self, forKey: .mobileNo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(mobileNo, forKey: .mobileNo)
        }
    }

    /*
         Model: AppStore
         Used By: Catalog
     */
    class AppStore: Codable {
        public var contactNumbers: [SellerPhoneNumber]?

        public var company: CompanyStore?

        public var address: StoreAddressSerializer?

        public var name: String?

        public var departments: [StoreDepartments]?

        public var uid: Int?

        public var manager: StoreManagerSerializer?

        public enum CodingKeys: String, CodingKey {
            case contactNumbers = "contact_numbers"

            case company

            case address

            case name

            case departments

            case uid

            case manager
        }

        public init(address: StoreAddressSerializer?, company: CompanyStore?, contactNumbers: [SellerPhoneNumber]?, departments: [StoreDepartments]?, manager: StoreManagerSerializer?, name: String?, uid: Int?) {
            self.contactNumbers = contactNumbers

            self.company = company

            self.address = address

            self.name = name

            self.departments = departments

            self.uid = uid

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
                contactNumbers = try container.decode([SellerPhoneNumber].self, forKey: .contactNumbers)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                company = try container.decode(CompanyStore.self, forKey: .company)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                address = try container.decode(StoreAddressSerializer.self, forKey: .address)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                departments = try container.decode([StoreDepartments].self, forKey: .departments)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                uid = try container.decode(Int.self, forKey: .uid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                manager = try container.decode(StoreManagerSerializer.self, forKey: .manager)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(contactNumbers, forKey: .contactNumbers)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(departments, forKey: .departments)

            try? container.encodeIfPresent(uid, forKey: .uid)

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
            case filters

            case items

            case page
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
            } catch {}

            do {
                items = try container.decode([AppStore].self, forKey: .items)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                page = try container.decode(Page.self, forKey: .page)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
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
            case minute

            case hour
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
            } catch {}

            do {
                hour = try container.decode(Int.self, forKey: .hour)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
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
        public var weekday: String?

        public var open: Bool?

        public var closing: Time?

        public var opening: Time?

        public enum CodingKeys: String, CodingKey {
            case weekday

            case open

            case closing

            case opening
        }

        public init(closing: Time?, open: Bool?, opening: Time?, weekday: String?) {
            self.weekday = weekday

            self.open = open

            self.closing = closing

            self.opening = opening
        }

        public func duplicate() -> StoreTiming {
            let dict = self.dictionary!
            let copy = StoreTiming(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                weekday = try container.decode(String.self, forKey: .weekday)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                open = try container.decode(Bool.self, forKey: .open)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                closing = try container.decode(Time.self, forKey: .closing)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                opening = try container.decode(Time.self, forKey: .opening)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(weekday, forKey: .weekday)

            try? container.encodeIfPresent(open, forKey: .open)

            try? container.encodeIfPresent(closing, forKey: .closing)

            try? container.encodeIfPresent(opening, forKey: .opening)
        }
    }

    /*
         Model: StoreDetails
         Used By: Catalog
     */
    class StoreDetails: Codable {
        public var contactNumbers: [SellerPhoneNumber]?

        public var timing: [StoreTiming]?

        public var company: CompanyStore?

        public var address: StoreAddressSerializer?

        public var customJson: [String: Any]?

        public var name: String?

        public var departments: [StoreDepartments]?

        public var uid: Int?

        public var manager: StoreManagerSerializer?

        public enum CodingKeys: String, CodingKey {
            case contactNumbers = "contact_numbers"

            case timing

            case company

            case address

            case customJson = "_custom_json"

            case name

            case departments

            case uid

            case manager
        }

        public init(address: StoreAddressSerializer?, company: CompanyStore?, contactNumbers: [SellerPhoneNumber]?, departments: [StoreDepartments]?, manager: StoreManagerSerializer?, name: String?, timing: [StoreTiming]?, uid: Int?, customJson: [String: Any]?) {
            self.contactNumbers = contactNumbers

            self.timing = timing

            self.company = company

            self.address = address

            self.customJson = customJson

            self.name = name

            self.departments = departments

            self.uid = uid

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
                contactNumbers = try container.decode([SellerPhoneNumber].self, forKey: .contactNumbers)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                timing = try container.decode([StoreTiming].self, forKey: .timing)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                company = try container.decode(CompanyStore.self, forKey: .company)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                address = try container.decode(StoreAddressSerializer.self, forKey: .address)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                customJson = try container.decode([String: Any].self, forKey: .customJson)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                departments = try container.decode([StoreDepartments].self, forKey: .departments)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                uid = try container.decode(Int.self, forKey: .uid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                manager = try container.decode(StoreManagerSerializer.self, forKey: .manager)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(contactNumbers, forKey: .contactNumbers)

            try? container.encodeIfPresent(timing, forKey: .timing)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(departments, forKey: .departments)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(manager, forKey: .manager)
        }
    }

    /*
         Model: ProductDetails
         Used By: Catalog
     */
    class ProductDetails: Codable {
        public var itemCode: String?

        public var attributes: [String: Any]?

        public var slug: String?

        public var templateTag: String?

        public var groupedAttributes: [String: Any]?

        public var hsnCode: Int?

        public var countryOfOrigin: String?

        public var imageNature: String?

        public var media: [[String: Any]]?

        public var outOfStock: Bool?

        public var shortDescription: String?

        public var rating: Double?

        public var identifier: [String: Any]?

        public var isSet: Bool?

        public var images: [[String: Any]]?

        public var hasVariant: Bool?

        public var ratingCount: Int?

        public var description: String?

        public var brandUid: Int?

        public var name: String?

        public enum CodingKeys: String, CodingKey {
            case itemCode = "item_code"

            case attributes

            case slug

            case templateTag = "template_tag"

            case groupedAttributes = "grouped_attributes"

            case hsnCode = "hsn_code"

            case countryOfOrigin = "country_of_origin"

            case imageNature = "image_nature"

            case media

            case outOfStock = "out_of_stock"

            case shortDescription = "short_description"

            case rating

            case identifier

            case isSet = "is_set"

            case images

            case hasVariant = "has_variant"

            case ratingCount = "rating_count"

            case description

            case brandUid = "brand_uid"

            case name
        }

        public init(attributes: [String: Any]?, brandUid: Int?, countryOfOrigin: String?, description: String?, groupedAttributes: [String: Any]?, hasVariant: Bool?, hsnCode: Int?, identifier: [String: Any]?, images: [[String: Any]]?, imageNature: String?, isSet: Bool?, itemCode: String?, media: [[String: Any]]?, name: String?, outOfStock: Bool?, rating: Double?, ratingCount: Int?, shortDescription: String?, slug: String?, templateTag: String?) {
            self.itemCode = itemCode

            self.attributes = attributes

            self.slug = slug

            self.templateTag = templateTag

            self.groupedAttributes = groupedAttributes

            self.hsnCode = hsnCode

            self.countryOfOrigin = countryOfOrigin

            self.imageNature = imageNature

            self.media = media

            self.outOfStock = outOfStock

            self.shortDescription = shortDescription

            self.rating = rating

            self.identifier = identifier

            self.isSet = isSet

            self.images = images

            self.hasVariant = hasVariant

            self.ratingCount = ratingCount

            self.description = description

            self.brandUid = brandUid

            self.name = name
        }

        public func duplicate() -> ProductDetails {
            let dict = self.dictionary!
            let copy = ProductDetails(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                itemCode = try container.decode(String.self, forKey: .itemCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                attributes = try container.decode([String: Any].self, forKey: .attributes)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                slug = try container.decode(String.self, forKey: .slug)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                templateTag = try container.decode(String.self, forKey: .templateTag)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                groupedAttributes = try container.decode([String: Any].self, forKey: .groupedAttributes)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                hsnCode = try container.decode(Int.self, forKey: .hsnCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                countryOfOrigin = try container.decode(String.self, forKey: .countryOfOrigin)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                imageNature = try container.decode(String.self, forKey: .imageNature)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                media = try container.decode([[String: Any]].self, forKey: .media)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                outOfStock = try container.decode(Bool.self, forKey: .outOfStock)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                shortDescription = try container.decode(String.self, forKey: .shortDescription)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                rating = try container.decode(Double.self, forKey: .rating)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                identifier = try container.decode([String: Any].self, forKey: .identifier)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isSet = try container.decode(Bool.self, forKey: .isSet)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                images = try container.decode([[String: Any]].self, forKey: .images)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                hasVariant = try container.decode(Bool.self, forKey: .hasVariant)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                ratingCount = try container.decode(Int.self, forKey: .ratingCount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                description = try container.decode(String.self, forKey: .description)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                brandUid = try container.decode(Int.self, forKey: .brandUid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(itemCode, forKey: .itemCode)

            try? container.encodeIfPresent(attributes, forKey: .attributes)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(templateTag, forKey: .templateTag)

            try? container.encodeIfPresent(groupedAttributes, forKey: .groupedAttributes)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encodeIfPresent(imageNature, forKey: .imageNature)

            try? container.encodeIfPresent(media, forKey: .media)

            try? container.encodeIfPresent(outOfStock, forKey: .outOfStock)

            try? container.encodeIfPresent(shortDescription, forKey: .shortDescription)

            try? container.encodeIfPresent(rating, forKey: .rating)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encodeIfPresent(images, forKey: .images)

            try? container.encodeIfPresent(hasVariant, forKey: .hasVariant)

            try? container.encodeIfPresent(ratingCount, forKey: .ratingCount)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(brandUid, forKey: .brandUid)

            try? container.encodeIfPresent(name, forKey: .name)
        }
    }

    /*
         Model: Size
         Used By: Catalog
     */
    class Size: Codable {
        public var isAvailable: Bool?

        public var display: String?

        public var value: String?

        public var quantity: Int?

        public enum CodingKeys: String, CodingKey {
            case isAvailable = "is_available"

            case display

            case value

            case quantity
        }

        public init(display: String?, isAvailable: Bool?, quantity: Int?, value: String?) {
            self.isAvailable = isAvailable

            self.display = display

            self.value = value

            self.quantity = quantity
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
            } catch {}

            do {
                display = try container.decode(String.self, forKey: .display)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                value = try container.decode(String.self, forKey: .value)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                quantity = try container.decode(Int.self, forKey: .quantity)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isAvailable, forKey: .isAvailable)

            try? container.encodeIfPresent(display, forKey: .display)

            try? container.encodeIfPresent(value, forKey: .value)

            try? container.encodeIfPresent(quantity, forKey: .quantity)
        }
    }

    /*
         Model: Price1
         Used By: Catalog
     */
    class Price1: Codable {
        public var minMarked: Double?

        public var maxEffective: Double?

        public var currency: String?

        public var minEffective: Double?

        public var maxMarked: Double?

        public enum CodingKeys: String, CodingKey {
            case minMarked = "min_marked"

            case maxEffective = "max_effective"

            case currency

            case minEffective = "min_effective"

            case maxMarked = "max_marked"
        }

        public init(currency: String?, maxEffective: Double?, maxMarked: Double?, minEffective: Double?, minMarked: Double?) {
            self.minMarked = minMarked

            self.maxEffective = maxEffective

            self.currency = currency

            self.minEffective = minEffective

            self.maxMarked = maxMarked
        }

        public func duplicate() -> Price1 {
            let dict = self.dictionary!
            let copy = Price1(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                minMarked = try container.decode(Double.self, forKey: .minMarked)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                maxEffective = try container.decode(Double.self, forKey: .maxEffective)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                currency = try container.decode(String.self, forKey: .currency)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                minEffective = try container.decode(Double.self, forKey: .minEffective)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                maxMarked = try container.decode(Double.self, forKey: .maxMarked)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(minMarked, forKey: .minMarked)

            try? container.encodeIfPresent(maxEffective, forKey: .maxEffective)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(minEffective, forKey: .minEffective)

            try? container.encodeIfPresent(maxMarked, forKey: .maxMarked)
        }
    }

    /*
         Model: Products
         Used By: Catalog
     */
    class Products: Codable {
        public var productDetails: ProductDetails?

        public var minQuantity: Int?

        public var productUid: Int?

        public var allowRemove: Bool?

        public var maxQuantity: Int?

        public var autoAddToCart: Bool?

        public var sizes: [Size]?

        public var price: Price1?

        public var autoSelect: Bool?

        public enum CodingKeys: String, CodingKey {
            case productDetails = "product_details"

            case minQuantity = "min_quantity"

            case productUid = "product_uid"

            case allowRemove = "allow_remove"

            case maxQuantity = "max_quantity"

            case autoAddToCart = "auto_add_to_cart"

            case sizes

            case price

            case autoSelect = "auto_select"
        }

        public init(allowRemove: Bool?, autoAddToCart: Bool?, autoSelect: Bool?, maxQuantity: Int?, minQuantity: Int?, price: Price1?, productDetails: ProductDetails?, productUid: Int?, sizes: [Size]?) {
            self.productDetails = productDetails

            self.minQuantity = minQuantity

            self.productUid = productUid

            self.allowRemove = allowRemove

            self.maxQuantity = maxQuantity

            self.autoAddToCart = autoAddToCart

            self.sizes = sizes

            self.price = price

            self.autoSelect = autoSelect
        }

        public func duplicate() -> Products {
            let dict = self.dictionary!
            let copy = Products(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                productDetails = try container.decode(ProductDetails.self, forKey: .productDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                minQuantity = try container.decode(Int.self, forKey: .minQuantity)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                productUid = try container.decode(Int.self, forKey: .productUid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                allowRemove = try container.decode(Bool.self, forKey: .allowRemove)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                maxQuantity = try container.decode(Int.self, forKey: .maxQuantity)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                autoAddToCart = try container.decode(Bool.self, forKey: .autoAddToCart)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                sizes = try container.decode([Size].self, forKey: .sizes)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                price = try container.decode(Price1.self, forKey: .price)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                autoSelect = try container.decode(Bool.self, forKey: .autoSelect)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(productDetails, forKey: .productDetails)

            try? container.encodeIfPresent(minQuantity, forKey: .minQuantity)

            try? container.encodeIfPresent(productUid, forKey: .productUid)

            try? container.encodeIfPresent(allowRemove, forKey: .allowRemove)

            try? container.encodeIfPresent(maxQuantity, forKey: .maxQuantity)

            try? container.encodeIfPresent(autoAddToCart, forKey: .autoAddToCart)

            try? container.encodeIfPresent(sizes, forKey: .sizes)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encodeIfPresent(autoSelect, forKey: .autoSelect)
        }
    }

    /*
         Model: GetGroupedProducts
         Used By: Catalog
     */
    class GetGroupedProducts: Codable {
        public var companyId: Int?

        public var pageVisibility: [String]?

        public var slug: String?

        public var logo: String?

        public var active: Bool?

        public var sameStoreAssignment: Bool?

        public var choice: String?

        public var products: [Products]?

        public var meta: [String: Any]?

        public var name: String?

        public enum CodingKeys: String, CodingKey {
            case companyId = "company_id"

            case pageVisibility = "page_visibility"

            case slug

            case logo

            case active

            case sameStoreAssignment = "same_store_assignment"

            case choice

            case products

            case meta

            case name
        }

        public init(active: Bool?, choice: String?, companyId: Int?, logo: String?, meta: [String: Any]?, name: String?, pageVisibility: [String]?, products: [Products]?, sameStoreAssignment: Bool?, slug: String?) {
            self.companyId = companyId

            self.pageVisibility = pageVisibility

            self.slug = slug

            self.logo = logo

            self.active = active

            self.sameStoreAssignment = sameStoreAssignment

            self.choice = choice

            self.products = products

            self.meta = meta

            self.name = name
        }

        public func duplicate() -> GetGroupedProducts {
            let dict = self.dictionary!
            let copy = GetGroupedProducts(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                companyId = try container.decode(Int.self, forKey: .companyId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                pageVisibility = try container.decode([String].self, forKey: .pageVisibility)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                slug = try container.decode(String.self, forKey: .slug)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                logo = try container.decode(String.self, forKey: .logo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                active = try container.decode(Bool.self, forKey: .active)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                sameStoreAssignment = try container.decode(Bool.self, forKey: .sameStoreAssignment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                choice = try container.decode(String.self, forKey: .choice)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                products = try container.decode([Products].self, forKey: .products)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(pageVisibility, forKey: .pageVisibility)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(active, forKey: .active)

            try? container.encodeIfPresent(sameStoreAssignment, forKey: .sameStoreAssignment)

            try? container.encodeIfPresent(choice, forKey: .choice)

            try? container.encodeIfPresent(products, forKey: .products)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(name, forKey: .name)
        }
    }

    /*
         Model: ProductBundle
         Used By: Catalog
     */
    class ProductBundle: Codable {
        public var items: [GetGroupedProducts]?

        public enum CodingKeys: String, CodingKey {
            case items
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
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(items, forKey: .items)
        }
    }

    /*
         Model: SellerV2
         Used By: Catalog
     */
    class SellerV2: Codable {
        public var name: String?

        public var uid: Int?

        public var count: Int?

        public enum CodingKeys: String, CodingKey {
            case name

            case uid

            case count
        }

        public init(count: Int?, name: String?, uid: Int?) {
            self.name = name

            self.uid = uid

            self.count = count
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
            } catch {}

            do {
                uid = try container.decode(Int.self, forKey: .uid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                count = try container.decode(Int.self, forKey: .count)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(count, forKey: .count)
        }
    }

    /*
         Model: ProductStockPriceV2
         Used By: Catalog
     */
    class ProductStockPriceV2: Codable {
        public var currency: String?

        public var marked: Double?

        public var effective: Double?

        public enum CodingKeys: String, CodingKey {
            case currency

            case marked

            case effective
        }

        public init(currency: String?, effective: Double?, marked: Double?) {
            self.currency = currency

            self.marked = marked

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
                currency = try container.decode(String.self, forKey: .currency)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                marked = try container.decode(Double.self, forKey: .marked)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                effective = try container.decode(Double.self, forKey: .effective)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(marked, forKey: .marked)

            try? container.encodeIfPresent(effective, forKey: .effective)
        }
    }

    /*
         Model: ReturnConfigSchemaV2
         Used By: Catalog
     */
    class ReturnConfigSchemaV2: Codable {
        public var returnable: Bool?

        public var unit: String?

        public var time: Int?

        public enum CodingKeys: String, CodingKey {
            case returnable

            case unit

            case time
        }

        public init(returnable: Bool?, time: Int?, unit: String?) {
            self.returnable = returnable

            self.unit = unit

            self.time = time
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
            } catch {}

            do {
                unit = try container.decode(String.self, forKey: .unit)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                time = try container.decode(Int.self, forKey: .time)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(returnable, forKey: .returnable)

            try? container.encodeIfPresent(unit, forKey: .unit)

            try? container.encodeIfPresent(time, forKey: .time)
        }
    }

    /*
         Model: StoreV2
         Used By: Catalog
     */
    class StoreV2: Codable {
        public var name: String?

        public var uid: Int?

        public var count: Int?

        public enum CodingKeys: String, CodingKey {
            case name

            case uid

            case count
        }

        public init(count: Int?, name: String?, uid: Int?) {
            self.name = name

            self.uid = uid

            self.count = count
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
            } catch {}

            do {
                uid = try container.decode(Int.self, forKey: .uid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                count = try container.decode(Int.self, forKey: .count)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(count, forKey: .count)
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
            case pieces

            case size
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
            } catch {}

            do {
                size = try container.decode(String.self, forKey: .size)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
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
            case sizes
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
            } catch {}
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
            case quantity

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
            } catch {}

            do {
                sizeDistribution = try container.decode(ProductSetDistributionV2.self, forKey: .sizeDistribution)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
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
        public var quantity: Int?

        public var pincode: Int?

        public var distance: Int?

        public var tat: Int?

        public enum CodingKeys: String, CodingKey {
            case quantity

            case pincode

            case distance

            case tat
        }

        public init(distance: Int?, pincode: Int?, quantity: Int?, tat: Int?) {
            self.quantity = quantity

            self.pincode = pincode

            self.distance = distance

            self.tat = tat
        }

        public func duplicate() -> StrategyWiseListingSchemaV2 {
            let dict = self.dictionary!
            let copy = StrategyWiseListingSchemaV2(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                quantity = try container.decode(Int.self, forKey: .quantity)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                pincode = try container.decode(Int.self, forKey: .pincode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                distance = try container.decode(Int.self, forKey: .distance)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                tat = try container.decode(Int.self, forKey: .tat)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(distance, forKey: .distance)

            try? container.encodeIfPresent(tat, forKey: .tat)
        }
    }

    /*
         Model: DetailsSchemaV2
         Used By: Catalog
     */
    class DetailsSchemaV2: Codable {
        public var type: String?

        public var key: String?

        public var value: String?

        public enum CodingKeys: String, CodingKey {
            case type

            case key

            case value
        }

        public init(key: String?, type: String?, value: String?) {
            self.type = type

            self.key = key

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
                type = try container.decode(String.self, forKey: .type)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                key = try container.decode(String.self, forKey: .key)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                value = try container.decode(String.self, forKey: .value)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(key, forKey: .key)

            try? container.encodeIfPresent(value, forKey: .value)
        }
    }

    /*
         Model: MarketPlaceSttributesSchemaV2
         Used By: Catalog
     */
    class MarketPlaceSttributesSchemaV2: Codable {
        public var title: String?

        public var details: [DetailsSchemaV2]?

        public enum CodingKeys: String, CodingKey {
            case title

            case details
        }

        public init(details: [DetailsSchemaV2]?, title: String?) {
            self.title = title

            self.details = details
        }

        public func duplicate() -> MarketPlaceSttributesSchemaV2 {
            let dict = self.dictionary!
            let copy = MarketPlaceSttributesSchemaV2(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                title = try container.decode(String.self, forKey: .title)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                details = try container.decode([DetailsSchemaV2].self, forKey: .details)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encodeIfPresent(details, forKey: .details)
        }
    }

    /*
         Model: ArticleAssignmentV2
         Used By: Catalog
     */
    class ArticleAssignmentV2: Codable {
        public var strategy: String?

        public var level: String?

        public enum CodingKeys: String, CodingKey {
            case strategy

            case level
        }

        public init(level: String?, strategy: String?) {
            self.strategy = strategy

            self.level = level
        }

        public func duplicate() -> ArticleAssignmentV2 {
            let dict = self.dictionary!
            let copy = ArticleAssignmentV2(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                strategy = try container.decode(String.self, forKey: .strategy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                level = try container.decode(String.self, forKey: .level)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(strategy, forKey: .strategy)

            try? container.encodeIfPresent(level, forKey: .level)
        }
    }

    /*
         Model: ProductSizePriceResponseV2
         Used By: Catalog
     */
    class ProductSizePriceResponseV2: Codable {
        public var seller: SellerV2?

        public var pricePerPiece: ProductStockPriceV2?

        public var sellerCount: Int?

        public var returnConfig: ReturnConfigSchemaV2?

        public var store: StoreV2?

        public var set: ProductSetV2?

        public var quantity: Int?

        public var strategyWiseListing: [StrategyWiseListingSchemaV2]?

        public var marketplaceAttributes: [MarketPlaceSttributesSchemaV2]?

        public var longLat: [Double]?

        public var pincode: Int?

        public var articleAssignment: ArticleAssignmentV2?

        public var articleId: String?

        public var specialBadge: String?

        public var price: ProductStockPriceV2?

        public var itemType: String?

        public var discount: String?

        public enum CodingKeys: String, CodingKey {
            case seller

            case pricePerPiece = "price_per_piece"

            case sellerCount = "seller_count"

            case returnConfig = "return_config"

            case store

            case set

            case quantity

            case strategyWiseListing = "strategy_wise_listing"

            case marketplaceAttributes = "marketplace_attributes"

            case longLat = "long_lat"

            case pincode

            case articleAssignment = "article_assignment"

            case articleId = "article_id"

            case specialBadge = "special_badge"

            case price

            case itemType = "item_type"

            case discount
        }

        public init(articleAssignment: ArticleAssignmentV2?, articleId: String?, discount: String?, itemType: String?, longLat: [Double]?, marketplaceAttributes: [MarketPlaceSttributesSchemaV2]?, pincode: Int?, price: ProductStockPriceV2?, pricePerPiece: ProductStockPriceV2?, quantity: Int?, returnConfig: ReturnConfigSchemaV2?, seller: SellerV2?, sellerCount: Int?, set: ProductSetV2?, specialBadge: String?, store: StoreV2?, strategyWiseListing: [StrategyWiseListingSchemaV2]?) {
            self.seller = seller

            self.pricePerPiece = pricePerPiece

            self.sellerCount = sellerCount

            self.returnConfig = returnConfig

            self.store = store

            self.set = set

            self.quantity = quantity

            self.strategyWiseListing = strategyWiseListing

            self.marketplaceAttributes = marketplaceAttributes

            self.longLat = longLat

            self.pincode = pincode

            self.articleAssignment = articleAssignment

            self.articleId = articleId

            self.specialBadge = specialBadge

            self.price = price

            self.itemType = itemType

            self.discount = discount
        }

        public func duplicate() -> ProductSizePriceResponseV2 {
            let dict = self.dictionary!
            let copy = ProductSizePriceResponseV2(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                seller = try container.decode(SellerV2.self, forKey: .seller)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                pricePerPiece = try container.decode(ProductStockPriceV2.self, forKey: .pricePerPiece)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                sellerCount = try container.decode(Int.self, forKey: .sellerCount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                returnConfig = try container.decode(ReturnConfigSchemaV2.self, forKey: .returnConfig)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                store = try container.decode(StoreV2.self, forKey: .store)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                set = try container.decode(ProductSetV2.self, forKey: .set)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                quantity = try container.decode(Int.self, forKey: .quantity)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                strategyWiseListing = try container.decode([StrategyWiseListingSchemaV2].self, forKey: .strategyWiseListing)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                marketplaceAttributes = try container.decode([MarketPlaceSttributesSchemaV2].self, forKey: .marketplaceAttributes)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                longLat = try container.decode([Double].self, forKey: .longLat)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                pincode = try container.decode(Int.self, forKey: .pincode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                articleAssignment = try container.decode(ArticleAssignmentV2.self, forKey: .articleAssignment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                articleId = try container.decode(String.self, forKey: .articleId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                specialBadge = try container.decode(String.self, forKey: .specialBadge)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                price = try container.decode(ProductStockPriceV2.self, forKey: .price)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                itemType = try container.decode(String.self, forKey: .itemType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                discount = try container.decode(String.self, forKey: .discount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(seller, forKey: .seller)

            try? container.encodeIfPresent(pricePerPiece, forKey: .pricePerPiece)

            try? container.encodeIfPresent(sellerCount, forKey: .sellerCount)

            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)

            try? container.encodeIfPresent(store, forKey: .store)

            try? container.encodeIfPresent(set, forKey: .set)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(strategyWiseListing, forKey: .strategyWiseListing)

            try? container.encodeIfPresent(marketplaceAttributes, forKey: .marketplaceAttributes)

            try? container.encodeIfPresent(longLat, forKey: .longLat)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(articleAssignment, forKey: .articleAssignment)

            try? container.encodeIfPresent(articleId, forKey: .articleId)

            try? container.encodeIfPresent(specialBadge, forKey: .specialBadge)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encodeIfPresent(itemType, forKey: .itemType)

            try? container.encodeIfPresent(discount, forKey: .discount)
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
            case name

            case isSelected = "is_selected"

            case value
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
            } catch {}

            do {
                isSelected = try container.decode(Bool.self, forKey: .isSelected)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                value = try container.decode(String.self, forKey: .value)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
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

            case items

            case page
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
            } catch {}

            do {
                items = try container.decode([ProductSizePriceResponseV2].self, forKey: .items)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

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
