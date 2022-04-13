import Foundation

import Foundation
public extension PlatformClient {
    /*
         Model: InventoryCategory
         Used By: Configuration
     */

    class InventoryCategory: Codable {
        public var criteria: String?

        public var categories: [[String: Any]]?

        public enum CodingKeys: String, CodingKey {
            case criteria

            case categories
        }

        public init(categories: [[String: Any]]?, criteria: String?) {
            self.criteria = criteria

            self.categories = categories
        }

        public func duplicate() -> InventoryCategory {
            let dict = self.dictionary!
            let copy = InventoryCategory(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                criteria = try container.decode(String.self, forKey: .criteria)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                categories = try container.decode([[String: Any]].self, forKey: .categories)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(criteria, forKey: .criteria)

            try? container.encodeIfPresent(categories, forKey: .categories)
        }
    }
}
