

import Foundation
public extension PlatformClient {
    /*
         Model: InventoryPayload
         Used By: Catalog
     */

    class InventoryPayload: Codable {
        public var priceEffective: Double

        public var priceMarked: Double

        public var totalQuantity: Int

        public var expirationDate: String?

        public var sellerIdentifier: String

        public var storeId: Int

        public enum CodingKeys: String, CodingKey {
            case priceEffective = "price_effective"

            case priceMarked = "price_marked"

            case totalQuantity = "total_quantity"

            case expirationDate = "expiration_date"

            case sellerIdentifier = "seller_identifier"

            case storeId = "store_id"
        }

        public init(expirationDate: String? = nil, priceEffective: Double, priceMarked: Double, sellerIdentifier: String, storeId: Int, totalQuantity: Int) {
            self.priceEffective = priceEffective

            self.priceMarked = priceMarked

            self.totalQuantity = totalQuantity

            self.expirationDate = expirationDate

            self.sellerIdentifier = sellerIdentifier

            self.storeId = storeId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            totalQuantity = try container.decode(Int.self, forKey: .totalQuantity)

            do {
                expirationDate = try container.decode(String.self, forKey: .expirationDate)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            storeId = try container.decode(Int.self, forKey: .storeId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(totalQuantity, forKey: .totalQuantity)

            try? container.encodeIfPresent(expirationDate, forKey: .expirationDate)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(storeId, forKey: .storeId)
        }
    }
}
