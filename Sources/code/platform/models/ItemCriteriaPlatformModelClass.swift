import Foundation

import Foundation
public extension PlatformClient {
    /*
         Model: ItemCriteria
         Used By: Cart
     */

    class ItemCriteria: Codable {
        public var itemSku: [String]?

        public var itemSize: [String]?

        public var itemCategory: [Int]?

        public var itemExcludeCategory: [Int]?

        public var buyExpression: String?

        public var itemStore: [Int]?

        public var itemExcludeCompany: [Int]?

        public var itemId: [Int]?

        public var itemBrand: [Int]?

        public var itemExcludeBrand: [Int]?

        public var cartQuantity: CompareObject?

        public var cartTotal: CompareObject?

        public var itemExcludeSku: [String]?

        public var itemExcludeStore: [Int]?

        public var itemCompany: [Int]?

        public var allItems: Bool?

        public enum CodingKeys: String, CodingKey {
            case itemSku = "item_sku"

            case itemSize = "item_size"

            case itemCategory = "item_category"

            case itemExcludeCategory = "item_exclude_category"

            case buyExpression = "buy_expression"

            case itemStore = "item_store"

            case itemExcludeCompany = "item_exclude_company"

            case itemId = "item_id"

            case itemBrand = "item_brand"

            case itemExcludeBrand = "item_exclude_brand"

            case cartQuantity = "cart_quantity"

            case cartTotal = "cart_total"

            case itemExcludeSku = "item_exclude_sku"

            case itemExcludeStore = "item_exclude_store"

            case itemCompany = "item_company"

            case allItems = "all_items"
        }

        public init(allItems: Bool?, buyExpression: String?, cartQuantity: CompareObject?, cartTotal: CompareObject?, itemBrand: [Int]?, itemCategory: [Int]?, itemCompany: [Int]?, itemExcludeBrand: [Int]?, itemExcludeCategory: [Int]?, itemExcludeCompany: [Int]?, itemExcludeSku: [String]?, itemExcludeStore: [Int]?, itemId: [Int]?, itemSize: [String]?, itemSku: [String]?, itemStore: [Int]?) {
            self.itemSku = itemSku

            self.itemSize = itemSize

            self.itemCategory = itemCategory

            self.itemExcludeCategory = itemExcludeCategory

            self.buyExpression = buyExpression

            self.itemStore = itemStore

            self.itemExcludeCompany = itemExcludeCompany

            self.itemId = itemId

            self.itemBrand = itemBrand

            self.itemExcludeBrand = itemExcludeBrand

            self.cartQuantity = cartQuantity

            self.cartTotal = cartTotal

            self.itemExcludeSku = itemExcludeSku

            self.itemExcludeStore = itemExcludeStore

            self.itemCompany = itemCompany

            self.allItems = allItems
        }

        public func duplicate() -> ItemCriteria {
            let dict = self.dictionary!
            let copy = ItemCriteria(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                itemSku = try container.decode([String].self, forKey: .itemSku)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                itemSize = try container.decode([String].self, forKey: .itemSize)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                itemCategory = try container.decode([Int].self, forKey: .itemCategory)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                itemExcludeCategory = try container.decode([Int].self, forKey: .itemExcludeCategory)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                buyExpression = try container.decode(String.self, forKey: .buyExpression)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                itemStore = try container.decode([Int].self, forKey: .itemStore)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                itemExcludeCompany = try container.decode([Int].self, forKey: .itemExcludeCompany)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                itemId = try container.decode([Int].self, forKey: .itemId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                itemBrand = try container.decode([Int].self, forKey: .itemBrand)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                itemExcludeBrand = try container.decode([Int].self, forKey: .itemExcludeBrand)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                cartQuantity = try container.decode(CompareObject.self, forKey: .cartQuantity)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                cartTotal = try container.decode(CompareObject.self, forKey: .cartTotal)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                itemExcludeSku = try container.decode([String].self, forKey: .itemExcludeSku)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                itemExcludeStore = try container.decode([Int].self, forKey: .itemExcludeStore)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                itemCompany = try container.decode([Int].self, forKey: .itemCompany)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                allItems = try container.decode(Bool.self, forKey: .allItems)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(itemSku, forKey: .itemSku)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(itemCategory, forKey: .itemCategory)

            try? container.encodeIfPresent(itemExcludeCategory, forKey: .itemExcludeCategory)

            try? container.encodeIfPresent(buyExpression, forKey: .buyExpression)

            try? container.encodeIfPresent(itemStore, forKey: .itemStore)

            try? container.encodeIfPresent(itemExcludeCompany, forKey: .itemExcludeCompany)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(itemBrand, forKey: .itemBrand)

            try? container.encodeIfPresent(itemExcludeBrand, forKey: .itemExcludeBrand)

            try? container.encodeIfPresent(cartQuantity, forKey: .cartQuantity)

            try? container.encodeIfPresent(cartTotal, forKey: .cartTotal)

            try? container.encodeIfPresent(itemExcludeSku, forKey: .itemExcludeSku)

            try? container.encodeIfPresent(itemExcludeStore, forKey: .itemExcludeStore)

            try? container.encodeIfPresent(itemCompany, forKey: .itemCompany)

            try? container.encodeIfPresent(allItems, forKey: .allItems)
        }
    }
}
