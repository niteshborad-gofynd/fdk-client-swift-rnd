

import Foundation
public extension PlatformClient {
    /*
         Model: InventoryExportRequest
         Used By: Catalog
     */

    class InventoryExportRequest: Codable {
        public var store: [Int]?

        public var brand: [Int]?

        public var type: String?

        public enum CodingKeys: String, CodingKey {
            case store

            case brand

            case type
        }

        public init(brand: [Int]? = nil, store: [Int]? = nil, type: String? = nil) {
            self.store = store

            self.brand = brand

            self.type = type
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                store = try container.decode([Int].self, forKey: .store)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                brand = try container.decode([Int].self, forKey: .brand)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(store, forKey: .store)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encode(type, forKey: .type)
        }
    }
}
