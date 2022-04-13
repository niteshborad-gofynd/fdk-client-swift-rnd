import Foundation

import Foundation
public extension PlatformClient {
    /*
         Model: InventoryRequest
         Used By: Catalog
     */

    class InventoryRequest: Codable {
        public var companyId: Int

        public var item: ItemQuery

        public var sizes: [InvSize]

        public enum CodingKeys: String, CodingKey {
            case companyId = "company_id"

            case item

            case sizes
        }

        public init(companyId: Int, item: ItemQuery, sizes: [InvSize]) {
            self.companyId = companyId

            self.item = item

            self.sizes = sizes
        }

        public func duplicate() -> InventoryRequest {
            let dict = self.dictionary!
            let copy = InventoryRequest(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            companyId = try container.decode(Int.self, forKey: .companyId)

            item = try container.decode(ItemQuery.self, forKey: .item)

            sizes = try container.decode([InvSize].self, forKey: .sizes)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(item, forKey: .item)

            try? container.encodeIfPresent(sizes, forKey: .sizes)
        }
    }
}
