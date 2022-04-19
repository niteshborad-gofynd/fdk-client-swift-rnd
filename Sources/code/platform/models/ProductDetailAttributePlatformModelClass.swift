import Foundation

import Foundation
public extension PlatformClient {
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
}