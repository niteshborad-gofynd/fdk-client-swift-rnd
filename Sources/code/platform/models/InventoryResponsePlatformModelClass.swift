

import Foundation
public extension PlatformClient {
    /*
         Model: InventoryResponse
         Used By: Catalog
     */

    class InventoryResponse: Codable {
        public var sellableQuantity: Int?

        public var price: Int?

        public var inventoryUpdatedOn: String?

        public var currency: String?

        public var sellerIdentifier: Int?

        public var identifiers: [String: Any]?

        public var size: String?

        public var uid: String?

        public var store: [String: Any]?

        public var priceEffective: Int?

        public var priceTransfer: Int?

        public var itemId: Int?

        public var quantity: Int?

        public enum CodingKeys: String, CodingKey {
            case sellableQuantity = "sellable_quantity"

            case price

            case inventoryUpdatedOn = "inventory_updated_on"

            case currency

            case sellerIdentifier = "seller_identifier"

            case identifiers

            case size

            case uid

            case store

            case priceEffective = "price_effective"

            case priceTransfer = "price_transfer"

            case itemId = "item_id"

            case quantity
        }

        public init(currency: String? = nil, identifiers: [String: Any]? = nil, inventoryUpdatedOn: String? = nil, itemId: Int? = nil, price: Int? = nil, priceEffective: Int? = nil, priceTransfer: Int? = nil, quantity: Int? = nil, sellableQuantity: Int? = nil, sellerIdentifier: Int? = nil, size: String? = nil, store: [String: Any]? = nil, uid: String? = nil) {
            self.sellableQuantity = sellableQuantity

            self.price = price

            self.inventoryUpdatedOn = inventoryUpdatedOn

            self.currency = currency

            self.sellerIdentifier = sellerIdentifier

            self.identifiers = identifiers

            self.size = size

            self.uid = uid

            self.store = store

            self.priceEffective = priceEffective

            self.priceTransfer = priceTransfer

            self.itemId = itemId

            self.quantity = quantity
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                sellableQuantity = try container.decode(Int.self, forKey: .sellableQuantity)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                price = try container.decode(Int.self, forKey: .price)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                inventoryUpdatedOn = try container.decode(String.self, forKey: .inventoryUpdatedOn)

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
                sellerIdentifier = try container.decode(Int.self, forKey: .sellerIdentifier)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                identifiers = try container.decode([String: Any].self, forKey: .identifiers)

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
                uid = try container.decode(String.self, forKey: .uid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                store = try container.decode([String: Any].self, forKey: .store)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                priceEffective = try container.decode(Int.self, forKey: .priceEffective)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                priceTransfer = try container.decode(Int.self, forKey: .priceTransfer)

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
                quantity = try container.decode(Int.self, forKey: .quantity)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(sellableQuantity, forKey: .sellableQuantity)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encodeIfPresent(inventoryUpdatedOn, forKey: .inventoryUpdatedOn)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(store, forKey: .store)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(priceTransfer, forKey: .priceTransfer)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(quantity, forKey: .quantity)
        }
    }
}
