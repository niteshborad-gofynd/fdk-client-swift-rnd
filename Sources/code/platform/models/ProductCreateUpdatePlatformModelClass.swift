

import Foundation
public extension PlatformClient {
    /*
         Model: ProductCreateUpdate
         Used By: Catalog
     */

    class ProductCreateUpdate: Codable {
        public var hsnCode: String

        public var productGroupTag: [String]?

        public var bulkJobId: String?

        public var isSet: Bool?

        public var name: String

        public var variants: [String: Any]?

        public var customJson: [String: Any]?

        public var brandUid: Int

        public var itemType: String

        public var departments: [Int]

        public var trader: [Trader]

        public var companyId: Int

        public var isImageLessProduct: Bool?

        public var itemCode: String

        public var currency: String

        public var multiSize: Bool?

        public var changeRequestId: String?

        public var moq: OrderQuantity?

        public var requester: String?

        public var action: String?

        public var returnConfig: ReturnConfig

        public var customOrder: CustomOrder?

        public var isActive: Bool?

        public var description: String?

        public var teaserTag: TeaserTag?

        public var slug: String

        public var shortDescription: String?

        public var productPublish: ProductPublish?

        public var categorySlug: String

        public var sizeGuide: String?

        public var templateTag: String

        public var tags: [String]?

        public var media: [Media1]?

        public var isDependent: Bool?

        public var noOfBoxes: Int?

        public var countryOfOrigin: String

        public var uid: Int?

        public var highlights: [String]?

        public enum CodingKeys: String, CodingKey {
            case hsnCode = "hsn_code"

            case productGroupTag = "product_group_tag"

            case bulkJobId = "bulk_job_id"

            case isSet = "is_set"

            case name

            case variants

            case customJson = "_custom_json"

            case brandUid = "brand_uid"

            case itemType = "item_type"

            case departments

            case trader

            case companyId = "company_id"

            case isImageLessProduct = "is_image_less_product"

            case itemCode = "item_code"

            case currency

            case multiSize = "multi_size"

            case changeRequestId = "change_request_id"

            case moq

            case requester

            case action

            case returnConfig = "return_config"

            case customOrder = "custom_order"

            case isActive = "is_active"

            case description

            case teaserTag = "teaser_tag"

            case slug

            case shortDescription = "short_description"

            case productPublish = "product_publish"

            case categorySlug = "category_slug"

            case sizeGuide = "size_guide"

            case templateTag = "template_tag"

            case tags

            case media

            case isDependent = "is_dependent"

            case noOfBoxes = "no_of_boxes"

            case countryOfOrigin = "country_of_origin"

            case uid

            case highlights
        }

        public init(action: String? = nil, brandUid: Int, bulkJobId: String? = nil, categorySlug: String, changeRequestId: String? = nil, companyId: Int, countryOfOrigin: String, currency: String, customOrder: CustomOrder? = nil, departments: [Int], description: String? = nil, highlights: [String]? = nil, hsnCode: String, isActive: Bool? = nil, isDependent: Bool? = nil, isImageLessProduct: Bool? = nil, isSet: Bool? = nil, itemCode: String, itemType: String, media: [Media1]? = nil, moq: OrderQuantity? = nil, multiSize: Bool? = nil, name: String, noOfBoxes: Int? = nil, productGroupTag: [String]? = nil, productPublish: ProductPublish? = nil, requester: String? = nil, returnConfig: ReturnConfig, shortDescription: String? = nil, sizeGuide: String? = nil, slug: String, tags: [String]? = nil, teaserTag: TeaserTag? = nil, templateTag: String, trader: [Trader], uid: Int? = nil, variants: [String: Any]? = nil, customJson: [String: Any]? = nil) {
            self.hsnCode = hsnCode

            self.productGroupTag = productGroupTag

            self.bulkJobId = bulkJobId

            self.isSet = isSet

            self.name = name

            self.variants = variants

            self.customJson = customJson

            self.brandUid = brandUid

            self.itemType = itemType

            self.departments = departments

            self.trader = trader

            self.companyId = companyId

            self.isImageLessProduct = isImageLessProduct

            self.itemCode = itemCode

            self.currency = currency

            self.multiSize = multiSize

            self.changeRequestId = changeRequestId

            self.moq = moq

            self.requester = requester

            self.action = action

            self.returnConfig = returnConfig

            self.customOrder = customOrder

            self.isActive = isActive

            self.description = description

            self.teaserTag = teaserTag

            self.slug = slug

            self.shortDescription = shortDescription

            self.productPublish = productPublish

            self.categorySlug = categorySlug

            self.sizeGuide = sizeGuide

            self.templateTag = templateTag

            self.tags = tags

            self.media = media

            self.isDependent = isDependent

            self.noOfBoxes = noOfBoxes

            self.countryOfOrigin = countryOfOrigin

            self.uid = uid

            self.highlights = highlights
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            do {
                productGroupTag = try container.decode([String].self, forKey: .productGroupTag)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                bulkJobId = try container.decode(String.self, forKey: .bulkJobId)

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

            name = try container.decode(String.self, forKey: .name)

            do {
                variants = try container.decode([String: Any].self, forKey: .variants)

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

            brandUid = try container.decode(Int.self, forKey: .brandUid)

            itemType = try container.decode(String.self, forKey: .itemType)

            departments = try container.decode([Int].self, forKey: .departments)

            trader = try container.decode([Trader].self, forKey: .trader)

            companyId = try container.decode(Int.self, forKey: .companyId)

            do {
                isImageLessProduct = try container.decode(Bool.self, forKey: .isImageLessProduct)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            itemCode = try container.decode(String.self, forKey: .itemCode)

            currency = try container.decode(String.self, forKey: .currency)

            do {
                multiSize = try container.decode(Bool.self, forKey: .multiSize)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                changeRequestId = try container.decode(String.self, forKey: .changeRequestId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                moq = try container.decode(OrderQuantity.self, forKey: .moq)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                requester = try container.decode(String.self, forKey: .requester)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                action = try container.decode(String.self, forKey: .action)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            returnConfig = try container.decode(ReturnConfig.self, forKey: .returnConfig)

            do {
                customOrder = try container.decode(CustomOrder.self, forKey: .customOrder)

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
                description = try container.decode(String.self, forKey: .description)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                teaserTag = try container.decode(TeaserTag.self, forKey: .teaserTag)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            slug = try container.decode(String.self, forKey: .slug)

            do {
                shortDescription = try container.decode(String.self, forKey: .shortDescription)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                productPublish = try container.decode(ProductPublish.self, forKey: .productPublish)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            categorySlug = try container.decode(String.self, forKey: .categorySlug)

            do {
                sizeGuide = try container.decode(String.self, forKey: .sizeGuide)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            templateTag = try container.decode(String.self, forKey: .templateTag)

            do {
                tags = try container.decode([String].self, forKey: .tags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                media = try container.decode([Media1].self, forKey: .media)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isDependent = try container.decode(Bool.self, forKey: .isDependent)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                noOfBoxes = try container.decode(Int.self, forKey: .noOfBoxes)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            countryOfOrigin = try container.decode(String.self, forKey: .countryOfOrigin)

            do {
                uid = try container.decode(Int.self, forKey: .uid)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(productGroupTag, forKey: .productGroupTag)

            try? container.encodeIfPresent(bulkJobId, forKey: .bulkJobId)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(variants, forKey: .variants)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(brandUid, forKey: .brandUid)

            try? container.encodeIfPresent(itemType, forKey: .itemType)

            try? container.encodeIfPresent(departments, forKey: .departments)

            try? container.encodeIfPresent(trader, forKey: .trader)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(isImageLessProduct, forKey: .isImageLessProduct)

            try? container.encodeIfPresent(itemCode, forKey: .itemCode)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(multiSize, forKey: .multiSize)

            try? container.encode(changeRequestId, forKey: .changeRequestId)

            try? container.encodeIfPresent(moq, forKey: .moq)

            try? container.encodeIfPresent(requester, forKey: .requester)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)

            try? container.encodeIfPresent(customOrder, forKey: .customOrder)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(teaserTag, forKey: .teaserTag)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(shortDescription, forKey: .shortDescription)

            try? container.encodeIfPresent(productPublish, forKey: .productPublish)

            try? container.encodeIfPresent(categorySlug, forKey: .categorySlug)

            try? container.encodeIfPresent(sizeGuide, forKey: .sizeGuide)

            try? container.encodeIfPresent(templateTag, forKey: .templateTag)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encode(media, forKey: .media)

            try? container.encodeIfPresent(isDependent, forKey: .isDependent)

            try? container.encodeIfPresent(noOfBoxes, forKey: .noOfBoxes)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encode(uid, forKey: .uid)

            try? container.encode(highlights, forKey: .highlights)
        }
    }
}
