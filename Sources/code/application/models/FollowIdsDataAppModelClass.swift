import Foundation

import Foundation
public extension ApplicationClient {
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

        public init(brands: [Int]? = nil, collections: [Int]? = nil, products: [Int]? = nil) {
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
}